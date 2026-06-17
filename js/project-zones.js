let zones = [
  { name: "Collection", question: "What are you gathering and working with?", angle: 0 },
  { name: "Investigation", question: "What are you doing?", angle: Math.PI / 2 },
  { name: "Presentation", question: "How is the project shared?", angle: Math.PI },
  { name: "Archive", question: "What remains after the project is finished?", angle: Math.PI * 1.5 }
];

let draggedZone = null;

function setup() {
  createCanvas(windowWidth, windowHeight);
  textAlign(CENTER, CENTER);
  textFont("Arial");

  let cx = width / 2;
  let cy = height / 2;
  let siteSize = min(width, height) * 0.55;
  let orbitRadius = siteSize * 0.38;

  for (let z of zones) {
    z.x = cx + cos(z.angle) * orbitRadius;
    z.y = cy + sin(z.angle) * orbitRadius;
    z.vx = random(-0.25, 0.25);
    z.vy = random(-0.25, 0.25);
  }
}

function draw() {
  background(250);

  let cx = width / 2;
  let cy = height / 2;
  let siteSize = min(width, height) * 0.55;
  let zoneSize = 130;

  // Site field
  noFill();
  stroke(0, 120);
  strokeWeight(1);
  ellipse(cx, cy, siteSize, siteSize);

  // Site text
  noStroke();
  fill(0);
  textSize(28);
  text("Site", cx, cy - 18);

  textSize(14);
  text("Where is this project situated?", cx, cy + 18);

  let activeZone = null;

  // Update and draw zones
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
      // gentle floating
      z.x += z.vx;
      z.y += z.vy;

      // softly keep zones inside site field
      let fromCentre = dist(cx, cy, z.x, z.y);
      let maxDist = siteSize / 2 - zoneSize / 2;

      if (fromCentre > maxDist) {
        let angle = atan2(z.y - cy, z.x - cx);
        z.x = cx + cos(angle) * maxDist;
        z.y = cy + sin(angle) * maxDist;
        z.vx *= -1;
        z.vy *= -1;
      }

      // very gentle drift variation
      z.vx += random(-0.01, 0.01);
      z.vy += random(-0.01, 0.01);
      z.vx = constrain(z.vx, -0.35, 0.35);
      z.vy = constrain(z.vy, -0.35, 0.35);
    }

    // connection line, shortened so it does not cut through central text
    if (hovering || draggedZone === z) {
      let angle = atan2(z.y - cy, z.x - cx);

      let startX = cx + cos(angle) * 70;
      let startY = cy + sin(angle) * 70;

      let endX = z.x - cos(angle) * (zoneSize / 2);
      let endY = z.y - sin(angle) * (zoneSize / 2);

      stroke(0, 90);
      strokeWeight(1);
      line(startX, startY, endX, endY);
    }

    // zone circle
    noFill();
    stroke(0, hovering || draggedZone === z ? 220 : 140);
    strokeWeight(hovering || draggedZone === z ? 2 : 1);
    ellipse(z.x, z.y, hovering || draggedZone === z ? 145 : zoneSize, hovering || draggedZone === z ? 145 : zoneSize);

    noStroke();
    fill(0);
    textSize(15);
    text(z.name, z.x, z.y);
  }

  // Active prompt below diagram
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
      break;
    }
  }
}

function mouseReleased() {
  draggedZone = null;
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}