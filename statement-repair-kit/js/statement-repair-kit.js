// Statement Repair Kit
// Studio Practice artist statement tool

const repairData = {
  Encounter: {
    subtitle: "what is here?",
    prompt: "What is the viewer meeting?",
    entries: [
      {
        avoid: "This artwork is about nature.",
        instead: "This work presents ___ through ___, drawing attention to ___."
      },
      {
        avoid: "This is a painting I made for my project.",
        instead: "This work is a ___ that uses ___, ___, and ___ to create a sense of ___."
      },
      {
        avoid: "My work shows emotions.",
        instead: "The work uses ___, ___, and ___ to create a feeling of ___."
      },
      {
        avoid: "This artwork is about my life.",
        instead: "The viewer encounters ___, shaped by personal references to ___ and ___."
      },
      {
        avoid: "I wanted to make something beautiful.",
        instead: "The work invites the viewer to notice ___ through its use of ___, ___, and ___."
      }
    ]
  },

  Intention: {
    subtitle: "what is it doing?",
    prompt: "What question, concern, or impulse began the work?",
    entries: [
      {
        avoid: "I wanted to make something interesting.",
        instead: "I wanted to investigate how ___ can change the way we understand ___."
      },
      {
        avoid: "I chose this topic because I like it.",
        instead: "The work began from my interest in ___, especially the way it connects to ___."
      },
      {
        avoid: "My work is about identity.",
        instead: "This work explores how identity can be shaped by ___, ___, and ___."
      },
      {
        avoid: "This artwork shows my journey.",
        instead: "The process shifted from ___ to ___, revealing a change in how I understood ___."
      },
      {
        avoid: "I wanted to express myself.",
        instead: "I used this work to test how ___ could communicate feelings of ___ without relying on ___."
      }
    ]
  },

  Process: {
    subtitle: "how did it become this?",
    prompt: "What materials, methods, experiments, or decisions shaped the work?",
    entries: [
      {
        avoid: "I experimented a lot.",
        instead: "I tested ___, ___, and ___ before deciding to focus on ___."
      },
      {
        avoid: "I used paint and collage.",
        instead: "I built the surface through layers of ___, ___, and ___, allowing ___ to remain visible."
      },
      {
        avoid: "I made mistakes but fixed them.",
        instead: "Unexpected changes in ___ led me to emphasise ___ rather than ___."
      },
      {
        avoid: "I just followed my ideas as I went.",
        instead: "The work developed through a process of ___, where each decision responded to ___."
      },
      {
        avoid: "I used these materials because they looked good.",
        instead: "The materials matter because ___ suggests ___, while ___ creates a sense of ___."
      }
    ]
  },

  Context: {
    subtitle: "where does it sit?",
    prompt: "What does the work connect to?",
    entries: [
      {
        avoid: "My work is inspired by other artists.",
        instead: "This work connects to artists who use ___ to explore ___, especially ___."
      },
      {
        avoid: "It is about culture.",
        instead: "The work draws on ___, ___, and ___ to reflect on cultural experiences of ___."
      },
      {
        avoid: "It relates to the environment.",
        instead: "The work responds to ___ by using ___ to consider ideas of ___ and ___."
      },
      {
        avoid: "My work is about society.",
        instead: "This work examines how ___ affects ___ within the context of ___."
      },
      {
        avoid: "It comes from my memories.",
        instead: "The work emerges from memories of ___, using ___ to create a connection between ___ and ___."
      }
    ]
  },

  Reflection: {
    subtitle: "what does it open up?",
    prompt: "What might the audience notice, feel, question, or carry away?",
    entries: [
      {
        avoid: "I want people to like my work.",
        instead: "I hope the work invites viewers to spend time with ___ and notice ___."
      },
      {
        avoid: "I want the audience to understand my message.",
        instead: "Rather than offering one clear message, the work asks viewers to consider ___."
      },
      {
        avoid: "This project taught me a lot.",
        instead: "Through making the work, I began to understand ___ as ___."
      },
      {
        avoid: "I want people to feel something.",
        instead: "The work invites an emotional response through ___, ___, and ___."
      },
      {
        avoid: "I hope people think differently.",
        instead: "The work asks viewers to reconsider ___ by paying attention to ___."
      }
    ]
  }
};

const sectionOrder = [
  "Encounter",
  "Intention",
  "Process",
  "Context",
  "Reflection"
];

let currentSection = "Encounter";

const draftText = {
  Encounter: "",
  Intention: "",
  Process: "",
  Context: "",
  Reflection: ""
};

const dom = {};

document.addEventListener("DOMContentLoaded", initialiseStatementRepairKit);

function initialiseStatementRepairKit() {
  dom.sectionTabs = document.getElementById("sectionTabs");
  dom.sectionTitle = document.getElementById("sectionTitle");
  dom.sectionSubtitle = document.getElementById("sectionSubtitle");
  dom.sectionPrompt = document.getElementById("sectionPrompt");
  dom.avoidSelect = document.getElementById("avoidSelect");
  dom.tryText = document.getElementById("tryText");
  dom.studentSentence = document.getElementById("studentSentence");
  dom.addButton = document.getElementById("addButton");
  dom.copyButton = document.getElementById("copyButton");
  dom.downloadButton = document.getElementById("downloadButton");
  dom.clearSectionButton = document.getElementById("clearSectionButton");
  dom.clearAllButton = document.getElementById("clearAllButton");
  dom.statusMessage = document.getElementById("statusMessage");
  dom.draftOutput = document.getElementById("draftOutput");

  createSectionTabs();
  loadSavedDraft();

  dom.avoidSelect.addEventListener("change", updateTryInstead);
  dom.addButton.addEventListener("click", addCurrentSentenceToDraft);
  dom.copyButton.addEventListener("click", copyDraftText);
  dom.downloadButton.addEventListener("click", downloadDraftText);
  dom.clearSectionButton.addEventListener("click", clearCurrentSection);
  dom.clearAllButton.addEventListener("click", clearAllDraftText);

  updateInterface();
  renderDraft();
}

function createSectionTabs() {
  dom.sectionTabs.innerHTML = "";

  sectionOrder.forEach((sectionName) => {
    const button = document.createElement("button");
    button.className = "section-tab";
    button.type = "button";
    button.textContent = sectionName;

    button.addEventListener("click", () => {
      currentSection = sectionName;
      dom.studentSentence.value = "";
      updateInterface();
      setStatus("");
    });

    dom.sectionTabs.appendChild(button);
  });
}

function updateInterface() {
  const section = repairData[currentSection];

  dom.sectionTitle.textContent = currentSection;
  dom.sectionSubtitle.textContent = section.subtitle;
  dom.sectionPrompt.textContent = section.prompt;

  updateActiveTab();
  populateAvoidDropdown();
  updateTryInstead();
}

function updateActiveTab() {
  const buttons = dom.sectionTabs.querySelectorAll(".section-tab");

  buttons.forEach((button) => {
    button.classList.toggle("active", button.textContent === currentSection);
  });
}

function populateAvoidDropdown() {
  const entries = repairData[currentSection].entries;

  dom.avoidSelect.innerHTML = "";

  entries.forEach((entry, index) => {
    const option = document.createElement("option");
    option.value = index;
    option.textContent = entry.avoid;
    dom.avoidSelect.appendChild(option);
  });
}

function updateTryInstead() {
  const entryIndex = Number(dom.avoidSelect.value);
  const entry = repairData[currentSection].entries[entryIndex];

  dom.tryText.textContent = entry.instead;
}

function addCurrentSentenceToDraft() {
  const sentence = dom.studentSentence.value.trim();

  if (!sentence) {
    setStatus("Write your version first, then add it to the draft.");
    return;
  }

  draftText[currentSection] = sentence;

  saveDraft();
  renderDraft();

  setStatus(`${currentSection} sentence added to your draft.`);
}

function renderDraft() {
  dom.draftOutput.innerHTML = "";

  sectionOrder.forEach((sectionName) => {
    const wrapper = document.createElement("div");
    wrapper.className = "draft-section";

    const heading = document.createElement("div");
    heading.className = "draft-heading";
    heading.textContent = sectionName;

    const text = document.createElement("div");
    text.className = "draft-text";

    if (draftText[sectionName]) {
      text.textContent = draftText[sectionName];
    } else {
      text.textContent = "No sentence added yet.";
      text.classList.add("empty");
    }

    wrapper.appendChild(heading);
    wrapper.appendChild(text);
    dom.draftOutput.appendChild(wrapper);
  });
}

function buildDraftOutput() {
  let output = "Statement Repair Kit\n";
  output += "Draft Artist Statement\n\n";

  sectionOrder.forEach((sectionName) => {
    output += sectionName + "\n";
    output += "--------------------\n";

    if (draftText[sectionName]) {
      output += draftText[sectionName].trim() + "\n\n";
    } else {
      output += "[No sentence added yet.]\n\n";
    }
  });

  return output;
}

async function copyDraftText() {
  const output = buildDraftOutput();

  try {
    if (navigator.clipboard && window.isSecureContext) {
      await navigator.clipboard.writeText(output);
      setStatus("Draft copied to clipboard.");
      return;
    }

    fallbackCopyText(output);
    setStatus("Draft copied to clipboard.");
  } catch (error) {
    setStatus("Copy did not work in this browser or iframe. Use Download .txt instead.");
  }
}

function fallbackCopyText(text) {
  const tempTextArea = document.createElement("textarea");
  tempTextArea.value = text;

  tempTextArea.setAttribute("readonly", "");
  tempTextArea.style.position = "fixed";
  tempTextArea.style.top = "-9999px";
  tempTextArea.style.left = "-9999px";

  document.body.appendChild(tempTextArea);
  tempTextArea.select();

  const success = document.execCommand("copy");
  document.body.removeChild(tempTextArea);

  if (!success) {
    throw new Error("Fallback copy failed.");
  }
}

function downloadDraftText() {
  const output = buildDraftOutput();

  const blob = new Blob([output], { type: "text/plain;charset=utf-8" });
  const url = URL.createObjectURL(blob);

  const link = document.createElement("a");
  link.href = url;
  link.download = "statement-repair-kit-draft.txt";

  document.body.appendChild(link);
  link.click();
  document.body.removeChild(link);

  URL.revokeObjectURL(url);

  setStatus("Draft downloaded as a text file.");
}

function clearCurrentSection() {
  draftText[currentSection] = "";

  saveDraft();
  renderDraft();

  setStatus(`${currentSection} sentence cleared.`);
}

function clearAllDraftText() {
  const confirmClear = window.confirm("Clear all draft sentences? This cannot be undone.");

  if (!confirmClear) {
    return;
  }

  sectionOrder.forEach((sectionName) => {
    draftText[sectionName] = "";
  });

  dom.studentSentence.value = "";

  saveDraft();
  renderDraft();

  setStatus("All draft sentences cleared.");
}

function saveDraft() {
  localStorage.setItem("statementRepairKitDraft", JSON.stringify(draftText));
}

function loadSavedDraft() {
  const saved = localStorage.getItem("statementRepairKitDraft");

  if (!saved) {
    return;
  }

  try {
    const parsed = JSON.parse(saved);

    sectionOrder.forEach((sectionName) => {
      if (typeof parsed[sectionName] === "string") {
        draftText[sectionName] = parsed[sectionName];
      }
    });
  } catch (error) {
    localStorage.removeItem("statementRepairKitDraft");
  }
}

function setStatus(message) {
  dom.statusMessage.textContent = message;
}