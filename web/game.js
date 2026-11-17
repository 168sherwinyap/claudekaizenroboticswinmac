"use strict";

// ---- Tunables ---------------------------------------------------------------
const NEAR_CM = 4;          // hand close -> bird at bottom
const FAR_CM = 28;          // hand raised -> bird at top
const MAX_VALID_CM = 40;    // above this the hand is "gone" (or a spurious echo) -> hold
const DIST_SAMPLES = 3;     // median window for single-sample spike rejection
const SMOOTH = 6;           // lerp time constant (lower = snappier)
const PIPE_W = 64;
const PIPE_GAP = 150;
const PIPE_SPEED = 160;     // px/s leftward
const PIPE_SPACING = 260;   // px between successive pipes
const BIRD_X = 90;
const BIRD_R = 14;
const MARGIN = 20;          // min distance of the gap from top/bottom
const FLAP_COOLDOWN = 300;  // ms between flap commands
const UP_VELOCITY = 40;     // px/s threshold that counts as "moving up"

// ---- DOM --------------------------------------------------------------------
const canvas = document.getElementById("game");
const ctx = canvas.getContext("2d");
const connectBtn = document.getElementById("connect");
const statusEl = document.getElementById("status");
const W = canvas.width;
const H = canvas.height;

// ---- Serial state -----------------------------------------------------------
let port = null;
let writer = null;
let reader = null;
let connected = false;
let latestDistance = -1;    // cm; -1 = no reading yet
let distBuf = [];           // recent valid readings for the median filter

// ---- Game state -------------------------------------------------------------
let state = "idle";         // idle | ready | playing | over
let birdY = H / 2;
let prevBirdY = birdY;
let targetY = H / 2;
let movingUp = false;
let lastFlap = 0;
let score = 0;
let pipes = [];
let spawnAcc = PIPE_SPACING;
let lastFrame = performance.now();
let debug = false;

// ---- Web Serial -------------------------------------------------------------
connectBtn.addEventListener("click", async () => {
    try {
        port = await navigator.serial.requestPort();
        await port.open({ baudRate: 115200 });
        writer = port.writable.getWriter();
        const decoder = new TextDecoderStream();
        const readable = port.readable.pipeThrough(decoder);
        reader = readable.getReader();
        connected = true;
        connectBtn.disabled = true;
        setStatus("connected — press Space / tap to start");
        if (state === "idle") state = "ready";
        readLoop();
    } catch (e) {
        if (e && e.name !== "NotFoundError") setStatus("connect error: " + e.message);
    }
});

if (navigator.serial) {
    navigator.serial.addEventListener("disconnect", () => {
        connected = false;
        setStatus("board disconnected — click Connect to reconnect");
    });
}

async function readLoop() {
    let buf = "";
    while (connected) {
        let value, done;
        try {
            ({ value, done } = await reader.read());
        } catch (e) {
            break;
        }
        if (done) break;
        buf += value;
        let nl;
        while ((nl = buf.indexOf("\n")) >= 0) {
            const line = buf.slice(0, nl).trim();
            buf = buf.slice(nl + 1);
            if (line.startsWith("D:")) {
                const d = parseFloat(line.slice(2));
                if (!isNaN(d)) handleReading(d);
            }
        }
    }
}

function sendFlap() {
    if (connected && writer) {
        writer.write(new TextEncoder().encode("f\n")).catch(() => {});
    }
}

function setStatus(s) {
    statusEl.textContent = s;
}

// ---- Game -------------------------------------------------------------------
function handleReading(d) {
    latestDistance = d;                    // raw value, shown in the debug readout
    // No echo (0) or hand clearly gone / spurious far reading: hold, don't move.
    if (d <= 0 || d > MAX_VALID_CM) return;
    distBuf.push(d);
    if (distBuf.length > DIST_SAMPLES) distBuf.shift();
}

function birdTargetFromDistance() {
    if (distBuf.length < DIST_SAMPLES) return targetY;   // not enough data yet -> hold
    const s = distBuf.slice().sort((a, b) => a - b);
    const med = s[Math.floor(s.length / 2)];             // median rejects single spikes
    const c = Math.min(FAR_CM, Math.max(NEAR_CM, med));
    const t = (c - NEAR_CM) / (FAR_CM - NEAR_CM);  // 0 near (bottom), 1 far (top)
    return H - MARGIN - t * (H - 2 * MARGIN);
}

function resetGame() {
    pipes = [];
    spawnAcc = PIPE_SPACING;
    score = 0;
    birdY = H / 2;
    prevBirdY = birdY;
    targetY = H / 2;
    movingUp = false;
    latestDistance = -1;
    distBuf = [];
    sendFlap();
    state = "playing";
}

function spawnPipe() {
    const gapTop = MARGIN + Math.random() * (H - 2 * MARGIN - PIPE_GAP);
    pipes.push({ x: W + PIPE_W, gapTop, scored: false });
}

function hitTest() {
    if (birdY - BIRD_R < 0 || birdY + BIRD_R > H) return true;
    for (const p of pipes) {
        if (BIRD_X + BIRD_R > p.x && BIRD_X - BIRD_R < p.x + PIPE_W) {
            if (birdY - BIRD_R < p.gapTop || birdY + BIRD_R > p.gapTop + PIPE_GAP) {
                return true;
            }
        }
    }
    return false;
}

function update(dt) {
    // bird follows hand height (mirror), smoothed
    targetY = birdTargetFromDistance();
    birdY += (targetY - birdY) * (1 - Math.exp(-dt * SMOOTH));

    // up-only wing flap (rising edge of upward motion)
    const vy = (birdY - prevBirdY) / dt;        // negative = up
    const isUp = vy < -UP_VELOCITY;
    const now = performance.now();
    if (isUp && !movingUp && now - lastFlap > FLAP_COOLDOWN) {
        sendFlap();
        lastFlap = now;
    }
    movingUp = isUp;
    prevBirdY = birdY;

    // scroll pipes
    for (const p of pipes) p.x -= PIPE_SPEED * dt;
    spawnAcc += PIPE_SPEED * dt;
    if (spawnAcc >= PIPE_SPACING) {
        spawnAcc -= PIPE_SPACING;
        spawnPipe();
    }
    // score when a pipe clears the bird
    for (const p of pipes) {
        if (!p.scored && p.x + PIPE_W < BIRD_X - BIRD_R) {
            p.scored = true;
            score++;
        }
    }
    while (pipes.length && pipes[0].x + PIPE_W < 0) pipes.shift();

    if (hitTest()) {
        state = "over";
    }
}

// ---- Render -----------------------------------------------------------------
function draw() {
    ctx.fillStyle = "#7ec8f0";
    ctx.fillRect(0, 0, W, H);

    // pipes
    ctx.fillStyle = "#3aa03a";
    for (const p of pipes) {
        ctx.fillRect(p.x, 0, PIPE_W, p.gapTop);
        const gapBottom = p.gapTop + PIPE_GAP;
        ctx.fillRect(p.x, gapBottom, PIPE_W, H - gapBottom);
        ctx.fillRect(p.x - 4, p.gapTop - 18, PIPE_W + 8, 18);
        ctx.fillRect(p.x - 4, gapBottom, PIPE_W + 8, 18);
    }

    // ground
    ctx.fillStyle = "#7ac74f";
    ctx.fillRect(0, H - 16, W, 16);
    ctx.fillStyle = "#5aa33a";
    ctx.fillRect(0, H - 16, W, 3);

    // bird
    ctx.fillStyle = "#ffd23f";
    ctx.beginPath();
    ctx.arc(BIRD_X, birdY, BIRD_R, 0, Math.PI * 2);
    ctx.fill();
    ctx.fillStyle = "#fff";
    ctx.beginPath();
    ctx.arc(BIRD_X - 4, birdY - 4, 4, 0, Math.PI * 2);
    ctx.fill();
    ctx.fillStyle = "#000";
    ctx.beginPath();
    ctx.arc(BIRD_X - 3, birdY - 4, 2, 0, Math.PI * 2);
    ctx.fill();
    ctx.fillStyle = "#e8862a";
    ctx.beginPath();
    ctx.moveTo(BIRD_X + BIRD_R, birdY);
    ctx.lineTo(BIRD_X + BIRD_R + 9, birdY + 1);
    ctx.lineTo(BIRD_X + BIRD_R, birdY + 5);
    ctx.fill();

    // score
    ctx.fillStyle = "#fff";
    ctx.strokeStyle = "#234";
    ctx.lineWidth = 4;
    ctx.font = "bold 30px sans-serif";
    ctx.strokeText(String(score), 16, 42);
    ctx.fillText(String(score), 16, 42);

    // debug readout
    if (debug) {
        ctx.fillStyle = "rgba(0,0,0,0.7)";
        ctx.fillRect(0, H - 34, W, 22);
        ctx.fillStyle = "#0f0";
        ctx.font = "13px monospace";
        const d = latestDistance < 0 ? "--" : latestDistance.toFixed(1);
        ctx.fillText("D:" + d + "cm  y:" + Math.round(birdY), 8, H - 18);
    }

    // overlays
    if (state === "ready" || state === "over") {
        ctx.fillStyle = "rgba(0,0,0,0.45)";
        ctx.fillRect(0, 0, W, H);
        ctx.fillStyle = "#fff";
        ctx.textAlign = "center";
        ctx.font = "bold 24px sans-serif";
        if (state === "ready") {
            ctx.fillText("Press Space / tap to start", W / 2, H / 2);
            ctx.font = "15px sans-serif";
            ctx.fillText("raise hand = fly up, lower = dive", W / 2, H / 2 + 30);
        } else {
            ctx.fillText("Game over", W / 2, H / 2 - 10);
            ctx.font = "20px sans-serif";
            ctx.fillText("Score: " + score, W / 2, H / 2 + 22);
            ctx.font = "16px sans-serif";
            ctx.fillText("Space / tap to restart", W / 2, H / 2 + 54);
        }
        ctx.textAlign = "left";
    }
}

function frame(now) {
    const dt = Math.min(0.05, (now - lastFrame) / 1000);
    lastFrame = now;
    if (state === "playing") update(dt);
    draw();
    requestAnimationFrame(frame);
}

window.addEventListener("keydown", (e) => {
    if (e.code === "Space") {
        e.preventDefault();
        if (state === "ready" || state === "over") resetGame();
    }
    if (e.code === "KeyD") debug = !debug;
});

canvas.addEventListener("click", () => {
    if (state === "ready" || state === "over") resetGame();
});

requestAnimationFrame(frame);
