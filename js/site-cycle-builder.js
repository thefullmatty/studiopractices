let zones = [
  {
    key: "activity",
    name: "Studio Activity",
    defaultText: "What are you doing?",
    angle: -Math.PI / 2
  },
  {
    key: "documentation",
    name: "Documentation",
    defaultText: "How are you recording it?",
    angle: Math.PI / 6
  },
  {
    key: "journal",
    name: "Journal",
    defaultText: "What was revealed, and what is left over?",
    angle: Math.PI * 5 / 6
  }
];

let cycleText = {
  site: "",
  activity: "",
  documentation: "",
  journal: ""
};

let draggedZone = null;

let sitePrompts = [
  "a place you return to",
  "a material that resists you",
  "a question you cannot answer yet",
  "a memory attached to a site",
  "a process you want to repeat",
  "a surface, threshold, edge or boundary",
  "a problem that keeps reappearing",
  "a site that has changed over time"
];

let activityPrompts = [
  "repeat one action at a different scale",
  "make three fast tests using the same material",
  "translate a drawing into another material",
  "work with your non-dominant hand",
  "slow a familiar process down",
  "make a temporary arrangement and then disturb it",
  "collect, sort, cut, fold, press or trace",
  "perform the same action in three different ways"
];

let documentationPrompts = [
  "photograph each stage from the same position",
  "scan the work before and after it changes",
  "record a short video of the process",
  "make notes on what happened every five minutes",
  "collect fragments, leftovers or failed pieces",
  "draw a map of the process",
  "document the work before, during and after the action",
  "record the sound, movement or rhythm of the activity"
];

let journalPrompts = [
  "What changed when the action was repeated?",
  "What did the material seem to want?",
  "What became visible that you did not expect?",
  "What failed, resisted, or interrupted the process?",
  "What is left over after the activity?",
  "What would you do differently next time?",
  "What question has become sharper?",
  "What does the documentation reveal that the work itself does not?"
];

function setup() {
  let holder = document.getElementById("sketch-holder");
  let canvas = createCanvas(holder.offsetWidth, holder.offsetHeight);
  canvas.parent("sketch-holder");

  textAlign(CENTER, CENTER);
  textFont("Arial");

  positionZones();
}

function draw() {
  clear();

  let cx = width / 2;
  let cy = height / 2 - 10;
  let siteSize = min(width, height) * 0.72;
  let zoneSize = min(width, height) * 0.18;
  zoneSize = constrain(zoneSize, 105, 135);

  let activeText = "";
  let activeName = "";

  // Outer site circle
  noFill();
  stroke(0, 120);
  strokeWeight(1);
  ellipse(cx, cy, siteSize, siteSize);

  // Centre text
  noStroke();
  fill(0);
  textSize(28);
  text("Site", cx, cy - 22);

  textSize(14);
  let siteDisplay = cycleText.site.trim() || "inquiry / question / place";
  drawWrappedText(siteDisplay, cx, cy + 18, min(siteSize * 0.48, 340), 18);

  // Site hover area: hovering near the centre shows site text below
  let hoveringSite = dist(mouseX, mouseY, cx, cy) < 85;
  if (hoveringSite) {
    activeName = "Site";
    activeText = cycleText.site.trim() || "What is your inquiry, question, material, place or idea?";
  }

  for (let z of zones) {
    let d = dist(mouseX, mouseY, z.x, z.y);
    let hovering = d < zoneSize / 2;

    if (hovering || draggedZone === z) {
      activeName = z.name;
      activeText = cycleText[z.key].trim() || z.defaultText;
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

      if (fromCentre > maxDist) {
        let a = atan2(z.y - cy, z.x - cx);
        z.x = cx + cos(a) * maxDist;
        z.y = cy + sin(a) * maxDist;
        z.vx *= -1;
        z.vy *= -1;
      }

      z.vx += random(-0.01, 0.01);
      z.vy += random(-0.01, 0.01);
      z.vx = constrain(z.vx, -0.3, 0.3);
      z.vy = constrain(z.vy, -0.3, 0.3);
    }

    // Relationship line on hover or drag
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
      hovering || draggedZone === z ? zoneSize + 14 : zoneSize,
      hovering || draggedZone === z ? zoneSize + 14 : zoneSize
    );

    // Zone label
    noStroke();
    fill(0);
    textSize(14);

    if (z.name === "Studio Activity") {
      text("Studio\nActivity", z.x, z.y);
    } else {
      text(z.name, z.x, z.y);
    }
  }

  // Hover text below outer circle
  if (activeText) {
    let labelY = cy + siteSize / 2 + 38;

    noStroke();
    fill(0);
    textSize(12);
    text(activeName, cx, labelY - 22);

    textSize(16);
    drawWrappedText(activeText, cx, labelY + 4, min(width * 0.78, 760), 22);
  }
}

function mousePressed() {
  for (let z of zones) {
    if (dist(mouseX, mouseY, z.x, z.y) < 75) {
      draggedZone = z;
      return;
    }
  }
}

function mouseReleased() {
  draggedZone = null;
}

function windowResized() {
  let holder = document.getElementById("sketch-holder");
  resizeCanvas(holder.offsetWidth, holder.offsetHeight);
  positionZones();
}

function positionZones() {
  let cx = width / 2;
  let cy = height / 2 - 10;
  let siteSize = min(width, height) * 0.72;
  let orbitRadius = siteSize * 0.32;

  for (let z of zones) {
    z.x = cx + cos(z.angle) * orbitRadius;
    z.y = cy + sin(z.angle) * orbitRadius;
    z.vx = random(-0.2, 0.2);
    z.vy = random(-0.2, 0.2);
  }
}

function updateCycle() {
  cycleText.site = document.getElementById("siteInput").value;
  cycleText.activity = document.getElementById("activityInput").value;
  cycleText.documentation = document.getElementById("documentationInput").value;
  cycleText.journal = document.getElementById("journalInput").value;
}

function randomiseCycle() {
  document.getElementById("siteInput").value = randomFrom(sitePrompts);
  document.getElementById("activityInput").value = randomFrom(activityPrompts);
  document.getElementById("documentationInput").value = randomFrom(documentationPrompts);
  document.getElementById("journalInput").value = randomFrom(journalPrompts);

  updateCycle();
}

function clearCycle() {
  document.getElementById("siteInput").value = "";
  document.getElementById("activityInput").value = "";
  document.getElementById("documentationInput").value = "";
  document.getElementById("journalInput").value = "";

  cycleText.site = "";
  cycleText.activity = "";
  cycleText.documentation = "";
  cycleText.journal = "";
}

function randomFrom(list) {
  return list[Math.floor(Math.random() * list.length)];
}

function drawWrappedText(str, x, y, maxWidth, lineHeight) {
  let words = str.split(" ");
  let line = "";
  let lines = [];

  for (let i = 0; i < words.length; i++) {
    let testLine = line + words[i] + " ";

    if (textWidth(testLine) > maxWidth && i > 0) {
      lines.push(line.trim());
      line = words[i] + " ";
    } else {
      line = testLine;
    }
  }

  lines.push(line.trim());

  let startY = y - ((lines.length - 1) * lineHeight) / 2;

  for (let i = 0; i < lines.length; i++) {
    text(lines[i], x, startY + i * lineHeight);
  }
}