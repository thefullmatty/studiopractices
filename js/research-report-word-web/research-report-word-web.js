/*
  Research Report Word Web — horizontal / radial version
  -------------------------------------------------------
  Interaction:
  - Drag any heading or associated term.
  - Dragging a heading carries its cluster.
  - Double-click / double-tap to reset.
*/

const sections = [
  {
    title: "Introduction",
    terms: [
      "Initial Question",
      "What were you trying to explore?",
      "Why did this matter to you?"
    ]
  },
  {
    title: "Research and influences",
    terms: [
      "Artists",
      "Texts",
      "Exhibitions",
      "Other sources",
      "Connecting your work to others"
    ]
  },
  {
    title: "Development",
    terms: [
      "Process images",
      "Experiments",
      "Material tests",
      "Key Decisions",
      "What changed?",
      "What failed?",
      "What surprised you?"
    ]
  },
  {
    title: "Project statement & final outcome",
    terms: [
      "Documentation of finished work",
      "Image captions",
      "Details of installation / presentation",
      "Project Statement",
      "What is this work?",
      "What is it doing?",
      "What experience, question or idea might an audience take from this work?"
    ]
  },
  {
    title: "Evaluation and reflection",
    terms: [
      "What did the project reveal?",
      "What questions remain?",
      "Where might this project lead next?"
    ]
  }
];

const nodes = [];
const edges = [];

let draggedNode = null;
let dragOffsetX = 0;
let dragOffsetY = 0;
let lastTapTime = 0;

const palette = {
  text: [28, 28, 28],
  heading: [0, 0, 0],
  line: [25, 25, 25, 58],
  spine: [10, 10, 10, 105],
  hover: [0, 0, 0, 30]
};

function setup() {
  createCanvas(windowWidth, windowHeight);
  pixelDensity(Math.min(window.devicePixelRatio || 1, 2));

  // A clean, slightly technical sans-serif stack without becoming monospaced.
  textFont("Inter, Avenir Next, Avenir, Helvetica Neue, Arial, sans-serif");
  textAlign(CENTER, CENTER);
  strokeCap(ROUND);

  buildGraph();
}

function buildGraph() {
  nodes.length = 0;
  edges.length = 0;

  const left = max(130, width * 0.09);
  const right = min(width - 130, width * 0.91);
  const spineY = height * 0.5;

  sections.forEach((section, sectionIndex) => {
    const x = sections.length === 1
      ? width * 0.5
      : map(sectionIndex, 0, sections.length - 1, left, right);

    // Slight rise/fall keeps the horizontal spine organic.
    const y = spineY + sin(sectionIndex * 1.35) * min(34, height * 0.04);

    const heading = new Node({
      label: section.title,
      x,
      y,
      isHeading: true,
      sectionIndex,
      anchorX: x,
      anchorY: y
    });

    nodes.push(heading);

    if (sectionIndex > 0) {
      const previousHeading = nodes.find(
        n => n.isHeading && n.sectionIndex === sectionIndex - 1
      );
      edges.push({ a: previousHeading, b: heading, spine: true });
    }

    buildRadialTerms(section, heading, sectionIndex);
  });
}

function buildRadialTerms(section, heading, sectionIndex) {
  const count = section.terms.length;

  // Alternate clusters above and below the spine, but allow them to fan
  // around the heading rather than sitting in a single line.
  const pointsUp = sectionIndex % 2 === 0;
  const centreAngle = pointsUp ? -HALF_PI : HALF_PI;

  // Broader fan for larger clusters.
  const fanWidth = count <= 3 ? radians(125) : radians(155);
  const radiusBase = constrain(min(width, height) * 0.18, 115, 205);

  section.terms.forEach((term, termIndex) => {
    const ratio = count === 1 ? 0.5 : termIndex / (count - 1);
    const angle = centreAngle - fanWidth / 2 + ratio * fanWidth;

    // Alternate radii to avoid a rigid semicircle.
    const radiusOffset = (termIndex % 2 === 0 ? 1 : -1) * 16;
    const longLabelExtra = term.length > 52 ? 28 : term.length > 30 ? 12 : 0;
    const radius = radiusBase + radiusOffset + longLabelExtra;

    const tx = heading.x + cos(angle) * radius;
    const ty = heading.y + sin(angle) * radius;

    const termNode = new Node({
      label: term,
      x: tx,
      y: ty,
      isHeading: false,
      sectionIndex,
      anchorX: tx,
      anchorY: ty
    });

    nodes.push(termNode);
    edges.push({ a: heading, b: termNode, spine: false });
  });
}

class Node {
  constructor({ label, x, y, isHeading, sectionIndex, anchorX, anchorY }) {
    this.label = label;
    this.x = x;
    this.y = y;
    this.anchorX = anchorX;
    this.anchorY = anchorY;
    this.isHeading = isHeading;
    this.sectionIndex = sectionIndex;

    this.vx = 0;
    this.vy = 0;
    this.dragTargetX = x;
    this.dragTargetY = y;
    this.phase = random(TWO_PI);
    this.noiseOffset = random(1000);
    this.hovered = false;

    this.fontSize = this.isHeading ? 19 : 12.5;
    this.maxWidth = this.isHeading
      ? constrain(width * 0.16, 135, 220)
      : constrain(width * 0.14, 115, 205);

    this.lines = [];
    this.boxW = 0;
    this.boxH = 0;
    this.measure();
  }

  measure() {
    textSize(this.fontSize);
    textStyle(this.isHeading ? BOLD : NORMAL);

    this.lines = wrapText(this.label, this.maxWidth);
    this.boxW = min(
      this.maxWidth,
      max(...this.lines.map(line => textWidth(line)), 30)
    );

    const lineHeight = this.fontSize * 1.22;
    this.boxH = this.lines.length * lineHeight;
  }

  update() {
    // When dragged, the node does not snap directly to the pointer.
    // It eases toward a target and retains velocity, producing a submerged feel.
    if (this === draggedNode) {
      const dragEase = this.isHeading ? 0.10 : 0.13;
      const dragDamping = 0.78;

      this.vx += (this.dragTargetX - this.x) * dragEase;
      this.vy += (this.dragTargetY - this.y) * dragEase;
      this.vx *= dragDamping;
      this.vy *= dragDamping;
      this.x += this.vx;
      this.y += this.vy;

      this.anchorX = this.x;
      this.anchorY = this.y;
      return;
    }

    // Soft attraction to the node's resting position.
    const anchorSpring = this.isHeading ? 0.0013 : 0.0018;
    this.vx += (this.anchorX - this.x) * anchorSpring;
    this.vy += (this.anchorY - this.y) * anchorSpring;

    // Attached terms are also pulled toward their heading.
    // This is intentionally weak: enough to create gravity, not a rigid armature.
    if (!this.isHeading) {
      const heading = nodes.find(
        n => n.isHeading && n.sectionIndex === this.sectionIndex
      );

      if (heading) {
        const dx = heading.x - this.x;
        const dy = heading.y - this.y;
        const distance = max(1, sqrt(dx * dx + dy * dy));
        const desiredDistance = dist(
          this.anchorX,
          this.anchorY,
          heading.anchorX,
          heading.anchorY
        );

        const springForce = (distance - desiredDistance) * 0.00055;
        this.vx += (dx / distance) * springForce;
        this.vy += (dy / distance) * springForce;
      }
    }

    // Slow ambient currents.
    const t = frameCount * 0.0032;
    const wobbleStrength = this.isHeading ? 0.013 : 0.021;
    this.vx += (noise(this.noiseOffset, t) - 0.5) * wobbleStrength;
    this.vy += (noise(this.noiseOffset + 500, t) - 0.5) * wobbleStrength;

    // Soft text-box repulsion.
    for (const other of nodes) {
      if (other === this) continue;

      const dx = this.x - other.x;
      const dy = this.y - other.y;
      const dSq = dx * dx + dy * dy;
      const minDistance = (this.boxW + other.boxW) * 0.27 + 28;

      if (dSq > 0.01 && dSq < minDistance * minDistance) {
        const d = sqrt(dSq);
        const force = (minDistance - d) * 0.00065;
        this.vx += (dx / d) * force;
        this.vy += (dy / d) * force;
      }
    }

    // Fluid drag: lower damping means longer, softer settling.
    this.vx *= 0.965;
    this.vy *= 0.965;
    this.x += this.vx;
    this.y += this.vy;

    const pad = 22;
    this.x = constrain(this.x, pad + this.boxW / 2, width - pad - this.boxW / 2);
    this.y = constrain(this.y, pad + this.boxH / 2, height - pad - this.boxH / 2);
  }

  contains(px, py) {
    const padX = 12;
    const padY = 9;

    return (
      px >= this.x - this.boxW / 2 - padX &&
      px <= this.x + this.boxW / 2 + padX &&
      py >= this.y - this.boxH / 2 - padY &&
      py <= this.y + this.boxH / 2 + padY
    );
  }

  draw() {
    this.hovered = this.contains(mouseX, mouseY);

    push();
    translate(this.x, this.y);

    if (this.hovered || this === draggedNode) {
      noFill();
      stroke(...palette.hover);
      strokeWeight(1);
      rectMode(CENTER);
      rect(0, 0, this.boxW + 22, this.boxH + 16, 10);
    }

    noStroke();
    fill(...(this.isHeading ? palette.heading : palette.text));
    textSize(this.fontSize);
    textStyle(this.isHeading ? BOLD : NORMAL);

    const lineHeight = this.fontSize * 1.22;
    const startY = -((this.lines.length - 1) * lineHeight) / 2;

    this.lines.forEach((line, i) => {
      text(line, 0, startY + i * lineHeight);
    });

    pop();
  }
}

function draw() {
  clear();

  nodes.forEach(node => node.update());
  drawEdges();
  nodes.forEach(node => node.draw());

  cursor(nodes.some(node => node.hovered) || draggedNode ? "grab" : ARROW);
}

function drawEdges() {
  for (const edge of edges) {
    const clipped = clipLineToNodePadding(edge.a, edge.b, edge.spine ? 15 : 12);
    const a = clipped.start;
    const b = clipped.end;

    const dx = b.x - a.x;
    const dy = b.y - a.y;
    const d = max(1, sqrt(dx * dx + dy * dy));
    const nx = -dy / d;
    const ny = dx / d;

    const wobble = sin(frameCount * 0.012 + edge.a.phase + edge.b.phase) *
      (edge.spine ? 5 : 3);

    const midX = (a.x + b.x) / 2 + nx * wobble;
    const midY = (a.y + b.y) / 2 + ny * wobble;

    noFill();
    stroke(...(edge.spine ? palette.spine : palette.line));
    strokeWeight(edge.spine ? 1.45 : 1);

    beginShape();
    vertex(a.x, a.y);
    quadraticVertex(midX, midY, b.x, b.y);
    endShape();
  }
}

// Finds where a centre-to-centre connector should stop so it never enters
// the padded text area of either node.
function clipLineToNodePadding(a, b, extraPadding) {
  const start = boundaryPoint(a, b.x, b.y, extraPadding);
  const end = boundaryPoint(b, a.x, a.y, extraPadding);

  return { start, end };
}

function boundaryPoint(node, targetX, targetY, padding) {
  const dx = targetX - node.x;
  const dy = targetY - node.y;

  if (abs(dx) < 0.001 && abs(dy) < 0.001) {
    return { x: node.x, y: node.y };
  }

  const halfW = node.boxW / 2 + padding;
  const halfH = node.boxH / 2 + padding;

  // Ray / axis-aligned rectangle intersection.
  const scaleX = abs(dx) > 0.001 ? halfW / abs(dx) : Infinity;
  const scaleY = abs(dy) > 0.001 ? halfH / abs(dy) : Infinity;
  const scale = min(scaleX, scaleY);

  return {
    x: node.x + dx * scale,
    y: node.y + dy * scale
  };
}

function wrapText(value, maxWidth) {
  const words = value.split(/\s+/);
  const lines = [];
  let current = "";

  for (const word of words) {
    const test = current ? `${current} ${word}` : word;

    if (textWidth(test) <= maxWidth || current === "") {
      current = test;
    } else {
      lines.push(current);
      current = word;
    }
  }

  if (current) lines.push(current);
  return lines;
}

function beginDrag(px, py) {
  for (let i = nodes.length - 1; i >= 0; i--) {
    if (nodes[i].contains(px, py)) {
      draggedNode = nodes[i];
      dragOffsetX = draggedNode.x - px;
      dragOffsetY = draggedNode.y - py;
      draggedNode.dragTargetX = draggedNode.x;
      draggedNode.dragTargetY = draggedNode.y;
      draggedNode.vx *= 0.35;
      draggedNode.vy *= 0.35;
      return false;
    }
  }

  return true;
}

function mousePressed() {
  return beginDrag(mouseX, mouseY);
}

function mouseDragged() {
  if (!draggedNode) return true;

  const targetX = mouseX + dragOffsetX;
  const targetY = mouseY + dragOffsetY;

  const targetDX = targetX - draggedNode.dragTargetX;
  const targetDY = targetY - draggedNode.dragTargetY;

  draggedNode.dragTargetX = targetX;
  draggedNode.dragTargetY = targetY;

  if (draggedNode.isHeading) {
    const connectedTerms = nodes.filter(
      n => !n.isHeading && n.sectionIndex === draggedNode.sectionIndex
    );

    // Terms receive only part of the cursor movement, then catch up under
    // their own spring force. This creates the trailing-through-water effect.
    for (const term of connectedTerms) {
      term.anchorX += targetDX * 0.72;
      term.anchorY += targetDY * 0.72;
      term.vx += targetDX * 0.018;
      term.vy += targetDY * 0.018;
    }
  } else {
    // Moving a term lightly tugs its heading and sibling terms.
    const heading = nodes.find(
      n => n.isHeading && n.sectionIndex === draggedNode.sectionIndex
    );

    if (heading) {
      heading.vx += targetDX * 0.004;
      heading.vy += targetDY * 0.004;
    }

    const siblings = nodes.filter(
      n =>
        n !== draggedNode &&
        !n.isHeading &&
        n.sectionIndex === draggedNode.sectionIndex
    );

    for (const sibling of siblings) {
      sibling.vx += targetDX * 0.0018;
      sibling.vy += targetDY * 0.0018;
    }
  }

  return false;
}

function mouseReleased() {
  if (draggedNode) {
    draggedNode.anchorX = draggedNode.x;
    draggedNode.anchorY = draggedNode.y;

    // A small release impulse keeps the object drifting briefly.
    draggedNode.vx *= 1.12;
    draggedNode.vy *= 1.12;
  }

  draggedNode = null;
}

function doubleClicked() {
  buildGraph();
  return false;
}

function touchStarted() {
  const now = millis();

  if (now - lastTapTime < 300) {
    buildGraph();
    lastTapTime = 0;
    return false;
  }

  lastTapTime = now;
  return beginDrag(mouseX, mouseY);
}

function touchMoved() {
  return mouseDragged();
}

function touchEnded() {
  mouseReleased();
  return false;
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
  buildGraph();
}
