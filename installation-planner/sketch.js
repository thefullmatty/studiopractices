// 2D Wall Installation Planner
// SVG layer order:
// 01 gallery wall -> 02 sections -> 03 text -> generated artworks -> 04 eyeline

const DESIGN_W = 997.81;
const DESIGN_H = 845.17;

// The gallery wall area inside the Illustrator/SVG composition.
const WALL = {
  x: 135.27,
  y: 173.39,
  w: 727.26,
  h: 605.39
};

// Approximate scale for the draggable artwork rectangles.
// 240 cm wall height mapped to the drawn SVG wall height.
// This keeps the tool intuitive rather than architecturally exact.
const REAL_WALL_HEIGHT_CM = 240;
const PX_PER_CM = WALL.h / REAL_WALL_HEIGHT_CM;

const INPUT_BOXES = [
  { n: 1, wx: 214.08, wy: 60.20, hx: 284.42, hy: 60.20 },
  { n: 2, wx: 214.08, wy: 88.42, hx: 284.42, hy: 88.42 },
  { n: 3, wx: 214.08, wy: 116.80, hx: 284.42, hy: 116.80 },
  { n: 4, wx: 459.33, wy: 60.20, hx: 529.68, hy: 60.20 },
  { n: 5, wx: 459.33, wy: 88.42, hx: 529.68, hy: 88.42 },
  { n: 6, wx: 459.33, wy: 116.80, hx: 529.68, hy: 116.80 },
  { n: 7, wx: 702.89, wy: 60.20, hx: 773.23, hy: 60.20 },
  { n: 8, wx: 702.89, wy: 88.42, hx: 773.23, hy: 88.42 },
  { n: 9, wx: 702.89, wy: 116.80, hx: 773.23, hy: 116.80 }
];

const FIELD_W = 50.53;
const FIELD_H = 21.25;

const BUTTONS = {
  generate: { x: 511.71, y: 795.63, w: 101.06, h: 37.65 },
  export:   { x: 626.71, y: 795.63, w: 101.06, h: 37.65 },
  clear:    { x: 741.70, y: 795.63, w: 101.06, h: 37.65 }
};

let gallerySvg;
let sectionsSvg;
let textSvg;
let eyeLevelSvg;

let artworks = [];
let dragging = null;
let dragOffsetX = 0;
let dragOffsetY = 0;
let inputs = [];

function preload() {
  gallerySvg = loadImage('assets/01-gallery.svg');
  sectionsSvg = loadImage('assets/02-sections.svg');
  textSvg = loadImage('assets/03-text.svg');
  eyeLevelSvg = loadImage('assets/04-eyelevel.svg');
}

function setup() {
  const holder = document.getElementById('canvas-holder');
  const canvas = createCanvas(DESIGN_W, DESIGN_H);
  canvas.parent(holder);

  pixelDensity(2);
  createHtmlControls();
  noLoop();
}

function draw() {
  clear();

  image(gallerySvg, 0, 0, DESIGN_W, DESIGN_H);
  image(sectionsSvg, 0, 0, DESIGN_W, DESIGN_H);
  image(textSvg, 0, 0, DESIGN_W, DESIGN_H);

  drawArtworks();

  // Draw this last so the existing dashed 1500 eyeline stays above the works.
  image(eyeLevelSvg, 0, 0, DESIGN_W, DESIGN_H);
}

function createHtmlControls() {
  const form = document.getElementById('artwork-form');
  form.innerHTML = '';
  inputs = [];

  INPUT_BOXES.forEach((box) => {
    const widthInput = makeDimensionInput(`artwork-${box.n}-width`, `Artwork ${box.n} width in centimetres`, box.wx, box.wy);
    const heightInput = makeDimensionInput(`artwork-${box.n}-height`, `Artwork ${box.n} height in centimetres`, box.hx, box.hy);

    form.appendChild(widthInput);
    form.appendChild(heightInput);
    inputs.push({ n: box.n, widthInput, heightInput });
  });

  makePlannerButton(form, 'generate', 'Generate artworks', generateArtworks);
  makePlannerButton(form, 'export', 'Export planner as PNG', exportPlanner);
  makePlannerButton(form, 'clear', 'Clear all artworks and dimensions', clearAll);
}

function makeDimensionInput(id, label, x, y) {
  const input = document.createElement('input');
  input.id = id;
  input.className = 'dimension-input';
  input.type = 'number';
  input.inputMode = 'decimal';
  input.min = '0';
  input.step = '0.1';
  input.setAttribute('aria-label', label);
  input.style.left = pct(x, DESIGN_W);
  input.style.top = pct(y, DESIGN_H);
  input.style.width = pct(FIELD_W, DESIGN_W);
  input.style.height = pct(FIELD_H, DESIGN_H);
  input.addEventListener('keydown', (event) => {
    if (event.key === 'Enter') {
      event.preventDefault();
      generateArtworks();
    }
  });
  return input;
}

function makePlannerButton(form, key, label, action) {
  const b = BUTTONS[key];
  const button = document.createElement('button');
  button.type = 'button';
  button.className = 'planner-button';
  button.setAttribute('aria-label', label);
  button.style.left = pct(b.x, DESIGN_W);
  button.style.top = pct(b.y, DESIGN_H);
  button.style.width = pct(b.w, DESIGN_W);
  button.style.height = pct(b.h, DESIGN_H);
  button.addEventListener('click', action);
  form.appendChild(button);
}

function pct(value, total) {
  return `${(value / total) * 100}%`;
}

function generateArtworks() {
  artworks = [];

  const validEntries = inputs
    .map(({ n, widthInput, heightInput }) => ({
      n,
      widthCm: parseFloat(widthInput.value),
      heightCm: parseFloat(heightInput.value)
    }))
    .filter((entry) => Number.isFinite(entry.widthCm) && Number.isFinite(entry.heightCm) && entry.widthCm > 0 && entry.heightCm > 0);

  if (validEntries.length === 0) {
    redraw();
    return;
  }

  const margin = 24;
  const gap = 18;
  const totalWidth = validEntries.reduce((sum, entry) => sum + entry.widthCm * PX_PER_CM, 0) + gap * (validEntries.length - 1);
  let x = WALL.x + max(margin, (WALL.w - totalWidth) / 2);

  validEntries.forEach((entry, index) => {
    let w = entry.widthCm * PX_PER_CM;
    let h = entry.heightCm * PX_PER_CM;

    // If an entered artwork is too large for the drawn wall, scale that one down to fit.
    const maxW = WALL.w - margin * 2;
    const maxH = WALL.h - margin * 2;
    const fitScale = min(1, maxW / w, maxH / h);
    w *= fitScale;
    h *= fitScale;

    if (x + w > WALL.x + WALL.w - margin) {
      x = WALL.x + margin;
    }

    const y = WALL.y + WALL.h * 0.5 - h * 0.5 + (index % 3 - 1) * 18;

    artworks.push({
      label: String(entry.n).padStart(2, '0'),
      originalWidthCm: entry.widthCm,
      originalHeightCm: entry.heightCm,
      x: constrain(x, WALL.x, WALL.x + WALL.w - w),
      y: constrain(y, WALL.y, WALL.y + WALL.h - h),
      w,
      h
    });

    x += w + gap;
  });

  redraw();
}

function drawArtworks() {
  artworks.forEach((artwork) => {
    push();
    rectMode(CORNER);
    stroke(0);
    strokeWeight(1.2);
    fill(255, 252, 244, 235);
    rect(artwork.x, artwork.y, artwork.w, artwork.h);

    fill(0);
    noStroke();
    textAlign(CENTER, CENTER);
    textSize(11);
    textLeading(13);

    const label = `Artwork ${artwork.label}\n${formatCm(artwork.originalWidthCm)} × ${formatCm(artwork.originalHeightCm)} cm`;
    text(label, artwork.x + artwork.w / 2, artwork.y + artwork.h / 2);
    pop();
  });
}

function formatCm(value) {
  return Number.isInteger(value) ? String(value) : value.toFixed(1).replace(/\.0$/, '');
}

function mousePressed() {
  // Ignore clicks in the input/button area at the top and bottom.
  if (mouseY < WALL.y || mouseY > WALL.y + WALL.h) return;

  for (let i = artworks.length - 1; i >= 0; i--) {
    const artwork = artworks[i];
    if (inside(mouseX, mouseY, artwork)) {
      dragging = artwork;
      dragOffsetX = mouseX - artwork.x;
      dragOffsetY = mouseY - artwork.y;

      // Bring selected work to the front of the artwork layer.
      artworks.splice(i, 1);
      artworks.push(artwork);
      redraw();
      return;
    }
  }
}

function mouseDragged() {
  if (!dragging) return;

  dragging.x = constrain(mouseX - dragOffsetX, WALL.x, WALL.x + WALL.w - dragging.w);
  dragging.y = constrain(mouseY - dragOffsetY, WALL.y, WALL.y + WALL.h - dragging.h);
  redraw();
}

function mouseReleased() {
  dragging = null;
}

function touchStarted() {
  mousePressed();
  return false;
}

function touchMoved() {
  mouseDragged();
  return false;
}

function touchEnded() {
  mouseReleased();
  return false;
}

function inside(px, py, rectObj) {
  return px >= rectObj.x && px <= rectObj.x + rectObj.w && py >= rectObj.y && py <= rectObj.y + rectObj.h;
}

function exportPlanner() {
  // Export temporarily hides the HTML inputs because they are not part of the p5 canvas.
  // The fixed SVG text/buttons remain visible in the exported image.
  saveCanvas('2d-wall-installation-planner', 'png');
}

function clearAll() {
  artworks = [];
  inputs.forEach(({ widthInput, heightInput }) => {
    widthInput.value = '';
    heightInput.value = '';
  });
  redraw();
}
