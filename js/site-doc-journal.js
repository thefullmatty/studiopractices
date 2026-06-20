let zones = [
  {
    name: "Studio Activity",
    question: "What are you doing?",
    angle: -Math.PI / 2
  },
  {
    name: "Documentation",
    question: "How are you recording it?",
    angle: Math.PI / 6
  },
  {
    name: "Journal",
    question: "What was revealed, and what is left over?",
    angle: Math.PI * 5 / 6
  }
];

let draggedZone = null;

function setup() {
  createCanvas(windowWidth, windowHeight);
  textAlign(CENTER, CENTER);
  textFont("Arial");

  let cx = width / 2;
  let cy = height / 2 - 20;
  let siteSize = min(width, height) * 0.65;
  let orbitRadius = siteSize * 0.32;

  for (let z of zones) {
    z.x = cx + cos(z.angle) * orbitRadius;
    z.y = cy + sin(z.angle) * orbitRadius;
    z.vx = random(-0.2, 0.2);
    z.vy = random(-0.2, 0.2);
  }
}

function draw() {
  clear();

  let cx = width / 2;
  let cy = height / 2 - 20;
  let siteSize = min(width, height) * 0.65;
  let zoneSize = 135;

  // Outer site circle
  noFill();
  stroke(0, 120);
  strokeWeight(1);
  ellipse(cx, cy, siteSize, siteSize);

  // Centre text
  noStroke();
  fill(0);
  textSize(28);
  text("Site", cx, cy - 20);

  textSize(14);
  text("inquiry / question / place", cx, cy + 18);

  let activeZone = null;

  for (let z of zones) {
    let d = dist(mouseX, mouseY, z.x, z.y);
    let hovering = d < zoneSize / 2;

    if (hovering || draggedZone === z) {
      activeZone = z;
    }

    if (draggedZone === z) {
      z.x = mouseX;
      z.y = mouseY;
    } else {
      // Gentle drifting motion
      z.x += z.vx;
      z.y += z.vy;

      let fromCentre = dist(cx, cy, z.x, z.y);
      let maxDist = siteSize / 2 - zoneSize / 2;

      // Keep zones inside the site circle
      if (fromCentre > maxDist) {
        let a = atan2(z.y - cy, z.x - cx);
        z.x = cx + cos(a) * maxDist;
        z.y = cy + sin(a) * maxDist;
        z.vx *= -1;
        z.vy *= -1;
      }

      // Slight randomness for floaty behaviour
      z.vx += random(-0.01, 0.01);
      z.vy += random(-0.01, 0.01);
      z.vx = constrain(z.vx, -0.3, 0.3);
      z.vy = constrain(z.vy, -0.3, 0.3);
    }

    // Line to centre appears on hover or drag
    if (hovering || draggedZone === z) {
      let a = atan2(z.y - cy, z.x - cx);

      let startX = cx + cos(a) * 75;
      let startY = cy + sin(a) * 75;

      let endX = z.x - cos(a) * (zoneSize / 2);
      let endY = z.y - sin(a) * (zoneSize / 2);

      stroke(0, 80);
      strokeWeight(1);
      line(startX, startY, endX, endY);
    }

    // Zone circle
    noFill();
    stroke(0, hovering || draggedZone === z ? 220 : 140);
    strokeWeight(hovering || draggedZone === z ? 2 : 1);

    ellipse(
      z.x,
      z.y,
      hovering || draggedZone === z ? 150 : zoneSize,
      hovering || draggedZone === z ? 150 : zoneSize
    );

    // Zone label
    noStroke();
    fill(0);
    textSize(15);

    // Allows two-word titles to sit nicely
    if (z.name === "Studio Activity") {
      text("Studio\nActivity", z.x, z.y);
    } else {
      text(z.name, z.x, z.y);
    }
  }

  // Hover question below the outer circle
  if (activeZone) {
    fill(0);
    textSize(16);
    text(activeZone.question, cx, cy + siteSize / 2 + 45);
  }
}

function mousePressed() {
  for (let z of zones) {
    if (dist(mouseX, mouseY, z.x, z.y) < 70) {
      draggedZone = z;
      return;
    }
  }
}

function mouseReleased() {
  draggedZone = null;
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);

  // Reposition zones proportionally after resizing
  let cx = width / 2;
  let cy = height / 2 - 20;
  let siteSize = min(width, height) * 0.65;
  let orbitRadius = siteSize * 0.32;

  for (let z of zones) {
    z.x = cx + cos(z.angle) * orbitRadius;
    z.y = cy + sin(z.angle) * orbitRadius;
  }
}