"use strict";

// HandLab dashboard: micro:bit v2 sensors + 5-servo hand over Web Serial.
// Board protocol: S T=.. L=.. MIC=.. AX=.. AY=.. AZ=.. HX=.. HY=.. HZ=.. D=..
//                 PCA=OK|ERR  ACK:<cmd>  SERVO <n>=<deg>
// Browser -> board: s<n>:<deg>  home

const FINGERS = [
    { name: "Thumb",  servo: 1 },
    { name: "Index",  servo: 2 },
    { name: "Middle", servo: 3 },
    { name: "Ring",   servo: 4 },
    { name: "Pinky",  servo: 5 },
];

const N_SAMPLES = 60;   // ~6 s at 10 Hz

// ---- DOM ----------------------------------------------------------------
const $ = (id) => document.getElementById(id);
const connectBtn = $("connect");
const badgeEl = $("badge");
const pcaBadge = $("pcaBadge");

const valEls = {
    temp: $("tTemp"), light: $("tLight"), mic: $("tMic"), dist: $("tDist"),
    head: $("tHead"), mag: $("tMag"), hx: $("tHx"), hy: $("tHy"), hz: $("tHz"),
    ax: $("tAx"), ay: $("tAy"), az: $("tAz"), pitch: $("tPitch"), roll: $("tRoll"),
};

const sliders = {};
for (let i = 0; i < 5; i++) {
    sliders[i] = $("s" + (i + 1));
}

// ---- Serial state --------------------------------------------------------
let port = null, writer = null, reader = null, connected = false;

const serialSupported = "serial" in navigator;

// Heading is derived client-side from the raw magnetometer (the board's
// compassHeading() hangs on this hardware, so we never use it).
let headingOffset = 0;
let lastRawHeading = 0;
function computeHeading(hx, hy) {
    const raw = Math.atan2(hy, hx) * 180 / Math.PI;   // -180..180
    lastRawHeading = raw;
    return (raw - headingOffset + 360) % 360;
}

// ---- Sparklines ----------------------------------------------------------
class Series {
    constructor(canvasId, color) {
        this.canvas = $(canvasId);
        this.ctx = this.canvas.getContext("2d");
        this.color = color;
        this.data = [];
        this.min = Infinity;
        this.max = -Infinity;
        this.size();
        window.addEventListener("resize", () => this.size());
    }
    size() {
        const dpr = Math.min(2, window.devicePixelRatio || 1);
        const w = this.canvas.clientWidth || 240;
        this.canvas.width = Math.round(w * dpr);
        this.canvas.height = Math.round(46 * dpr);
        this.ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
        this.w = w; this.h = 46;
    }
    push(v) {
        this.data.push(v);
        if (v < this.min) this.min = v;
        if (v > this.max) this.max = v;
        if (this.data.length > N_SAMPLES) {
            const dropped = this.data.shift();
            if (dropped === this.min || dropped === this.max) {
                this.min = Infinity; this.max = -Infinity;
                for (const d of this.data) {
                    if (d < this.min) this.min = d;
                    if (d > this.max) this.max = d;
                }
            }
        }
        this.draw();
    }
    draw() {
        const c = this.ctx;
        c.clearRect(0, 0, this.w, this.h);
        if (this.data.length < 2) return;
        let lo = this.min, hi = this.max;
        if (hi - lo < 1e-9) { hi = lo + 1; }
        const pad = 4;
        const n = this.data.length;
        const x = (i) => pad + (i / (N_SAMPLES - 1)) * (this.w - 2 * pad);
        const y = (v) => this.h - pad - ((v - lo) / (hi - lo)) * (this.h - 2 * pad);

        // baseline
        c.strokeStyle = "rgba(83,224,255,.12)";
        c.lineWidth = 1;
        c.beginPath();
        c.moveTo(pad, this.h / 2);
        c.lineTo(this.w - pad, this.h / 2);
        c.stroke();

        c.beginPath();
        for (let i = 0; i < n; i++) {
            const px = pad + (i / (N_SAMPLES - 1)) * (this.w - 2 * pad);
            const py = y(this.data[i]);
            if (i === 0) c.moveTo(px, py); else c.lineTo(px, py);
        }
        c.strokeStyle = this.color;
        c.lineWidth = 1.5;
        c.stroke();
    }
}

const spark = {
    temp: new Series("spTemp", "#53e0ff"),
    light: new Series("spLight", "#ffd166"),
    mic: new Series("spMic", "#ff8fa3"),
    dist: new Series("spDist", "#7ee787"),
};

// ---- Orientation visualization state ----------------------------------------
const accel3dCanvas = $("accel3d");
const accel3dCtx = accel3dCanvas.getContext("2d");
const compassCanvas = $("compass");
const compassCtx = compassCanvas.getContext("2d");

let accelSmooth = { x: 0, y: 0, z: 980 };
let targetHeading = 0;
let needleAngle = 0;
let fieldMag = 50;

function fitViz() {
    const dpr = Math.min(2, window.devicePixelRatio || 1);
    for (const [canvas, ctx] of [[accel3dCanvas, accel3dCtx], [compassCanvas, compassCtx]]) {
        const w = canvas.clientWidth || 260;
        canvas.width = Math.round(w * dpr);
        canvas.height = Math.round(170 * dpr);
        ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
    }
}

// ---- Serial ---------------------------------------------------------------
function send(cmd) {
    if (!connected || !writer) return;
    try { writer.write(new TextEncoder().encode(cmd + "\n")).catch(() => {}); } catch (e) {}
}

async function connect() {
    if (!serialSupported) return;
    try { port = await navigator.serial.requestPort(); }
    catch (e) { if (e && e.name !== "NotFoundError") {} return; }
    try {
        await port.open({ baudRate: 115200 });
        writer = port.writable.getWriter();
        reader = port.readable.pipeThrough(new TextDecoderStream()).getReader();
    } catch (e) {
        try { if (port) await port.close(); } catch (err) {}
        port = writer = reader = null;
        return;
    }
    connected = true;
    stopDemo();
    connectBtn.textContent = "Disconnect";
    setBadge("LIVE", "live");
    send("home");
    readLoop();
}

async function teardown() {
    connected = false;
    const r = reader, w = writer, p = port;
    reader = writer = port = null;
    try { if (r) { await r.cancel(); r.releaseLock(); } } catch (e) {}
    try { if (w) w.releaseLock(); } catch (e) {}
    try { if (p) await p.close(); } catch (e) {}
    connectBtn.textContent = "Connect board";
    connectBtn.disabled = false;
    setBadge("DEMO", "demo");
    startDemo();
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
    if (connected) teardown();
}

function setBadge(text, cls) {
    badgeEl.textContent = text;
    badgeEl.className = "badge " + cls;
}

// ---- Telemetry parsing ----------------------------------------------------
function handleLine(line) {
    if (line.indexOf("S ") === 0) {
        parseSample(line.slice(2));
    } else if (line.indexOf("PCA=") === 0) {
        const ok = line.indexOf("OK") >= 0;
        if (connected) setBadge(ok ? "LIVE · PCA OK" : "LIVE · PCA ERR", ok ? "live" : "err");
        pcaBadge.textContent = ok ? "PCA OK" : "PCA ERR";
    } else if (line.indexOf("SERVO") === 0) {
        // e.g. "SERVO 3=120" -> reflect into the slider
        const m = /SERVO (\d)=(\d+)/.exec(line);
        if (m) {
            const idx = parseInt(m[1], 10) - 1;
            const deg = parseInt(m[2], 10);
            if (idx >= 0 && idx < 5) {
                sliders[idx].value = String(deg);
                $("d" + (idx + 1)).textContent = deg + "°";
            }
        }
    }
}

function parseSample(fields) {
    const m = {};
    for (const f of fields.split(" ")) {
        const eq = f.indexOf("=");
        if (eq > 0) m[f.slice(0, eq)] = parseFloat(f.slice(eq + 1));
    }
    if (m.T === undefined) return;

    valEls.temp.textContent = m.T.toFixed(1);
    valEls.light.textContent = String(Math.round(m.L));
    valEls.mic.textContent = String(Math.round(m.MIC));
    valEls.dist.textContent = (m.D > 0 ? String(Math.round(m.D)) : "—");
    const heading = computeHeading(m.HX, m.HY);
    valEls.head.textContent = String(Math.round(heading));
    const mag = Math.sqrt(m.HX * m.HX + m.HY * m.HY + m.HZ * m.HZ);
    valEls.mag.textContent = String(Math.round(mag));
    valEls.hx.textContent = String(m.HX);
    valEls.hy.textContent = String(m.HY);
    valEls.hz.textContent = String(m.HZ);
    valEls.ax.textContent = String(m.AX);
    valEls.ay.textContent = String(m.AY);
    valEls.az.textContent = String(m.AZ);

    const pitch = Math.atan2(m.AX, m.AZ) * 180 / Math.PI;
    const roll = Math.atan2(m.AY, m.AZ) * 180 / Math.PI;
    valEls.pitch.textContent = Math.round(pitch) + "°";
    valEls.roll.textContent = Math.round(roll) + "°";

    spark.temp.push(m.T);
    spark.light.push(m.L);
    spark.mic.push(m.MIC);
    spark.dist.push(m.D > 0 ? m.D : 0);

    targetHeading = heading;
    fieldMag = mag;
    accelSmooth.x += (m.AX - accelSmooth.x) * 0.15;
    accelSmooth.y += (m.AY - accelSmooth.y) * 0.15;
    accelSmooth.z += (m.AZ - accelSmooth.z) * 0.15;
}

// ---- Demo mode -------------------------------------------------------------
let demoOn = false, demoLast = 0;
function startDemo() { demoOn = true; }
function stopDemo() { demoOn = false; }

function demoTick(now) {
    if (!demoOn || now - demoLast < 100) return;
    demoLast = now;
    const t = now / 1000;
    const ax = Math.round(-100 + 120 * Math.sin(t * 0.9));
    const ay = Math.round(1024 + 40 * Math.sin(t * 0.5));
    const az = Math.round(-20 + 90 * Math.sin(t * 1.3 + 1));
    const hx = Math.round(20 * Math.sin(t * 0.4));
    const hy = Math.round(18 * Math.cos(t * 0.33));
    const hz = Math.round(22 + 6 * Math.sin(t * 0.7));
    const d = Math.max(0, Math.round(35 + 20 * Math.sin(t * 0.6)));
    handleLine("S T=" + (23 + Math.sin(t * 0.2)).toFixed(1) +
        " L=" + Math.round(120 + 80 * Math.sin(t * 0.5)) +
        " MIC=" + Math.round(40 + 30 * Math.sin(t * 2.2)) +
        " AX=" + ax + " AY=" + ay + " AZ=" + az +
        " HX=" + hx + " HY=" + hy + " HZ=" + hz +
        " D=" + d);
}

// ---- Events ----------------------------------------------------------------
connectBtn.addEventListener("click", () => {
    if (connected) teardown(); else connect();
});

for (let i = 0; i < 5; i++) {
    sliders[i].addEventListener("input", () => {
        const deg = parseInt(sliders[i].value, 10);
        $("d" + (i + 1)).textContent = deg + "°";
        if (connected) send("s" + (i + 1) + ":" + deg);
    });
}

$("home").addEventListener("click", () => {
    for (let i = 0; i < 5; i++) {
        sliders[i].value = "0";
        $("d" + (i + 1)).textContent = "0°";
    }
    if (connected) send("home");
});
$("northReset").addEventListener("click", () => {
    headingOffset = lastRawHeading;   // reset north to the current orientation
});

if (navigator.serial && navigator.serial.addEventListener) {
    navigator.serial.addEventListener("disconnect", (e) => {
        if (port && e.target === port) teardown();
    });
}

// ---- 3D orientation cube ----------------------------------------------------
function drawMicrobit() {
    const c = accel3dCtx;
    const w = accel3dCanvas.clientWidth || 260;
    const h = 170;
    c.clearRect(0, 0, w, h);

    const cx = w / 2, cy = h / 2;
    const S = Math.min(w, h) * 0.16;   // px per unit (board is 5 x 4 x 0.3 units)

    const ax = accelSmooth.x, ay = accelSmooth.y, az = accelSmooth.z;
    const pitch = Math.atan2(az, ay);  // lean about X (forward/back), Y is up
    const roll = Math.atan2(ax, ay);   // lean about Z (sideways), Y is up
    const cp = Math.cos(pitch), sp = Math.sin(pitch);
    const cr = Math.cos(roll), sr = Math.sin(roll);

    // fixed 3/4 view so the 3 mm thickness isn't edge-on
    const VY = 0.6, VX = -0.3;
    const cv = Math.cos(VY), sv = Math.sin(VY);
    const cxv = Math.cos(VX), sxv = Math.sin(VX);

    // Tilt (pitch about X, roll about Z), then fixed view (yaw about Y, elev about X).
    function rot(x, y, z) {
        let y1 = y * cp - z * sp;
        let z1 = y * sp + z * cp;
        const x2 = x * cr - y1 * sr;
        const y2 = x * sr + y1 * cr;
        const x3 = x2 * cv + z1 * sv;
        const z3 = -x2 * sv + z1 * cv;
        const y4 = y2 * cxv - z3 * sxv;
        const z4 = y2 * sxv + z3 * cxv;
        return [x3, y4, z4];
    }

    const D = 5;  // camera distance -> perspective
    function proj(p) {
        const s = D / (D - p[2]);
        return [cx + p[0] * s * S, cy - p[1] * s * S, p[2]];
    }

    // micro:bit prism: length 5 cm (x), height 4 cm (y), thickness 3 mm (z)
    const X = 2.5, Y = 2, Z = 0.15;
    const V = [
        [-X, -Y, -Z], [X, -Y, -Z], [X, Y, -Z], [-X, Y, -Z],
        [-X, -Y, Z], [X, -Y, Z], [X, Y, Z], [-X, Y, Z],
    ];
    const P = V.map(v => proj(rot(v[0], v[1], v[2])));

    const faces = [
        { idx: [0, 1, 2, 3], n: [0, 0, -1], kind: "back" },
        { idx: [4, 5, 6, 7], n: [0, 0, 1], kind: "front" },   // LED face
        { idx: [0, 1, 5, 4], n: [0, -1, 0], kind: "edge" },   // gold edge connector
        { idx: [3, 2, 6, 7], n: [0, 1, 0], kind: "top" },
        { idx: [0, 3, 7, 4], n: [-1, 0, 0], kind: "side" },
        { idx: [1, 2, 6, 5], n: [1, 0, 0], kind: "side" },
    ];

    const L = [0.35, 0.6, 0.72];
    const lmag = Math.hypot(L[0], L[1], L[2]);
    const Ln = L.map(v => v / lmag);

    const drawn = faces.map(f => {
        const rn = rot(f.n[0], f.n[1], f.n[2]);
        let zAvg = 0;
        for (const i of f.idx) zAvg += P[i][2];
        zAvg /= f.idx.length;
        const shade = Math.max(0, rn[0] * Ln[0] + rn[1] * Ln[1] + rn[2] * Ln[2]);
        return { f, zAvg, shade, rn };
    });
    drawn.sort((a, b) => a.zAvg - b.zAvg);   // far first (painter's algorithm)

    let frontVisible = false;
    for (const d of drawn) {
        const f = d.f, light = d.shade;
        if (f.kind === "front" && d.rn[2] > 0) frontVisible = true;
        c.beginPath();
        c.moveTo(P[f.idx[0]][0], P[f.idx[0]][1]);
        for (let i = 1; i < f.idx.length; i++) c.lineTo(P[f.idx[i]][0], P[f.idx[i]][1]);
        c.closePath();
        let r, g, b;
        if (f.kind === "front") {
            r = 115 + 55 * light; g = 200 + 55 * light; b = 235 + 20 * light;
        } else if (f.kind === "edge") {
            r = 195 + 40 * light; g = 150 + 30 * light; b = 55 + 10 * light;
        } else {
            r = 40 + 45 * light; g = 85 + 55 * light; b = 135 + 45 * light;
        }
        c.fillStyle = "rgb(" + Math.round(r) + "," + Math.round(g) + "," + Math.round(b) + ")";
        c.fill();
        c.strokeStyle = "rgba(8,22,38,0.8)";
        c.lineWidth = 1;
        c.stroke();
    }

    // 5x5 LED grid on the front face (a faint matrix so it reads as a micro:bit)
    if (frontVisible) {
        c.fillStyle = "rgba(12,34,52,0.55)";
        for (let gi = 0; gi < 5; gi++) {
            for (let gj = 0; gj < 5; gj++) {
                const lx = -1.6 + gi * 0.8;
                const ly = -1.6 + gj * 0.8;
                const p = proj(rot(lx, ly, Z));
                c.beginPath();
                c.arc(p[0], p[1], 1.3, 0, Math.PI * 2);
                c.fill();
            }
        }
    }
}

// ---- Magnetometer compass ---------------------------------------------------
function drawCompass() {
    const c = compassCtx;
    const w = compassCanvas.clientWidth || 260;
    const h = 170;
    c.clearRect(0, 0, w, h);

    const cx = w / 2, cy = h / 2;
    const r = Math.min(w, h) / 2 - 12;

    // face
    c.beginPath();
    c.arc(cx, cy, r, 0, Math.PI * 2);
    c.fillStyle = "rgba(83,224,255,0.04)";
    c.fill();
    c.strokeStyle = "rgba(83,224,255,0.35)";
    c.lineWidth = 1.5;
    c.stroke();

    // tick marks every 15°, major at 45°
    for (let a = 0; a < 360; a += 15) {
        const rad = a * Math.PI / 180;
        const major = a % 45 === 0;
        const r1 = major ? r - 4 : r - 7;
        c.beginPath();
        c.moveTo(cx + r1 * Math.sin(rad), cy - r1 * Math.cos(rad));
        c.lineTo(cx + (r - 2) * Math.sin(rad), cy - (r - 2) * Math.cos(rad));
        c.strokeStyle = major ? "rgba(210,168,255,0.8)" : "rgba(83,224,255,0.3)";
        c.lineWidth = major ? 1.5 : 1;
        c.stroke();
    }

    // cardinal labels
    c.fillStyle = "rgba(210,168,255,0.95)";
    c.font = "bold 13px ui-monospace, monospace";
    c.textAlign = "center";
    c.textBaseline = "middle";
    for (const [a, label] of [[0, "N"], [90, "E"], [180, "S"], [270, "W"]]) {
        const rad = a * Math.PI / 180;
        c.fillText(label, cx + (r - 15) * Math.sin(rad), cy - (r - 15) * Math.cos(rad));
    }

    // field-strength arc (normalized to ~150 uT)
    const frac = Math.min(1, fieldMag / 150);
    c.beginPath();
    c.arc(cx, cy, r - 1, -Math.PI / 2, -Math.PI / 2 + frac * Math.PI * 2);
    c.strokeStyle = "rgba(255,184,77,0.8)";
    c.lineWidth = 2.5;
    c.stroke();

    // needle (smoothed heading, N up)
    c.save();
    c.translate(cx, cy);
    c.rotate(needleAngle * Math.PI / 180);
    c.beginPath();
    c.moveTo(0, -(r - 16));
    c.lineTo(5, 0);
    c.lineTo(-5, 0);
    c.closePath();
    c.fillStyle = "#ff5c6c";
    c.fill();
    c.beginPath();
    c.moveTo(0, r - 16);
    c.lineTo(5, 0);
    c.lineTo(-5, 0);
    c.closePath();
    c.fillStyle = "rgba(200,220,235,0.55)";
    c.fill();
    c.restore();

    // center cap
    c.beginPath();
    c.arc(cx, cy, 4, 0, Math.PI * 2);
    c.fillStyle = "#0c1826";
    c.fill();
    c.strokeStyle = "#53e0ff";
    c.lineWidth = 1;
    c.stroke();
}

// ---- Main loop -------------------------------------------------------------
let lastFrame = performance.now();
function frame(now) {
    demoTick(now);

    // smooth the compass needle toward the latest heading (shortest arc)
    const dAngle = ((targetHeading - needleAngle + 540) % 360) - 180;
    needleAngle += dAngle * 0.12;
    drawCompass();
    drawMicrobit();

    requestAnimationFrame(frame);
}

// ---- Boot ------------------------------------------------------------------
if (!serialSupported) {
    connectBtn.disabled = true;
    setBadge("NO WEB SERIAL", "err");
}
startDemo();
fitViz();
window.addEventListener("resize", fitViz);
requestAnimationFrame(frame);
