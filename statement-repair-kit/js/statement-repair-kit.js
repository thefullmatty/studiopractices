// Statement Repair Kit
// Studio Practice artist statement tool

const repairData = {
  Encounter: {
    subtitle: "what is here?",
    prompt: "What is the viewer meeting?",
    entries: [
      {
        avoid: "This artwork is about nature.",
        instead: "The viewer encounters ___, shown through ___, ___, and ___."
      },
      {
        avoid: "This is a painting I made for my project.",
        instead: "This work is a ___ made from/with ___, presented as ___."
      },
      {
        avoid: "My work shows emotions.",
        instead: "The work creates a feeling of ___ through its use of ___, ___, and ___."
      },
      {
        avoid: "This artwork is about my life.",
        instead: "The viewer first meets ___, which draws on personal references to ___ and ___."
      },
      {
        avoid: "I wanted to make something beautiful.",
        instead: "The work invites attention to ___ through qualities of ___, ___, and ___."
      },
      {
        avoid: "This piece represents my ideas.",
        instead: "The work brings together ___ and ___ to create an encounter with ___."
      },
      {
        avoid: "This work is very personal to me.",
        instead: "The work presents ___ in a way that suggests ___ without explaining it directly."
      },
      {
        avoid: "This artwork shows a scene.",
        instead: "The work stages ___, where ___ appears to be happening, shifting, or unfolding."
      },
      {
        avoid: "This piece is abstract.",
        instead: "The work uses abstraction through ___, ___, and ___ to direct attention toward ___."
      },
      {
        avoid: "This installation fills the space.",
        instead: "The viewer moves through/around ___, encountering ___ in relation to ___ and ___."
      }
    ]
  },

  Intention: {
    subtitle: "what is it doing?",
    prompt: "What question, concern, or impulse began the work?",
    entries: [
      {
        avoid: "I wanted to make something interesting.",
        instead: "I wanted to investigate how ___ changes the way we understand ___."
      },
      {
        avoid: "I chose this topic because I like it.",
        instead: "The work began from my interest in ___, especially its connection to ___."
      },
      {
        avoid: "My work is about identity.",
        instead: "The work asks how identity is shaped by ___, ___, and ___."
      },
      {
        avoid: "This artwork shows my journey.",
        instead: "The process shifted from ___ to ___, revealing a change in how I understood ___."
      },
      {
        avoid: "I wanted to express myself.",
        instead: "I used the work to test how ___ could communicate ___ without relying on ___."
      },
      {
        avoid: "I wanted to explore a theme.",
        instead: "The work explores the tension between ___ and ___."
      },
      {
        avoid: "This project is about connection.",
        instead: "The work investigates how connection is formed, interrupted, or remembered through ___."
      },
      {
        avoid: "I wanted to raise awareness.",
        instead: "The work draws attention to ___ by focusing on ___ rather than ___."
      },
      {
        avoid: "I wanted to tell a story.",
        instead: "The work traces a movement from ___ to ___, suggesting a story of ___."
      },
      {
        avoid: "I wanted to make people think.",
        instead: "The work poses a question about ___ by placing ___ in relation to ___."
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
      },
      {
        avoid: "I tried different techniques.",
        instead: "I moved between ___ and ___ to find a method that could hold ___."
      },
      {
        avoid: "The work took a long time to make.",
        instead: "The slow process of ___ allowed ___ to accumulate, change, or become visible."
      },
      {
        avoid: "I used found materials.",
        instead: "The use of found materials brings traces of ___ into the work."
      },
      {
        avoid: "I documented my process.",
        instead: "Documentation became part of the work by showing ___, ___, and ___."
      },
      {
        avoid: "I changed my mind during the project.",
        instead: "A shift from ___ to ___ changed the direction of the work and sharpened my focus on ___."
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
        instead: "The work emerges from memories of ___, using ___ to connect ___ and ___."
      },
      {
        avoid: "This work is inspired by my childhood.",
        instead: "The work returns to ___ as a way of thinking about ___ from the present."
      },
      {
        avoid: "This work connects to place.",
        instead: "The work is situated in relation to ___, where ___ shapes the way ___ is experienced."
      },
      {
        avoid: "I researched this topic.",
        instead: "Research into ___ informed my decisions about ___, ___, and ___."
      },
      {
        avoid: "This work is contemporary.",
        instead: "The work sits within contemporary conversations about ___, particularly through its use of ___."
      },
      {
        avoid: "This work is influenced by history.",
        instead: "The work draws on histories of ___ to reconsider ___ in the present."
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
      },
      {
        avoid: "I want the audience to know what I went through.",
        instead: "The work does not explain the full experience, but leaves traces of ___ for the viewer to encounter."
      },
      {
        avoid: "I hope my work inspires people.",
        instead: "The work opens a space for viewers to think about their own relationship to ___."
      },
      {
        avoid: "I want people to see the meaning.",
        instead: "The meaning of the work emerges through the relationship between ___, ___, and ___."
      },
      {
        avoid: "This work is open to interpretation.",
        instead: "The work leaves room for different readings by holding ___ and ___ in tension."
      },
      {
        avoid: "I am proud of the final result.",
        instead: "The completed work shows a shift in my practice from ___ toward ___."
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
  dom.folderLayers = document.querySelectorAll(".layer-folder[data-folder]");
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
    button.setAttribute("aria-label", `Open ${sectionName} repair tab`);

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
    const isActive = button.textContent === currentSection;
    button.classList.toggle("active", isActive);
    button.setAttribute("aria-pressed", isActive ? "true" : "false");
  });

  dom.folderLayers.forEach((layer) => {
    const isActive = layer.dataset.folder === currentSection;
    layer.classList.toggle("active-folder", isActive);
    layer.setAttribute("aria-hidden", "true");
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

  if (!output.trim()) {
    setStatus("There is no draft text to copy yet.");
    return;
  }

  // Method 1: modern clipboard API
  // Works best on HTTPS pages, but can fail inside some iframe/Cargo contexts.
  try {
    if (navigator.clipboard && window.isSecureContext) {
      await navigator.clipboard.writeText(output);
      setStatus("Draft copied to clipboard.");
      return;
    }
  } catch (error) {
    console.warn("Modern clipboard copy failed, trying fallback method.", error);
  }

  // Method 2: fallback copy using a temporary textarea
  try {
    const copied = fallbackCopyText(output);

    if (copied) {
      setStatus("Draft copied to clipboard.");
      return;
    }

    throw new Error("Fallback copy returned false.");
  } catch (error) {
    console.warn("Fallback copy failed.", error);
    setStatus("Copy may be blocked in this browser or iframe. Use Download .txt instead.");
  }
}

function fallbackCopyText(text) {
  const tempTextArea = document.createElement("textarea");

  tempTextArea.value = text;
  tempTextArea.setAttribute("readonly", "");

  // Keep it visible enough for browser selection, but outside the viewport.
  tempTextArea.style.position = "fixed";
  tempTextArea.style.top = "0";
  tempTextArea.style.left = "0";
  tempTextArea.style.width = "1px";
  tempTextArea.style.height = "1px";
  tempTextArea.style.padding = "0";
  tempTextArea.style.border = "0";
  tempTextArea.style.outline = "0";
  tempTextArea.style.boxShadow = "none";
  tempTextArea.style.background = "transparent";
  tempTextArea.style.opacity = "0";

  document.body.appendChild(tempTextArea);

  tempTextArea.focus();
  tempTextArea.select();
  tempTextArea.setSelectionRange(0, tempTextArea.value.length);

  let successful = false;

  try {
    successful = document.execCommand("copy");
  } finally {
    document.body.removeChild(tempTextArea);
  }

  return successful;
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