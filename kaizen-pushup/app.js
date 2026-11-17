"use strict";

// ---- Tunables ---------------------------------------------------------------
const DOWN_IN = 2;          // chest near floor   -> "down" stage (inches)
const UP_IN = 5;            // chest raised       -> "up" stage   (inches)
const MAX_RANGE_CM = 150;   // 1.5 m; beyond this the sensor is off-target -> ignore
const DIST_SAMPLES = 3;     // median window for spike rejection

// ---- DOM --------------------------------------------------------------------
const connectBtn = document.getElementById("connect");
const startBtn = document.getElementById("start");
const nextBtn = document.getElementById("next");
const statusEl = document.getElementById("status");
const stageEl = document.getElementById("stage");
const repsEl = document.getElementById("reps");
const remainingEl = document.getElementById("remaining");
const setEl = document.getElementById("set");
const targetInput = document.getElementById("target");
const setsInput = document.getElementById("sets");
const soundInput = document.getElementById("sound");
const voiceInput = document.getElementById("voice");
const overlay = document.getElementById("overlay");
const overlayText = document.getElementById("overlayText");
const overlaySub = document.getElementById("overlaySub");
const confetti = document.getElementById("confetti");

// ---- Serial state -----------------------------------------------------------
let port = null, reader = null, connected = false;
let distBuf = [];

// ---- Workout state ----------------------------------------------------------
let soundOn = true;
let voiceOn = true;
let stage = "up";           // "up" | "down"
let repsInSet = 0;
let targetReps = 10;
let totalSets = 3;
let currentSet = 1;
let running = false;
let workoutDone = false;

// ---- Audio ------------------------------------------------------------------
let audioCtx = null;
function ensureAudio() {
    if (!audioCtx) audioCtx = new (window.AudioContext || window.webkitAudioContext)();
    if (audioCtx.state === "suspended") audioCtx.resume();
}
function beep(freq, dur, type, gain) {
    if (!soundOn || !audioCtx) return;
    const t = audioCtx.currentTime;
    const osc = audioCtx.createOscillator();
    const g = audioCtx.createGain();
    osc.type = type; osc.frequency.value = freq;
    g.gain.setValueAtTime(gain, t);
    g.gain.exponentialRampToValueAtTime(0.0001, t + dur);
    osc.connect(g); g.connect(audioCtx.destination);
    osc.start(t); osc.stop(t + dur);
}
const downBeep = () => beep(160, 0.10, "square", 0.16);
const upBeep   = () => beep(560, 0.09, "square", 0.16);
function fanfare() {
    [523.25, 659.25, 783.99, 1046.5].forEach((f, i) =>
        setTimeout(() => beep(f, 0.22, "sine", 0.18), i * 130));
}

// ---- Speech ----------------------------------------------------------------
function warmSpeech() {
    if ("speechSynthesis" in window) { try { window.speechSynthesis.getVoices(); } catch (e) {} }
}
function speak(text) {
    if (!voiceOn || !("speechSynthesis" in window)) return;
    try {
        window.speechSynthesis.cancel();
        const u = new SpeechSynthesisUtterance(text);
        u.lang = "en-US";
        u.rate = 1.0;
        u.pitch = 1.0;
        // Chrome can drop an utterance queued in the same tick as cancel(); delay slightly.
        setTimeout(() => window.speechSynthesis.speak(u), 40);
    } catch (e) {}
}

// ---- Web Serial -------------------------------------------------------------
connectBtn.addEventListener("click", async () => {
    ensureAudio();
    warmSpeech();
    try {
        port = await navigator.serial.requestPort();
        await port.open({ baudRate: 115200 });
        const decoder = new TextDecoderStream();
        reader = port.readable.pipeThrough(decoder).getReader();
        connected = true;
        connectBtn.disabled = true;
        setStatus("connected — set target & sets, then Start");
        readLoop();
    } catch (e) {
        if (e && e.name !== "NotFoundError") setStatus("connect error: " + e.message);
    }
});
if (navigator.serial) {
    navigator.serial.addEventListener("disconnect", () => {
        connected = false;
        connectBtn.disabled = false;
        setStatus("board disconnected — reconnect");
    });
}
async function readLoop() {
    let buf = "";
    while (connected) {
        let value, done;
        try { ({ value, done } = await reader.read()); }
        catch (e) { break; }
        if (done) break;
        buf += value;
        let nl;
        while ((nl = buf.indexOf("\n")) >= 0) {
            const line = buf.slice(0, nl).trim();
            buf = buf.slice(nl + 1);
            if (line.startsWith("D:")) {
                const cm = parseFloat(line.slice(2));
                if (!isNaN(cm)) handleReading(cm);
            }
        }
    }
}

// ---- Distance -> stage ------------------------------------------------------
function handleReading(cm) {
    if (cm <= 0 || cm > MAX_RANGE_CM) return;   // no echo / off-target -> ignore
    const inches = cm / 2.54;
    distBuf.push(inches);
    if (distBuf.length > DIST_SAMPLES) distBuf.shift();
    if (distBuf.length < DIST_SAMPLES) return;
    const s = distBuf.slice().sort((a, b) => a - b);
    const med = s[Math.floor(s.length / 2)];    // median rejects single-sample spikes
    updateStage(med);
}
function updateStage(inches) {
    if (!running) return;
    if (inches < DOWN_IN) {
        if (stage === "up") { stage = "down"; downBeep(); render(); }
    } else if (inches > UP_IN) {
        if (stage === "down") {
            stage = "up";
            repsInSet++;
            upBeep();
            if (repsInSet >= targetReps) {
                onSetComplete();
            } else {
                speak(String(repsInSet));
            }
            render();
        }
    }
    // 2"–5" is a dead band: no change
}

// ---- Workout flow -----------------------------------------------------------
function startWorkout() {
    if (!connected) { setStatus("Connect the board first"); return; }
    ensureAudio();
    warmSpeech();
    targetReps = Math.max(1, parseInt(targetInput.value, 10) || 10);
    totalSets = Math.max(1, parseInt(setsInput.value, 10) || 3);
    soundOn = soundInput.checked;
    voiceOn = voiceInput.checked;
    currentSet = 1;
    workoutDone = false;
    beginSet();
    speak(totalSets + " sets of " + targetReps + " pushups. Begin.");
}
function beginSet() {
    repsInSet = 0;
    stage = "up";
    running = true;
    hideOverlay();
    render();
}
function onSetComplete() {
    running = false;
    if (currentSet >= totalSets) {
        workoutDone = true;
        nextBtn.textContent = "Start over";
        showOverlay("Workout complete! 💪",
            totalSets + " sets × " + targetReps + " pushups", true);
        speak("Workout complete. " + totalSets + " sets of " + targetReps + " pushups.");
    } else {
        nextBtn.textContent = "Next set";
        showOverlay("Set " + currentSet + " complete! 🎉",
            targetReps + " pushups — take a rest", true);
        speak("Set " + currentSet + " complete. " + targetReps + " pushups.");
    }
    render();
}
nextBtn.addEventListener("click", () => {
    if (workoutDone) { currentSet = 1; workoutDone = false; }
    else currentSet++;
    beginSet();
});
startBtn.addEventListener("click", startWorkout);

// ---- Render -----------------------------------------------------------------
function render() {
    stageEl.textContent = stage.toUpperCase();
    stageEl.className = "stage " + stage;
    repsEl.textContent = repsInSet + " / " + targetReps;
    remainingEl.textContent = String(Math.max(0, targetReps - repsInSet));
    setEl.textContent = "Set " + currentSet + " of " + totalSets;
}
function setStatus(s) { statusEl.textContent = s; }

// ---- Overlay + confetti -----------------------------------------------------
const cctx = confetti.getContext("2d");
let confettiPieces = [];
let confettiRunning = false;
const CONFETTI_COLORS = ["#ffb020", "#34d399", "#60a5fa", "#f87171", "#ffffff"];

function showOverlay(text, sub, celebrate) {
    overlayText.textContent = text;
    overlaySub.textContent = sub || "";
    overlay.classList.add("show");
    if (celebrate) { fanfare(); startConfetti(); }
}
function hideOverlay() {
    overlay.classList.remove("show");
    stopConfetti();
}
function startConfetti() {
    confetti.width = innerWidth; confetti.height = innerHeight;
    confettiPieces = [];
    for (let i = 0; i < 150; i++) {
        confettiPieces.push({
            x: Math.random() * confetti.width,
            y: Math.random() * confetti.height - confetti.height,
            w: 6 + Math.random() * 6,
            h: 10 + Math.random() * 10,
            vy: 2 + Math.random() * 3,
            vx: -1 + Math.random() * 2,
            rot: Math.random() * Math.PI,
            vr: -0.1 + Math.random() * 0.2,
            color: CONFETTI_COLORS[Math.floor(Math.random() * CONFETTI_COLORS.length)]
        });
    }
    if (!confettiRunning) { confettiRunning = true; confettiTick(); }
}
function confettiTick() {
    if (!confettiRunning) return;
    cctx.clearRect(0, 0, confetti.width, confetti.height);
    for (const p of confettiPieces) {
        p.y += p.vy; p.x += p.vx; p.rot += p.vr;
        if (p.y > confetti.height) { p.y = -20; p.x = Math.random() * confetti.width; }
        cctx.save(); cctx.translate(p.x, p.y); cctx.rotate(p.rot);
        cctx.fillStyle = p.color; cctx.fillRect(-p.w / 2, -p.h / 2, p.w, p.h);
        cctx.restore();
    }
    requestAnimationFrame(confettiTick);
}
function stopConfetti() {
    confettiRunning = false;
    cctx.clearRect(0, 0, confetti.width, confetti.height);
}

render();
