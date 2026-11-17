"use strict";

// Sonar Sentinel browser app.
// Board protocol (newline delimited): A:<deg>,D:<cm> / N:<cm> / ALARM:<0|1> /
// K:<cm> / ACK:<cmd> / SYS:READY,PCA=OK|ERR[,ALARM=0|1] / SYS:SWEEP|PAUSED|PARK|TEST
// Browser -> board: t:<cm> s p c w i

const CFG = {
    BAUD: 115200,
    MAX_RANGE_CM: 100,
    RINGS: [20, 40, 60, 80, 100],
    KEEP_MIN: 8,
    KEEP_MAX: 80,
    BLIP_TAU_MS: 2200,
    MERGE_DEG: 7,
    MERGE_CM: 9,
    MIN_VALID_CM: 4,
    ALARM_HOLD_MS: 2600,
    SWEEP_EASE: 12,
    DEMO_STEP_MS: 70,
};

// ---- DOM ---------------------------------------------------------------------
const canvas = document.getElementById("radar");
const ctx = canvas.getContext("2d");
const badgeEl = document.getElementById("badge");
const connectBtn = document.getElementById("connect");
const nearestEl = document.getElementById("nearest");
const modeTag = document.getElementById("modeTag");
const alarmBanner = document.getElementById("alarmBanner");
const armSvg = document.getElementById("armSvg");
const armState = document.getElementById("armState");
const keepOutVal = document.getElementById("keepOutVal");
const keepoutInput = document.getElementById("keepout");
const pauseBtn = document.getElementById("pause");
const centerBtn = document.getElementById("center");
const wiggleBtn = document.getElementById("wiggle");
const diagBtn = document.getElementById("diag");
const soundInput = document.getElementById("sound");
const logEl = document.getElementById("log");
const spsEl = document.getElementById("sps");
const nearestCEl = document.getElementById("nearestC");
const angleEl = document.getElementById("angleR");

// ---- State -------------------------------------------------------------------
let connected = false;
let port = null;
let writer = null;
let reader = null;
let keepOut = 30;
let alarm = false;
let lastThreat = 0;
let mode = "SWEEP";
let soundOn = true;
let samples = [];
let sampleTimes = [];
let lastBoardAngle = null;
let sweepAngle = 90;
let lastStatsAt = 0;
let lastKeepOutSend = 0;

// canvas geometry
let VW = 900, VH = 540, CX = 450, CY = 514, R = 420;

const serialSupported = "serial" in navigator;

// ---- Utilities ---------------------------------------------------------------
function clamp(v, lo, hi) { return Math.min(hi, Math.max(lo, v)); }
function rad(a) { return (a - 180) * Math.PI / 180; }
function toPoint(a, cm) {
    const r = Math.min(cm, CFG.MAX_RANGE_CM) / CFG.MAX_RANGE_CM * R;
    const th = rad(a);
    return { x: CX + r * Math.cos(th), y: CY + r * Math.sin(th) };
}

function log(msg) {
    const lines = (logEl.textContent === "booting scope…" ? [] : logEl.textContent.split("\n"));
    const ts = new Date().toTimeString().slice(0, 8);
    lines.push(ts + "  " + msg);
    while (lines.length > 6) lines.shift();
    logEl.textContent = lines.join("\n");
}

function setBadge(text, cls) {
    badgeEl.textContent = text;
    badgeEl.className = "badge " + cls;
}

// ---- Audio -------------------------------------------------------------------
let audioCtx = null;
function ensureAudio() {
    if (!audioCtx) {
        const AC = window.AudioContext || window.webkitAudioContext;
        if (!AC) return;
        audioCtx = new AC();
    }
    if (audioCtx.state === "suspended") audioCtx.resume();
}

function ping() {
    if (!soundOn || !audioCtx) return;
    const t = audioCtx.currentTime;
    const o = audioCtx.createOscillator();
    const g = audioCtx.createGain();
    o.type = "sine";
    o.frequency.setValueAtTime(980, t);
    o.frequency.exponentialRampToValueAtTime(520, t + 0.18);
    g.gain.setValueAtTime(0.0001, t);
    g.gain.exponentialRampToValueAtTime(0.12, t + 0.01);
    g.gain.exponentialRampToValueAtTime(0.0001, t + 0.22);
    o.connect(g); g.connect(audioCtx.destination);
    o.start(t); o.stop(t + 0.24);

    const o2 = audioCtx.createOscillator();
    const g2 = audioCtx.createGain();
    o2.type = "square";
    o2.frequency.value = 180;
    g2.gain.setValueAtTime(0.07, t);
    g2.gain.exponentialRampToValueAtTime(0.0001, t + 0.09);
    o2.connect(g2); g2.connect(audioCtx.destination);
    o2.start(t); o2.stop(t + 0.1);
}

// ---- Alarm / arm -------------------------------------------------------------
function setAlarm(v) {
    if (v === alarm) return;
    alarm = v;
    armSvg.classList.toggle("closed", v);
    armState.textContent = v ? "LOCKED · intruder" : "OPEN · path clear";
    armState.classList.toggle("locked", v);
    alarmBanner.classList.toggle("show", v);
    if (v) {
        ping();
        log("ALARM — guard arm locked");
    } else {
        log("clear — guard arm open");
    }
}

function setMode(m) {
    mode = m;
    modeTag.textContent = m;
    pauseBtn.textContent = (m === "SWEEP") ? "Pause" : "Resume";
}

// ---- Serial ------------------------------------------------------------------
function send(cmd) {
    if (!connected || !writer) return;
    try {
        writer.write(new TextEncoder().encode(cmd + "\n")).catch(function () {});
    } catch (e) {}
}

async function connect() {
    if (!serialSupported) {
        log("Web Serial is not available — use Chrome or Edge on localhost");
        return;
    }
    try {
        port = await navigator.serial.requestPort();
    } catch (e) {
        if (e && e.name !== "NotFoundError") log("port picker: " + e.message);
        return;
    }
    try {
        await port.open({ baudRate: CFG.BAUD });
        writer = port.writable.getWriter();
        reader = port.readable.pipeThrough(new TextDecoderStream()).getReader();
    } catch (e) {
        log("open failed: " + e.message);
        try { if (port) await port.close(); } catch (err) {}
        port = null; writer = null; reader = null;
        return;
    }
    connected = true;
    stopDemo();
    connectBtn.textContent = "Disconnect";
    setBadge("LIVE", "live");
    samples = [];
    send("i");
    send("s");
    send("t:" + keepOut);
    log("connected — live telemetry");
    readLoop();
}

async function disconnect() {
    connected = false;
    const r = reader, w = writer, p = port;
    reader = null; writer = null; port = null;
    try { if (r) { await r.cancel(); r.releaseLock(); } } catch (e) {}
    try { if (w) w.releaseLock(); } catch (e) {}
    try { if (p) await p.close(); } catch (e) {}
    connectBtn.textContent = "Connect board";
    connectBtn.disabled = false;
    setAlarm(false);
    setMode("DEMO");
    setBadge("DEMO", "demo");
    samples = [];
    startDemo();
    log("disconnected — demo mode");
}

function onSerialLost() {
    connected = false;
    reader = null; writer = null; port = null;
    connectBtn.textContent = "Connect board";
    connectBtn.disabled = false;
    setAlarm(false);
    setMode("DEMO");
    setBadge("DEMO", "demo");
    samples = [];
    startDemo();
    log("board unplugged — demo mode");
}

async function readLoop() {
    const r = reader;
    let buf = "";
    try {
        while (true) {
            const res = await r.read();
            if (res.done) break;
            buf += res.value;
            let i;
            while ((i = buf.indexOf("\n")) >= 0) {
                const line = buf.slice(0, i).replace(/\r$/, "").trim();
                buf = buf.slice(i + 1);
                if (line) handleLine(line);
            }
        }
    } catch (e) {}
    if (connected) onSerialLost();
}

function handleLine(line) {
    if (line.indexOf("A:") === 0) {
        const m = /^A:(\d+),D:(\d+)/.exec(line);
        if (m) ingestSample(parseInt(m[1], 10), parseInt(m[2], 10), performance.now());
    } else if (line.indexOf("N:") === 0) {
        // per-pass nearest, informational only
    } else if (line.indexOf("ALARM:") === 0) {
        if (connected) setAlarm(line.slice(6).trim() === "1");
    } else if (line.indexOf("SYS:") === 0) {
        const s = line.slice(4).trim();
        if (s.indexOf("READY") === 0) {
            const ok = s.indexOf("PCA=OK") >= 0;
            if (connected) setBadge(ok ? "LIVE · PCA OK" : "LIVE · PCA ERR", ok ? "live" : "err");
            if (!ok) log("PCA did not answer — check RobotBit battery/switch");
            const am = /ALARM=(\d)/.exec(s);
            if (am && connected) setAlarm(am[1] === "1");
        } else if (s === "SWEEP" || s === "PAUSED" || s === "PARK" || s === "TEST") {
            setMode(s);
        }
    } else if (line.indexOf("K:") === 0) {
        const v = parseInt(line.slice(2), 10);
        if (!isNaN(v)) {
            keepOut = clamp(v, CFG.KEEP_MIN, CFG.KEEP_MAX);
            syncKeepOutUI();
        }
    } else if (line.indexOf("ACK:") === 0) {
        log("board " + line.slice(4).trim());
    } else if (line.indexOf("DIAG:US=") === 0) {
        const us = parseInt(line.slice(8), 10);
        if (us > 30000) log("sensor alive — no target (echo " + us + " us)");
        else if (us > 0) log("sensor echo " + us + " us (" + Math.round(us / 58) + " cm)");
        else log("sensor echo 0 us — check 5V/GND/TRIG/ECHO");
    }
}

// ---- Samples -----------------------------------------------------------------
function ingestSample(a, d, t) {
    lastBoardAngle = a;
    sampleTimes.push(t);
    while (sampleTimes.length > 240) sampleTimes.shift();

    if (d >= CFG.MIN_VALID_CM && d <= CFG.MAX_RANGE_CM) {
        let best = null, bestScore = Infinity;
        for (let i = 0; i < samples.length; i++) {
            const s = samples[i];
            const da = Math.abs(s.a - a);
            const dd = Math.abs(s.d - d);
            if (da <= CFG.MERGE_DEG && dd <= CFG.MERGE_CM) {
                const score = da * 1.5 + dd;
                if (score < bestScore) { bestScore = score; best = s; }
            }
        }
        if (best) {
            best.a = best.a * 0.65 + a * 0.35;
            best.d = best.d * 0.65 + d * 0.35;
            best.t = t;
            best.hits++;
        } else {
            samples.push({ a: a, d: d, t: t, hits: 1 });
        }
        if (!connected && d < keepOut) {
            lastThreat = t;
            if (!alarm) setAlarm(true);
        }
    }

    const cutoff = t - 3000;
    if (samples.length && samples[0].t < cutoff) {
        samples = samples.filter(function (s) { return s.t >= cutoff; });
    }
    if (samples.length > 80) samples.splice(0, samples.length - 80);
}

function nearestBlip(now) {
    let best = null;
    for (let i = 0; i < samples.length; i++) {
        const s = samples[i];
        if (now - s.t > 2600) continue;
        if (!best || s.d < best.d) best = s;
    }
    return best;
}

// ---- Keep-out ----------------------------------------------------------------
function syncKeepOutUI() {
    keepOutVal.textContent = Math.round(keepOut) + " cm";
    keepoutInput.value = String(Math.round(keepOut));
}

function setKeepOut(v, sendIt) {
    keepOut = clamp(v, CFG.KEEP_MIN, CFG.KEEP_MAX);
    syncKeepOutUI();
    if (sendIt && connected) {
        const now = performance.now();
        if (now - lastKeepOutSend > 90) {
            lastKeepOutSend = now;
            send("t:" + Math.round(keepOut));
        }
    }
}

// ---- Demo mode ---------------------------------------------------------------
let demoOn = false;
let demoPaused = false;
let demoAngle = 20;
let demoDir = 1;
let demoLast = 0;

function startDemo() {
    demoOn = true;
    demoPaused = false;
    demoAngle = 20;
    demoDir = 1;
    setBadge("DEMO", "demo");
}

function stopDemo() { demoOn = false; }

function demoTick(now) {
    if (!demoOn || demoPaused) return;
    if (now - demoLast < CFG.DEMO_STEP_MS) return;
    demoLast = now;

    const handA = 100 + 36 * Math.sin(now / 2700);
    const handD = 32 + 11 * Math.sin(now / 1600);
    let d;
    if (Math.abs(demoAngle - handA) < 15) {
        d = handD + Math.sin(now / 280) * 1.6;
    } else {
        d = 66 + 10 * Math.sin((demoAngle + now / 2400) * 0.07);
    }
    if (Math.random() < 0.03) d = 0;
    handleLine("A:" + demoAngle + ",D:" + Math.max(0, Math.round(d)));

    const next = demoAngle + demoDir * 5;
    if (next > 160) {
        demoDir = -1;
        demoAngle = 155;
        handleLine("N:" + Math.round(handD));
    } else if (next < 20) {
        demoDir = 1;
        demoAngle = 25;
        handleLine("N:0");
    } else {
        demoAngle = next;
    }
}

// ---- Canvas ------------------------------------------------------------------
function layout() {
    const rect = canvas.getBoundingClientRect();
    const width = Math.max(320, rect.width);
    const height = Math.max(240, Math.round(width * 0.60));
    const dpr = Math.min(2, window.devicePixelRatio || 1);
    canvas.width = Math.round(width * dpr);
    canvas.height = Math.round(height * dpr);
    canvas.style.height = height + "px";
    ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
    VW = width; VH = height;
    CX = width / 2;
    CY = height - 26;
    R = Math.min(width * 0.47, height - 54);
}

function draw(now) {
    ctx.clearRect(0, 0, VW, VH);

    const bg = ctx.createRadialGradient(CX, CY, 8, CX, CY, R * 1.08);
    bg.addColorStop(0, "#07150d");
    bg.addColorStop(1, "#030a06");
    ctx.fillStyle = bg;
    ctx.fillRect(0, 0, VW, VH);

    // active sweep sector
    ctx.beginPath();
    ctx.moveTo(CX, CY);
    ctx.arc(CX, CY, R, rad(20), rad(160));
    ctx.closePath();
    ctx.fillStyle = "rgba(40,255,140,.035)";
    ctx.fill();

    // rings + labels
    ctx.save();
    ctx.lineWidth = 1;
    ctx.font = "9px ui-monospace, monospace";
    ctx.textAlign = "left";
    for (let i = 0; i < CFG.RINGS.length; i++) {
        const cm = CFG.RINGS[i];
        const rr = cm / CFG.MAX_RANGE_CM * R;
        ctx.beginPath();
        ctx.arc(CX, CY, rr, -Math.PI, 0);
        ctx.strokeStyle = i === CFG.RINGS.length - 1 ? "rgba(80,255,160,.30)" : "rgba(70,255,150,.15)";
        ctx.stroke();
        ctx.fillStyle = "rgba(120,255,180,.42)";
        ctx.fillText(cm + "", CX + 6, CY - rr + 3);
    }

    // spokes
    for (let a = 0; a <= 180; a += 30) {
        const p = toPoint(a, CFG.MAX_RANGE_CM);
        ctx.beginPath();
        ctx.moveTo(CX, CY);
        ctx.lineTo(p.x, p.y);
        ctx.strokeStyle = "rgba(70,255,150,.09)";
        ctx.stroke();
    }

    // bearing labels
    ctx.fillStyle = "rgba(140,255,190,.55)";
    ctx.textAlign = "center";
    const l0 = toPoint(0, CFG.MAX_RANGE_CM);
    const l90 = toPoint(90, CFG.MAX_RANGE_CM);
    const l180 = toPoint(180, CFG.MAX_RANGE_CM);
    ctx.fillText("0°", l0.x + 16, l0.y - 6);
    ctx.fillText("90°", l90.x, l90.y - 13);
    ctx.fillText("180°", l180.x - 16, l180.y - 6);
    ctx.restore();

    // keep-out ring
    const kp = keepOut / CFG.MAX_RANGE_CM * R;
    ctx.save();
    ctx.beginPath();
    ctx.arc(CX, CY, kp, -Math.PI, 0);
    ctx.setLineDash([7, 7]);
    ctx.lineWidth = 1.6;
    ctx.strokeStyle = alarm ? "rgba(255,77,94,.95)" : "rgba(255,184,77,.8)";
    ctx.shadowColor = alarm ? "rgba(255,77,94,.85)" : "rgba(255,184,77,.55)";
    ctx.shadowBlur = 9;
    ctx.stroke();
    ctx.restore();

    // blips
    for (let i = 0; i < samples.length; i++) {
        const s = samples[i];
        const age = (now - s.t) / 1000;
        const alpha = Math.exp(-age / (CFG.BLIP_TAU_MS / 1000)) * Math.min(1, 0.45 + s.hits * 0.12);
        if (alpha < 0.04) continue;
        const p = toPoint(s.a, s.d);
        const threat = s.d < keepOut;
        const col = threat ? "255,90,100" : "110,255,175";
        ctx.beginPath();
        ctx.arc(p.x, p.y, 2.3 + alpha * 2.3, 0, Math.PI * 2);
        ctx.fillStyle = "rgba(" + col + "," + (alpha * 0.85).toFixed(3) + ")";
        ctx.shadowColor = "rgba(" + col + ",.85)";
        ctx.shadowBlur = 10;
        ctx.fill();
        ctx.shadowBlur = 0;
    }

    // sweep trail + leading edge
    if (lastBoardAngle !== null) {
        const a0 = Math.max(0, sweepAngle - 18);
        for (let i = 0; i < 12; i++) {
            const a1 = a0 + (sweepAngle - a0) * (i / 12);
            const a2 = a0 + (sweepAngle - a0) * ((i + 1) / 12);
            ctx.beginPath();
            ctx.moveTo(CX, CY);
            ctx.arc(CX, CY, R, rad(a1), rad(a2));
            ctx.closePath();
            ctx.fillStyle = "rgba(90,255,170," + (0.012 + 0.055 * (i / 12)).toFixed(3) + ")";
            ctx.fill();
        }
        const sp = toPoint(sweepAngle, CFG.MAX_RANGE_CM);
        ctx.save();
        ctx.beginPath();
        ctx.moveTo(CX, CY);
        ctx.lineTo(sp.x, sp.y);
        ctx.strokeStyle = "rgba(150,255,205,.8)";
        ctx.lineWidth = 1.4;
        ctx.shadowColor = "rgba(87,255,154,.9)";
        ctx.shadowBlur = 10;
        ctx.stroke();
        ctx.restore();
    }

    // hub
    ctx.beginPath();
    ctx.arc(CX, CY, 6, 0, Math.PI * 2);
    ctx.fillStyle = "#0b2014";
    ctx.fill();
    ctx.strokeStyle = "rgba(87,255,154,.9)";
    ctx.lineWidth = 1.5;
    ctx.stroke();

    // threat reticle
    if (alarm) {
        const b = nearestBlip(now);
        if (b && b.d < keepOut) {
            const p = toPoint(b.a, b.d);
            const k = 9;
            ctx.strokeStyle = "rgba(255,90,100,.95)";
            ctx.lineWidth = 1.4;
            ctx.beginPath();
            ctx.moveTo(p.x - k, p.y - k + 4); ctx.lineTo(p.x - k, p.y - k); ctx.lineTo(p.x - k + 4, p.y - k);
            ctx.moveTo(p.x + k - 4, p.y - k); ctx.lineTo(p.x + k, p.y - k); ctx.lineTo(p.x + k, p.y - k + 4);
            ctx.moveTo(p.x - k, p.y + k - 4); ctx.lineTo(p.x - k, p.y + k); ctx.lineTo(p.x - k + 4, p.y + k);
            ctx.moveTo(p.x + k - 4, p.y + k); ctx.lineTo(p.x + k, p.y + k); ctx.lineTo(p.x + k, p.y + k - 4);
            ctx.stroke();
        }
        const wash = ctx.createRadialGradient(CX, CY, R * 0.2, CX, CY, R * 1.15);
        wash.addColorStop(0, "rgba(255,40,60,0)");
        wash.addColorStop(1, "rgba(255,40,60,.15)");
        ctx.fillStyle = wash;
        ctx.fillRect(0, 0, VW, VH);
    }
}

// ---- Stats / HUD -------------------------------------------------------------
function updateStats(now) {
    if (now - lastStatsAt < 400) return;
    lastStatsAt = now;

    const cutoff = now - 1000;
    let n = 0;
    for (let i = 0; i < sampleTimes.length; i++) if (sampleTimes[i] >= cutoff) n++;
    spsEl.textContent = String(n);

    const b = nearestBlip(now);
    if (b) {
        const cm = Math.round(b.d);
        nearestEl.textContent = cm + " cm  @  " + Math.round(b.a) + "°";
        nearestCEl.textContent = cm + " cm";
    } else {
        nearestEl.textContent = "no echo";
        nearestCEl.textContent = "--";
    }
    angleEl.textContent = lastBoardAngle === null ? "--" : (lastBoardAngle + "°");
}

// ---- Main loop ---------------------------------------------------------------
let lastFrame = performance.now();

function frame(now) {
    const dt = Math.min(0.1, (now - lastFrame) / 1000);
    lastFrame = now;

    demoTick(now);

    if (!connected && alarm && lastThreat && now - lastThreat > CFG.ALARM_HOLD_MS) {
        setAlarm(false);
    }

    if (lastBoardAngle !== null) {
        sweepAngle += (lastBoardAngle - sweepAngle) * (1 - Math.exp(-dt * CFG.SWEEP_EASE));
    }

    draw(now);
    updateStats(now);
    requestAnimationFrame(frame);
}

// ---- Pointer: drag the keep-out ring ------------------------------------------
let dragging = false;

function canvasPoint(e) {
    const rect = canvas.getBoundingClientRect();
    return {
        x: (e.clientX - rect.left) * (VW / rect.width),
        y: (e.clientY - rect.top) * (VH / rect.height),
    };
}

canvas.addEventListener("pointerdown", function (e) {
    ensureAudio();
    const p = canvasPoint(e);
    const dist = Math.hypot(p.x - CX, p.y - CY);
    const ringR = keepOut / CFG.MAX_RANGE_CM * R;
    if (Math.abs(dist - ringR) < 24) {
        dragging = true;
        try { canvas.setPointerCapture(e.pointerId); } catch (err) {}
    }
});

canvas.addEventListener("pointermove", function (e) {
    if (!dragging) return;
    const p = canvasPoint(e);
    const cm = Math.hypot(p.x - CX, p.y - CY) / R * CFG.MAX_RANGE_CM;
    setKeepOut(cm, true);
});

function endDrag(e) {
    if (!dragging) return;
    dragging = false;
    if (connected) send("t:" + Math.round(keepOut));
    try { canvas.releasePointerCapture(e.pointerId); } catch (err) {}
}
canvas.addEventListener("pointerup", endDrag);
canvas.addEventListener("pointercancel", endDrag);

// ---- Controls ----------------------------------------------------------------
connectBtn.addEventListener("click", function () {
    ensureAudio();
    if (connected) { disconnect(); } else { connect(); }
});

function togglePause() {
    ensureAudio();
    if (!connected) {
        demoPaused = !demoPaused;
        setMode(demoPaused ? "PAUSED" : "SWEEP");
        return;
    }
    if (mode === "SWEEP") send("p"); else send("s");
}

function centerNow() {
    ensureAudio();
    if (connected) { send("c"); return; }
    demoPaused = true;
    setAlarm(false);
    setMode("PARK");
    log("center (demo)");
}

function wiggleNow() {
    ensureAudio();
    if (connected) { send("w"); return; }
    log("wiggle both servos (demo) — no board attached");
}

function diagNow() {
    ensureAudio();
    if (connected) {
        send("d");
        log("sensor check requested");
    } else {
        log("sensor check needs the board connected");
    }
}

pauseBtn.addEventListener("click", togglePause);
centerBtn.addEventListener("click", centerNow);
wiggleBtn.addEventListener("click", wiggleNow);
diagBtn.addEventListener("click", diagNow);

keepoutInput.addEventListener("input", function () {
    setKeepOut(parseInt(keepoutInput.value, 10), true);
});
keepoutInput.addEventListener("change", function () {
    if (connected) send("t:" + Math.round(keepOut));
});

soundInput.addEventListener("change", function () {
    soundOn = soundInput.checked;
    if (soundOn) ensureAudio();
});

document.addEventListener("pointerdown", ensureAudio, { once: true });
document.addEventListener("keydown", ensureAudio, { once: true });

document.addEventListener("keydown", function (e) {
    if (e.code === "Space") {
        e.preventDefault();
        togglePause();
    } else if (e.code === "KeyC") {
        centerNow();
    } else if (e.code === "KeyW") {
        wiggleNow();
    } else if (e.code === "KeyM") {
        soundInput.checked = !soundInput.checked;
        soundOn = soundInput.checked;
        if (soundOn) ensureAudio();
    } else if (e.code === "KeyD") {
        const card = logEl.closest(".card");
        if (card) card.classList.toggle("hidden");
    }
});

// ---- Boot --------------------------------------------------------------------
if (!serialSupported) {
    connectBtn.disabled = true;
    setBadge("NO WEB SERIAL", "err");
    log("Web Serial is not available — open this page in Chrome or Edge");
} else if (navigator.serial.addEventListener) {
    navigator.serial.addEventListener("disconnect", function (e) {
        if (port && e.target === port) onSerialLost();
    });
}

syncKeepOutUI();
layout();
window.addEventListener("resize", layout);
if (window.ResizeObserver) {
    new ResizeObserver(layout).observe(canvas.parentElement);
}

setMode("SWEEP");
startDemo();
log("demo mode — connect a board for live data");
requestAnimationFrame(frame);
