const PROMPTS = {
  Themes: [
    {
      q: "What are you drawn to, or what do you keep returning to?",
      reflections: [
        "Why do you think this keeps coming back?",
        "What would happen if you tried to avoid it?",
        "What does this repetition protect or reveal?"
      ]
    },
    {
      q: "What do you notice that others might overlook?",
      reflections: [
        "Why does this feel worth paying attention to?",
        "Who else might notice this?",
        "What changes when this is made visible?"
      ]
    },
    {
      q: "What feels unresolved, strange, difficult, beautiful, or important?",
      reflections: [
        "What makes this feel unresolved or important?",
        "What part of this do you not yet understand?",
        "What would make this more complicated?"
      ]
    },
    {
      q: "What do you want to understand better through making?",
      reflections: [
        "How might making help you think through this?",
        "What kind of answer would be too simple?",
        "What might remain unknowable?"
      ]
    },
    {
      q: "What stories, memories, places, bodies, objects, or images keep appearing?",
      reflections: [
        "What connects these things together?",
        "What is missing from this list?",
        "What would not seem to belong, but does?"
      ]
    },
    {
      q: "What tensions or contradictions interest you?",
      reflections: [
        "How does this tension appear in your work?",
        "What happens if both sides of the contradiction are true?",
        "Where does the work refuse to settle?"
      ]
    },
    {
      q: "What personal, social, cultural, political, or environmental questions sit behind your work?",
      reflections: [
        "Why does this matter beyond the work itself?",
        "Who or what is affected by this question?",
        "What structures, histories, or systems might be involved?"
      ]
    }
  ],
  Materials: [
    {
      q: "What materials, objects, images, sounds, surfaces, or substances are you drawn to using?",
      reflections: [
        "What attracts you to these materials?",
        "What do they remind you of?",
        "What do they do before you do anything to them?",
        "What do these materials already carry?",
        "What histories, associations, or values come with them?",
        "What might the material be hiding?",
        "Who has touched, used, made, discarded, or valued it before?"
      ]
    },
    {
      q: "What material qualities interest you?",
      reflections: [
        "How do these qualities affect the feeling of your work?",
        "What do you like about the material before it becomes an artwork?",
        "What does the material want to do?",
        "What happens when it fails, breaks, stains, fades, or resists?",
        "What does it offer in its ordinary state?"
      ]
    },
    {
      q: "What materials feel connected to your memories, experiences, interests, or environment?",
      reflections: [
        "How does that connection shape the work?",
        "Is the connection obvious or private?",
        "What might someone else read into this material?"
      ]
    },
    {
      q: "What materials allow you to communicate what words alone cannot?",
      reflections: [
        "What meanings does it generate?",
        "What does the material say badly, awkwardly, or indirectly?",
        "What can only be felt rather than explained?"
      ]
    }
  ],
  Process: [
    {
      q: "What actions do you keep repeating in the studio?",
      reflections: [
        "Why might these repeated actions matter?",
        "Are they habits, rituals, tests, comforts, or compulsions?",
        "What do they produce besides the artwork?"
      ]
    },
    {
      q: "What do you do first when you begin making?",
      reflections: [
        "What does this starting point reveal about how you work?",
        "What would happen if you began somewhere else?",
        "What are you trying to secure before the work begins?"
      ]
    },
    {
      q: "What do you do when you do not know what to do next?",
      reflections: [
        "How does uncertainty shape your process?",
        "What does getting stuck make possible?",
        "What small action helps the work continue?"
      ]
    },
    {
      q: "What part of making feels most important: gathering, testing, transforming, composing, documenting, displaying, or revising?",
      reflections: [
        "Why does this stage matter most?",
        "What stage do you usually skip or rush?",
        "What would happen if the process became the artwork?"
      ]
    },
    {
      q: "What kind of labour does the work ask from you?",
      reflections: [
        "How does that labour shape the meaning of the work?",
        "Is the labour visible or hidden?",
        "Is the labour careful, exhausting, repetitive, playful, technical, emotional, or bodily?"
      ]
    },
    {
      q: "What accidents, habits, rules, rituals, or constraints shape the way you make?",
      reflections: [
        "How do these limits or repetitions influence the work?",
        "What would happen if you made the rule stricter?",
        "What would happen if you broke the rule or changed the habit?"
      ]
    }
  ],
  Technique: [
    {
      q: "What tools, skills, technologies, or methods are you using or wanting to learn?",
      reflections: [
        "Why are these techniques useful?",
        "What do they make possible, impossible, easier, or stranger?",
        "What do you not yet know how to do?"
      ]
    },
    {
      q: "How do your chosen techniques shape what the work can become?",
      reflections: [
        "How does the method affect the form, meaning, or encounter?",
        "What would change if you used a completely different technique?",
        "What does the technique decide for you?"
      ]
    },
    {
      q: "What does the technique make possible that another method would not?",
      reflections: [
        "What is specific to this way of working?",
        "What does this technique exaggerate, flatten, slow down, repeat, or transform?",
        "Why this method and not another?",
        "What kind of attention does the technique demand?"
      ]
    },
    {
      q: "What technical decisions become part of the meaning?",
      reflections: ["What does the technique make the viewer notice?"]
    },
    {
      q: "What traditions or histories might be connected to this technique?",
      reflections: [
        "How might the work sit in relation to those histories?",
        "Are you continuing, resisting, misusing, or updating that tradition?",
        "Who is usually associated with this technique?"
      ]
    },
    {
      q: "What do you want to get better at?",
      reflections: [
        "Why does that matter for the work?",
        "How might developing this skill open up the project?"
      ]
    }
  ]
};

const TERM_BANKS = {
  "Themes": {
    "Body & identity": [
      "body",
      "self-image",
      "gender",
      "gender politics",
      "feminism",
      "queer identity",
      "trans identity",
      "sexuality",
      "masculinity",
      "disability",
      "neurodiversity",
      "fat politics",
      "bodily autonomy",
      "portraiture",
      "masking",
      "embodiment",
      "vulnerability",
      "transformation",
      "intimacy",
      "persona",
      "visibility",
      "alter ego",
      "representation"
    ],
    "Memory & archive": [
      "memory",
      "archive",
      "trace",
      "family history",
      "inheritance",
      "nostalgia",
      "grief",
      "absence",
      "preservation",
      "documentation",
      "testimony",
      "remembrance",
      "collective memory",
      "cultural memory",
      "counter-archive",
      "oral history",
      "erasure",
      "silence",
      "loss",
      "witness",
      "evidence",
      "memorial",
      "intergenerational memory"
    ],
    "Place & environment": [
      "place",
      "landscape",
      "ecology",
      "climate",
      "climate justice",
      "Country",
      "land rights",
      "Indigenous sovereignty",
      "First Nations knowledge",
      "place-based knowledge",
      "home",
      "migration",
      "diaspora",
      "exile",
      "displacement",
      "border politics",
      "refugee experience",
      "homeland",
      "water rights",
      "extraction",
      "pollution",
      "habitat",
      "site",
      "occupation"
    ],
    "Power & society": [
      "power",
      "protest",
      "resistance",
      "activism",
      "surveillance",
      "policing",
      "incarceration",
      "institution",
      "institutional critique",
      "colonialism",
      "settler colonialism",
      "decolonisation",
      "race",
      "racism",
      "anti-racism",
      "Black studies",
      "Blackness",
      "whiteness",
      "critical race theory",
      "censorship",
      "class",
      "capitalism",
      "labour politics",
      "law",
      "violence",
      "public space",
      "authority"
    ],
    "Care & relation": [
      "care",
      "kinship",
      "community",
      "friendship",
      "repair",
      "support",
      "dependency",
      "hospitality",
      "tenderness",
      "responsibility",
      "reciprocity",
      "listening",
      "mutual aid",
      "community care",
      "access",
      "consent",
      "accountability",
      "grief work",
      "social practice",
      "participation",
      "collective responsibility",
      "ethics",
      "interdependence"
    ],
    "Belief & ritual": [
      "ritual",
      "spirituality",
      "myth",
      "prayer",
      "ceremony",
      "sacred image",
      "iconoclasm",
      "religious trauma",
      "spiritual practice",
      "taboo",
      "magic",
      "superstition",
      "repetition",
      "devotion",
      "mythology",
      "moral panic",
      "cult",
      "secular ritual",
      "belief systems",
      "ancestral knowledge",
      "transformation",
      "offering",
      "sacred space"
    ],
    "Language & image": [
      "text",
      "translation",
      "storytelling",
      "symbol",
      "sign",
      "code",
      "misreading",
      "instruction",
      "voice",
      "naming",
      "caption",
      "illegibility",
      "representation",
      "misrepresentation",
      "stereotype",
      "testimony",
      "erasure",
      "silence",
      "visibility",
      "refusal",
      "counter-narrative",
      "image circulation",
      "authorship",
      "speaking back"
    ],
    "Technology & media": [
      "screen",
      "internet",
      "gaming",
      "social media",
      "AI",
      "camera",
      "algorithm",
      "glitch",
      "data",
      "broadcast",
      "interface",
      "network",
      "digital surveillance",
      "algorithmic bias",
      "data colonialism",
      "platform culture",
      "online identity",
      "misinformation",
      "attention economy",
      "AI ethics",
      "digital labour",
      "meme culture",
      "screen politics"
    ],
    "Time & change": [
      "decay",
      "growth",
      "duration",
      "erosion",
      "ruin",
      "weathering",
      "ageing",
      "transformation",
      "cycle",
      "delay",
      "accumulation",
      "impermanence",
      "futurity",
      "history",
      "return",
      "survival",
      "collapse",
      "renewal",
      "repetition",
      "aftermath",
      "legacy",
      "inheritance",
      "maintenance",
      "entropy"
    ],
    "Feeling & atmosphere": [
      "joy",
      "anxiety",
      "boredom",
      "desire",
      "shame",
      "fear",
      "melancholy",
      "humour",
      "suspense",
      "awkwardness",
      "wonder",
      "tension",
      "grief",
      "anger",
      "tenderness",
      "alienation",
      "intimacy",
      "discomfort",
      "hope",
      "dread",
      "longing",
      "exhaustion",
      "pleasure",
      "uncertainty"
    ],
    "Labour & everyday life": [
      "work",
      "routine",
      "domestic labour",
      "shopping",
      "transport",
      "food",
      "cleaning",
      "office",
      "service",
      "repetition",
      "leisure",
      "maintenance",
      "labour politics",
      "digital labour",
      "unpaid labour",
      "care work",
      "consumer culture",
      "class",
      "precarity",
      "productivity",
      "bureaucracy",
      "convenience",
      "exhaustion",
      "survival",
      "ordinary life"
    ],
    "Fantasy & worldbuilding": [
      "fantasy",
      "worldbuilding",
      "character",
      "myth",
      "folklore",
      "science fiction",
      "horror",
      "anime",
      "gaming",
      "cosplay",
      "dream",
      "speculative future",
      "mythology",
      "fan culture",
      "role-play",
      "avatar",
      "monster",
      "magic",
      "alternative history",
      "utopia",
      "dystopia",
      "world-making",
      "escapism",
      "imaginary place",
      "transformation"
    ]
  },
  "Materials": {
    "Drawing & mark-making": [
      "graphite",
      "charcoal",
      "ink",
      "pencil",
      "marker",
      "line",
      "gesture",
      "notation",
      "scribble",
      "stain",
      "rubbing",
      "diagram",
      "contour",
      "pressure",
      "erasure",
      "smudge",
      "hand-drawn mark",
      "automatic mark",
      "annotation",
      "sketch",
      "diagrammatic image",
      "trace"
    ],
    "Painting & surface": [
      "paint",
      "pigment",
      "canvas",
      "colour",
      "texture",
      "glaze",
      "wash",
      "ground",
      "skin",
      "layer",
      "stain",
      "sheen",
      "opacity",
      "transparency",
      "brushstroke",
      "impasto",
      "flatness",
      "surface tension",
      "underpainting",
      "colour field",
      "painted object",
      "mural surface",
      "material surface"
    ],
    "Paper & print": [
      "paper",
      "cardboard",
      "book",
      "zine",
      "poster",
      "photocopy",
      "risograph",
      "screen print",
      "etching",
      "collage",
      "label",
      "document",
      "publication",
      "edition",
      "multiple",
      "page",
      "fold",
      "binding",
      "newsprint",
      "archive paper",
      "printed matter",
      "flyer",
      "handout",
      "certificate"
    ],
    "Fibre & textile": [
      "fabric",
      "thread",
      "cloth",
      "garment",
      "yarn",
      "rope",
      "netting",
      "felt",
      "embroidery",
      "weaving",
      "seam",
      "soft sculpture",
      "stitch",
      "mending",
      "quilting",
      "knotting",
      "fibre",
      "textile repair",
      "inherited cloth",
      "domestic textile",
      "wearable object",
      "banner",
      "flag",
      "tapestry"
    ],
    "Industrial & structural": [
      "wood",
      "metal",
      "concrete",
      "plaster",
      "glass",
      "mirror",
      "steel",
      "timber",
      "frame",
      "scaffold",
      "hardware",
      "architecture",
      "beam",
      "support",
      "structure",
      "module",
      "fixture",
      "bracket",
      "hinge",
      "grid",
      "wall",
      "plinth",
      "infrastructure",
      "built environment"
    ],
    "Clay & earth": [
      "clay",
      "ceramic",
      "earth",
      "mud",
      "vessel",
      "glaze",
      "terracotta",
      "porcelain",
      "firing",
      "brick",
      "mineral",
      "dust",
      "slip",
      "kiln",
      "hand-built form",
      "shard",
      "tile",
      "sediment",
      "ground",
      "soil body",
      "fired surface",
      "unfired clay",
      "earthen material",
      "geological matter"
    ],
    "Found & everyday objects": [
      "found object",
      "packaging",
      "furniture",
      "toy",
      "tool",
      "receipt",
      "container",
      "clothing",
      "domestic object",
      "souvenir",
      "rubbish",
      "appliance",
      "bag",
      "bottle",
      "box",
      "utensil",
      "chair",
      "shelf",
      "sign",
      "wrapper",
      "discarded object",
      "personal object",
      "borrowed object",
      "everyday residue"
    ],
    "Lens & screen": [
      "photograph",
      "video",
      "projection",
      "phone footage",
      "screenshot",
      "film still",
      "animation",
      "camera",
      "monitor",
      "slide",
      "scan",
      "image file",
      "lens",
      "frame",
      "exposure",
      "edit",
      "moving image",
      "screen capture",
      "digital photograph",
      "archival photograph",
      "found image",
      "display screen",
      "visual record"
    ],
    "Sound & voice": [
      "sound",
      "voice",
      "song",
      "recording",
      "noise",
      "microphone",
      "speaker",
      "echo",
      "silence",
      "speech",
      "breath",
      "listening",
      "field recording",
      "spoken word",
      "chant",
      "hum",
      "whisper",
      "amplification",
      "audio loop",
      "oral testimony",
      "soundscape",
      "vibration",
      "resonance"
    ],
    "Organic & environmental": [
      "soil",
      "water",
      "plants",
      "ash",
      "salt",
      "hair",
      "food",
      "wax",
      "smoke",
      "shell",
      "seed",
      "bone",
      "leaf",
      "bark",
      "root",
      "fibre",
      "animal trace",
      "weathered matter",
      "organic residue",
      "growth",
      "decay",
      "compost",
      "natural pigment",
      "living material"
    ],
    "Synthetic & manufactured": [
      "plastic",
      "vinyl",
      "resin",
      "rubber",
      "acrylic",
      "foam",
      "packaging",
      "silicone",
      "laminate",
      "artificial colour",
      "disposable material",
      "manufactured surface",
      "synthetic skin",
      "industrial coating",
      "polymer",
      "Perspex",
      "adhesive",
      "tape",
      "bubble wrap",
      "nylon",
      "polyester",
      "imitation material",
      "mass-produced object"
    ],
    "Digital & coded": [
      "code",
      "data",
      "interface",
      "website",
      "game engine",
      "AI image",
      "3D model",
      "sensor",
      "map",
      "file",
      "pixel",
      "database",
      "algorithm",
      "glitch",
      "scan",
      "render",
      "digital archive",
      "network",
      "hyperlink",
      "metadata",
      "screen space",
      "interactive system",
      "generative image"
    ]
  },
  "Process": {
    "Collect & archive": [
      "collecting",
      "sorting",
      "cataloguing",
      "preserving",
      "storing",
      "indexing",
      "classifying",
      "gathering",
      "accumulating",
      "labelling",
      "documenting",
      "inventory",
      "selecting",
      "saving",
      "ordering",
      "filing",
      "grouping",
      "recording",
      "keeping",
      "evidence",
      "archive-building",
      "collection logic",
      "material research"
    ],
    "Cut & remove": [
      "cutting",
      "tearing",
      "burning",
      "erasing",
      "sanding",
      "deleting",
      "obscuring",
      "scratching",
      "scraping",
      "censoring",
      "editing out",
      "extraction",
      "excision",
      "removal",
      "damage",
      "subtraction",
      "fragmenting",
      "piercing",
      "trimming",
      "cropping",
      "breaking apart",
      "concealment",
      "reduction"
    ],
    "Join & repair": [
      "stitching",
      "gluing",
      "binding",
      "wrapping",
      "mending",
      "patching",
      "casting",
      "moulding",
      "assembling",
      "fastening",
      "suturing",
      "reconstruction",
      "joining",
      "welding",
      "taping",
      "tying",
      "weaving together",
      "connecting",
      "holding",
      "support",
      "repair",
      "restoration",
      "provisional fix"
    ],
    "Layer & transform": [
      "layering",
      "folding",
      "staining",
      "soaking",
      "enlarging",
      "shrinking",
      "distorting",
      "translating",
      "remixing",
      "mutating",
      "compressing",
      "covering",
      "coating",
      "building up",
      "changing scale",
      "filtering",
      "reworking",
      "adapting",
      "reformatting",
      "masking",
      "overprinting",
      "transformation",
      "alteration"
    ],
    "Repeat & sequence": [
      "repetition",
      "rhythm",
      "pattern",
      "seriality",
      "looping",
      "counting",
      "copying",
      "variation",
      "iteration",
      "sequence",
      "grid",
      "recurrence",
      "routine",
      "rehearsal",
      "echo",
      "duplication",
      "return",
      "modularity",
      "accumulation",
      "multiples",
      "edition",
      "repeated gesture",
      "repeated action"
    ],
    "Observe & document": [
      "observing",
      "recording",
      "photographing",
      "filming",
      "note-taking",
      "measuring",
      "witnessing",
      "interviewing",
      "describing",
      "tracking",
      "scanning",
      "fieldwork",
      "looking",
      "listening",
      "collecting evidence",
      "reporting",
      "journaling",
      "documenting change",
      "following",
      "watching",
      "studying",
      "close attention"
    ],
    "Map & trace": [
      "mapping",
      "tracing",
      "route",
      "diagram",
      "footprint",
      "outline",
      "path",
      "border",
      "site-plan",
      "navigation",
      "shadow",
      "residue",
      "contour",
      "index",
      "mark",
      "record",
      "cartography",
      "memory map",
      "movement path",
      "spatial relation",
      "boundary",
      "territory",
      "location"
    ],
    "Move & perform": [
      "performing",
      "walking",
      "carrying",
      "wearing",
      "listening",
      "speaking",
      "gesture",
      "improvising",
      "instructing",
      "rehearsal",
      "action",
      "duration",
      "movement",
      "embodiment",
      "role-play",
      "activation",
      "public action",
      "private action",
      "ritual action",
      "score",
      "participation",
      "live encounter"
    ],
    "Arrange & display": [
      "hanging",
      "stacking",
      "suspending",
      "balancing",
      "placing",
      "staging",
      "sequencing",
      "lighting",
      "grouping",
      "spacing",
      "framing",
      "installing",
      "composing",
      "positioning",
      "presenting",
      "organising",
      "curating",
      "ordering",
      "aligning",
      "isolating",
      "clustering",
      "display system",
      "installation logic"
    ],
    "Exchange & collaborate": [
      "collaborating",
      "sharing",
      "borrowing",
      "gifting",
      "responding",
      "interviewing",
      "instructing",
      "publishing",
      "hosting",
      "conversation",
      "participation",
      "co-making",
      "dialogue",
      "exchange",
      "negotiation",
      "invitation",
      "collective action",
      "workshop",
      "correspondence",
      "social practice",
      "reciprocity",
      "contribution"
    ],
    "Distort & disrupt": [
      "distortion",
      "interruption",
      "glitch",
      "fragmentation",
      "rupture",
      "contradiction",
      "refusal",
      "sabotage",
      "displacement",
      "misalignment",
      "noise",
      "interference",
      "disruption",
      "breakdown",
      "failure",
      "collision",
      "instability",
      "interruption",
      "scrambling",
      "misreading",
      "resistance",
      "defamiliarisation"
    ],
    "Preserve & decay": [
      "preserving",
      "weathering",
      "ageing",
      "decomposing",
      "rusting",
      "fading",
      "conserving",
      "sealing",
      "protecting",
      "erosion",
      "damage",
      "repair",
      "rot",
      "patina",
      "wear",
      "exposure",
      "fragility",
      "loss",
      "maintenance",
      "deterioration",
      "survival",
      "entropy",
      "material change"
    ]
  },
  "Technique": {
    "Drawing": [
      "line drawing",
      "observational drawing",
      "gestural drawing",
      "diagramming",
      "tracing",
      "rubbing",
      "mark-making",
      "tonal drawing",
      "mapping",
      "notation",
      "sketching",
      "automatic drawing",
      "contour drawing",
      "blind drawing",
      "charcoal drawing",
      "ink drawing",
      "pencil drawing",
      "drawing from memory",
      "drawing as record",
      "drawing as plan"
    ],
    "Painting": [
      "acrylic painting",
      "oil painting",
      "watercolour",
      "gouache",
      "wash",
      "glazing",
      "staining",
      "impasto",
      "underpainting",
      "colour mixing",
      "surface preparation",
      "mural painting",
      "hard-edge painting",
      "gestural painting",
      "monochrome painting",
      "layered painting",
      "painting on object",
      "painting installation",
      "painted text",
      "painting as surface"
    ],
    "Printmaking": [
      "relief print",
      "screen print",
      "risograph",
      "etching",
      "monotype",
      "lithography",
      "stencil",
      "photocopy",
      "digital print",
      "zine-making",
      "editioning",
      "registration",
      "lino print",
      "woodcut",
      "drypoint",
      "collagraph",
      "overprinting",
      "poster printing",
      "artist book",
      "print multiple"
    ],
    "Photography": [
      "portrait photography",
      "documentary photography",
      "staged photography",
      "analogue photography",
      "digital photography",
      "scanning",
      "photo collage",
      "cyanotype",
      "long exposure",
      "image transfer",
      "archival photograph",
      "found photograph",
      "still life photography",
      "landscape photography",
      "self-portrait",
      "photogram",
      "contact sheet",
      "photographic sequence",
      "manipulated image",
      "camera phone image"
    ],
    "Video": [
      "single-channel video",
      "moving image",
      "projection",
      "montage",
      "loop",
      "edit",
      "subtitle",
      "voiceover",
      "screen recording",
      "phone video",
      "animation",
      "installation video",
      "split screen",
      "video essay",
      "performance documentation",
      "time-lapse",
      "slow motion",
      "found footage",
      "video diary",
      "moving-image installation"
    ],
    "Sound": [
      "field recording",
      "voice recording",
      "soundscape",
      "spoken word",
      "singing",
      "sampling",
      "looping",
      "amplification",
      "silence",
      "noise",
      "multi-channel sound",
      "audio editing",
      "microphone work",
      "oral history",
      "sound installation",
      "live sound",
      "recorded testimony",
      "ambient sound",
      "rhythm",
      "echo"
    ],
    "Sculpture": [
      "assemblage",
      "carving",
      "casting",
      "modelling",
      "construction",
      "readymade",
      "soft sculpture",
      "kinetic sculpture",
      "object-making",
      "fabrication",
      "modular form",
      "installation object",
      "relief sculpture",
      "small object",
      "large-scale object",
      "suspended object",
      "found-object sculpture",
      "welded form",
      "built form",
      "sculptural support"
    ],
    "Installation": [
      "site-specific installation",
      "wall work",
      "floor work",
      "projection installation",
      "immersive space",
      "room intervention",
      "temporary installation",
      "display system",
      "lighting",
      "spatial arrangement",
      "viewer movement",
      "threshold",
      "environment",
      "walkthrough",
      "constellation",
      "plinth arrangement",
      "hanging system",
      "architectural intervention",
      "sensory installation"
    ],
    "Textile": [
      "stitching",
      "embroidery",
      "weaving",
      "quilting",
      "appliqué",
      "dyeing",
      "felting",
      "knotting",
      "garment construction",
      "soft form",
      "textile repair",
      "fibre installation",
      "sewing",
      "hand stitch",
      "machine stitch",
      "banner-making",
      "tapestry",
      "fabric construction",
      "wearable textile",
      "textile assemblage"
    ],
    "Ceramics": [
      "hand-building",
      "wheel throwing",
      "slip casting",
      "glazing",
      "firing",
      "raku",
      "porcelain",
      "terracotta",
      "vessel-making",
      "ceramic sculpture",
      "surface carving",
      "clay modelling",
      "coil building",
      "slab building",
      "pinch pot",
      "ceramic installation",
      "unfired clay",
      "ceramic fragment",
      "glaze testing",
      "kiln process"
    ],
    "Performance": [
      "gesture",
      "endurance",
      "rehearsal",
      "score",
      "instruction",
      "costume",
      "role-play",
      "public action",
      "ritual action",
      "participation",
      "documentation",
      "live work",
      "body action",
      "repeated action",
      "performed task",
      "spoken performance",
      "durational work",
      "audience encounter",
      "private performance",
      "performance for camera"
    ],
    "Digital media": [
      "web design",
      "coding",
      "animation",
      "3D modelling",
      "digital collage",
      "interactive media",
      "game environment",
      "augmented image",
      "data visualisation",
      "generative image",
      "interface design",
      "digital publication",
      "digital drawing",
      "video editing",
      "image manipulation",
      "screen-based work",
      "online performance",
      "database work",
      "interactive website",
      "browser-based artwork"
    ]
  }
};

const STORAGE_KEY = "contextLocatorEntries.v3";
const LEGACY_STORAGE_KEYS = ["contextLocatorEntries.v2", "contextLocatorEntries.v1"];
const RESPONSE_MAX = 180;
const REFLECTION_RESPONSE_MAX = 180;

const form = document.getElementById("entryForm");
const zoneInput = document.getElementById("zoneInput");
const questionInput = document.getElementById("questionInput");
const reflectionInput = document.getElementById("reflectionInput");
const responseInput = document.getElementById("responseInput");
const reflectionResponseInput = document.getElementById("reflectionResponseInput");
const setInput = document.getElementById("setInput");
const subsetInput = document.getElementById("subsetInput");
const questionOptions = document.getElementById("questionOptions");
const reflectionOptions = document.getElementById("reflectionOptions");
const setOptions = document.getElementById("setOptions");
const subsetOptions = document.getElementById("subsetOptions");
const bubbleLayer = document.getElementById("bubbleLayer");
const mapArea = document.getElementById("mapArea");
const canvas = document.getElementById("linksCanvas");
const ctx = canvas.getContext("2d");
const mapHint = document.getElementById("mapHint");
const bubbleTemplate = document.getElementById("bubbleTemplate");

responseInput.maxLength = RESPONSE_MAX;
reflectionResponseInput.maxLength = REFLECTION_RESPONSE_MAX;

const ZONE_ALIASES = {
  theme: "Themes",
  themes: "Themes",
  thematic: "Themes",
  thematics: "Themes",
  material: "Materials",
  materials: "Materials",
  materiality: "Materials",
  materialities: "Materials",
  process: "Process",
  processes: "Process",
  practice: "Process",
  technique: "Technique",
  techniques: "Technique",
  technical: "Technique"
};

let entries = [];
let nodes = [];
let links = [];
let rafId = null;
let lastTime = performance.now();
let pointerDrag = null;
let suppressClick = false;
let selectedClusterId = null;
let zoneHomes = {};

function optionList(values) {
  return values.map(v => `<option value="${escapeAttr(v)}"></option>`).join("");
}
function escapeAttr(value) {
  return String(value).replace(/&/g, "&amp;").replace(/"/g, "&quot;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
}
function escapeHtml(value) {
  return String(value).replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
}
function cleanText(text) {
  return String(text || "").trim().replace(/\s+/g, " ");
}
function truncate(text, max = 58) {
  const clean = cleanText(text);
  if (clean.length <= max) return clean;
  return clean.slice(0, Math.max(0, max - 1)).trim() + "…";
}
function normalizeZone(value) {
  const key = cleanText(value).toLowerCase();
  return ZONE_ALIASES[key] || (PROMPTS[value] ? value : "Themes");
}
function currentZone() {
  return normalizeZone(zoneInput.value);
}


function optionsForInput(input) {
  const zone = currentZone();
  if (input === zoneInput) return ["Themes", "Materials", "Process", "Technique"];
  if (input === questionInput) return PROMPTS[zone].map(item => item.q);
  if (input === reflectionInput) {
    const prompt = PROMPTS[zone].find(item => item.q === questionInput.value);
    return prompt ? prompt.reflections : [...new Set(PROMPTS[zone].flatMap(item => item.reflections))];
  }
  if (input === setInput) return Object.keys(TERM_BANKS[zone] || {});
  if (input === subsetInput) return (TERM_BANKS[zone] && TERM_BANKS[zone][setInput.value]) || [];
  return [];
}
function inputChangeEvent(input) {
  input.dispatchEvent(new Event("input", { bubbles: true }));
  input.dispatchEvent(new Event("change", { bubbles: true }));
}
function commitSuggestion(input, value) {
  input._suppressSuggestions = true;
  input.value = value;
  hideAllSuggestions();
  inputChangeEvent(input);
  requestAnimationFrame(() => {
    input._suppressSuggestions = false;
  });
}
function refreshSuggestionPanel(input) {
  const panel = input && input._suggestionPanel;
  if (!panel || document.activeElement !== input) return;
  showSuggestions(input);
}
function showSuggestions(input, forceAll = false) {
  if (input._suppressSuggestions) return;
  const panel = input._suggestionPanel;
  if (!panel) return;
  const all = optionsForInput(input);
  const query = cleanText(input.value).toLowerCase();
  let values = forceAll || !query ? all : all.filter(v => v.toLowerCase().includes(query));
  if (!values.length) values = all;
  panel.innerHTML = "";
  values.forEach(value => {
    const button = document.createElement("button");
    button.type = "button";
    button.className = "suggestionOption";
    button.textContent = value;
    button.addEventListener("mousedown", event => {
      event.preventDefault();
      commitSuggestion(input, value);
      input.focus({ preventScroll: true });
    });
    panel.appendChild(button);
  });
  panel.classList.toggle("is-open", values.length > 0);
}
function hideAllSuggestions() {
  [zoneInput, questionInput, reflectionInput, setInput, subsetInput].forEach(input => {
    if (input && input._suggestionPanel) input._suggestionPanel.classList.remove("is-open");
  });
}
function initSuggestionPanels() {
  [zoneInput, questionInput, reflectionInput, setInput, subsetInput].forEach(input => {
    if (!input) return;
    const panel = document.createElement("div");
    panel.className = "suggestionPanel";
    input.closest(".field").appendChild(panel);
    input._suggestionPanel = panel;
    input.addEventListener("focus", () => showSuggestions(input, true));
    input.addEventListener("click", () => showSuggestions(input, true));
    input.addEventListener("input", () => showSuggestions(input, false));
    input.addEventListener("keydown", event => {
      if (event.key === "Escape") hideAllSuggestions();
    });
  });
  document.addEventListener("pointerdown", event => {
    if (!event.target.closest(".field")) hideAllSuggestions();
  });
}

function populateQuestions() {
  const zone = currentZone();
  if (questionOptions) questionOptions.innerHTML = optionList(PROMPTS[zone].map(item => item.q));
  if (setOptions) setOptions.innerHTML = optionList(Object.keys(TERM_BANKS[zone] || {}));
  refreshSuggestionPanel(questionInput);
  refreshSuggestionPanel(setInput);
  populateReflections();
  populateSubsets();
}
function populateReflections() {
  const zone = currentZone();
  const prompt = PROMPTS[zone].find(item => item.q === questionInput.value);
  const reflections = prompt ? prompt.reflections : [...new Set(PROMPTS[zone].flatMap(item => item.reflections))];
  if (reflectionOptions) reflectionOptions.innerHTML = optionList(reflections);
  refreshSuggestionPanel(reflectionInput);
}
function populateSubsets() {
  const zone = currentZone();
  const subsets = (TERM_BANKS[zone] && TERM_BANKS[zone][setInput.value]) || [];
  if (subsetOptions) subsetOptions.innerHTML = optionList(subsets);
  refreshSuggestionPanel(subsetInput);
}
function suggestLabel() {
}
function clearDownstream(from) {
  const order = ["zone", "question", "response", "reflection", "reflectionResponse", "set", "subset"];
  const start = order.indexOf(from);
  if (start < 0) return;
  const fields = { question: questionInput, response: responseInput, reflection: reflectionInput, reflectionResponse: reflectionResponseInput, set: setInput, subset: subsetInput };
  for (const key of order.slice(start + 1)) {
    if (fields[key]) fields[key].value = "";
  }
  populateQuestions();
}

zoneInput.addEventListener("change", () => {
  zoneInput.value = currentZone();
  clearDownstream("zone");
});
zoneInput.addEventListener("input", () => {
  if (PROMPTS[normalizeZone(zoneInput.value)]) clearDownstream("zone");
});
questionInput.addEventListener("change", () => clearDownstream("question"));
questionInput.addEventListener("input", () => { populateReflections(); suggestLabel(); });
responseInput.addEventListener("input", () => { enforceLimit(responseInput, RESPONSE_MAX); clearDownstream("response"); });
reflectionInput.addEventListener("change", () => clearDownstream("reflection"));
reflectionInput.addEventListener("input", () => suggestLabel());
reflectionResponseInput.addEventListener("input", () => { enforceLimit(reflectionResponseInput, REFLECTION_RESPONSE_MAX); clearDownstream("reflectionResponse"); });
setInput.addEventListener("change", () => clearDownstream("set"));
setInput.addEventListener("input", () => { populateSubsets(); suggestLabel(); });
subsetInput.addEventListener("input", () => suggestLabel());

function enforceLimit(el, max) {
  if (el.value.length > max) el.value = el.value.slice(0, max);
}

document.getElementById("clearCurrent").addEventListener("click", () => {
  const keepZone = currentZone();
  form.reset();
  zoneInput.value = keepZone;
  populateQuestions();
});

document.getElementById("clearMap").addEventListener("click", () => {
  if (!entries.length || confirm("Clear all entries from the diagram?")) {
    entries = [];
    nodes = [];
    links = [];
    saveEntries();
    renderNodes();
  }
});

document.getElementById("downloadMap").addEventListener("click", downloadDiagramPng);

form.addEventListener("submit", event => {
  event.preventDefault();
  addEntryFromForm();
});

function addEntryFromForm() {
  const entry = {
    id: `entry-${Date.now()}-${Math.random().toString(16).slice(2)}`,
    zone: currentZone(),
    question: questionInput.value.trim(),
    response: responseInput.value.trim(),
    reflection: reflectionInput.value.trim(),
    reflectionResponse: reflectionResponseInput.value.trim(),
    set: setInput.value.trim(),
    subset: subsetInput.value.trim(),
    };
  if (!entry.question && !entry.response && !entry.reflection && !entry.reflectionResponse && !entry.set && !entry.subset) {
    responseInput.focus();
    return;
  }
  entries.push(entry);
  saveEntries();
  createCluster(entry, true);
  clearAfterAdd();
}
function clearAfterAdd() {
  const keepZone = currentZone();
  form.reset();
  zoneInput.value = keepZone;
  populateQuestions();
}

function saveEntries() {
  localStorage.setItem(STORAGE_KEY, JSON.stringify(entries));
}
function loadEntries() {
  try {
    let raw = localStorage.getItem(STORAGE_KEY);
    if (!raw) {
      for (const key of LEGACY_STORAGE_KEYS) {
        raw = localStorage.getItem(key);
        if (raw) break;
      }
    }
    entries = JSON.parse(raw || "[]");
    entries = entries.map(e => ({ ...e, zone: normalizeZone(e.zone) }));
  } catch {
    entries = [];
  }
}

function anchorForZone(zone) {
  const rect = mapArea.getBoundingClientRect();
  const normalized = normalizeZone(zone);
  if (zoneHomes[normalized]) {
    return { x: zoneHomes[normalized].x, y: zoneHomes[normalized].y };
  }
  const positions = {
    Themes: [0.22, 0.35],
    Materials: [0.68, 0.32],
    Process: [0.36, 0.72],
    Technique: [0.78, 0.70]
  };
  const p = positions[normalized] || [0.5, 0.5];
  return { x: rect.width * p[0], y: rect.height * p[1] };
}
function textSpec(text, kind) {
  const display = cleanText(text) || "—";
  if (kind === "circle") {
    const len = display.length;
    const longestWord = display.split(/\s+/).reduce((max, word) => Math.max(max, word.length), 0);
    const base = 82 + Math.min(len, 54) * 1.65 + Math.min(longestWord, 18) * 1.9;
    const size = Math.max(86, Math.min(154, base));
    let font = 15;
    if (len > 12) font = 14;
    if (len > 20 || longestWord > 10) font = 12.7;
    if (len > 32 || longestWord > 13) font = 11.4;
    if (len > 46 || longestWord > 16) font = 10.2;
    return { text: display, width: size, height: size, radius: size / 2, font };
  }
  const width = Math.max(118, Math.min(178, 106 + Math.min(display.length, 90) * .82));
  const charsPerLine = Math.max(14, Math.floor((width - 24) / 6.4));
  const lines = wrapTextLines(display, charsPerLine, 8);
  const height = Math.max(48, Math.min(172, 26 + lines.length * 17));
  const font = display.length < 70 ? 12.5 : display.length < 135 ? 11.3 : 10.4;
  return { text: display, width, height, radius: 20, font, lines };
}
function wrapTextLines(text, charsPerLine, maxLines = 8) {
  const words = cleanText(text).split(" ").filter(Boolean);
  const lines = [];
  let line = "";
  for (const word of words) {
    const test = line ? `${line} ${word}` : word;
    if (test.length > charsPerLine && line) {
      lines.push(line);
      line = word;
    } else {
      line = test;
    }
  }
  if (line) lines.push(line);
  return lines.slice(0, maxLines);
}
function displayZoneLabel(zone) {
  return zone === "Themes" ? "Theme" : zone === "Materials" ? "Material" : zone === "Process" ? "Process" : zone;
}

function zoneNodeId(zone) {
  return `zone-${normalizeZone(zone)}`;
}

function clusterParts(entry) {
  const parts = [];
  if (entry.question) parts.push({ role: "question", kind: "pill prompt-node", text: entry.question, title: `Initial question: ${entry.question}` });
  if (entry.response) parts.push({ role: "response", kind: "pill response-node", text: entry.response, title: `Response: ${entry.response}` });
  if (entry.reflection) parts.push({ role: "reflection", kind: "pill prompt-node", text: entry.reflection, title: `Reflection: ${entry.reflection}` });
  if (entry.reflectionResponse) parts.push({ role: "reflectionResponse", kind: "pill response-node", text: entry.reflectionResponse, title: `Response: ${entry.reflectionResponse}` });
  if (entry.set) parts.push({ role: "set", kind: "circle category-node", text: entry.set, title: `Category: ${entry.set}` });
  if (entry.subset) parts.push({ role: "subset", kind: "circle term-node", text: entry.subset, title: `Term: ${entry.subset}` });
  return parts;
}
function clusterOffsets() {
  const ring = (angleDeg, min, max) => {
    const angle = (angleDeg + (Math.random() - 0.5) * 32) * Math.PI / 180;
    const distance = min + Math.random() * (max - min);
    return [Math.cos(angle) * distance, Math.sin(angle) * distance];
  };
  return {
    question: ring(215, 118, 176),
    response: ring(165, 182, 254),
    reflection: ring(325, 118, 176),
    reflectionResponse: ring(25, 182, 254),
    set: ring(275, 112, 176),
    subset: ring(92, 130, 205)
  };
}
function linkPairsForCluster(entry, made, zoneNode) {
  const byRole = Object.fromEntries(made.map(n => [n.role, n]));
  const pairs = [];
  const add = (sourceNode, targetRole, strength = 0.02) => {
    if (sourceNode && byRole[targetRole]) {
      pairs.push({
        source: sourceNode.id,
        target: byRole[targetRole].id,
        entryId: entry.id,
        zone: entry.zone,
        sourceRole: sourceNode.role,
        targetRole,
        strength
      });
    }
  };
  const addRole = (sourceRole, targetRole, strength = 0.02) => {
    if (byRole[sourceRole] && byRole[targetRole]) {
      pairs.push({
        source: byRole[sourceRole].id,
        target: byRole[targetRole].id,
        entryId: entry.id,
        zone: entry.zone,
        sourceRole,
        targetRole,
        strength
      });
    }
  };
  add(zoneNode, "question", 0.018);
  addRole("question", "response", 0.016);
  add(zoneNode, "reflection", 0.018);
  addRole("reflection", "reflectionResponse", 0.016);
  add(zoneNode, "set", 0.02);
  add(zoneNode, "subset", 0.018);
  return pairs;
}
function getOrCreateZoneNode(zone, fresh = false) {
  const id = zoneNodeId(zone);
  const existing = nodes.find(node => node.id === id);
  if (existing) return existing;

  const rect = mapArea.getBoundingClientRect();
  const anchor = anchorForZone(zone);
  const jitter = fresh ? 30 : 65;
  const spec = textSpec(displayZoneLabel(zone), "circle");
  const node = {
    id,
    entryId: id,
    sharedZone: true,
    zone,
    role: "zone",
    kind: "circle zone-node",
    text: spec.text,
    title: `Zone: ${displayZoneLabel(zone)}`,
    fullEntry: null,
    x: Math.max(120, Math.min(rect.width - 120, anchor.x + (Math.random() - .5) * jitter)),
    y: Math.max(120, Math.min(rect.height - 120, anchor.y + (Math.random() - .5) * jitter)),
    vx: (Math.random() - .5) * .08,
    vy: (Math.random() - .5) * .08,
    width: spec.width,
    height: spec.height,
    radius: spec.radius,
    font: spec.font,
    el: null
  };
  nodes.push(node);
  buildBubble(node);
  return node;
}
function createCluster(entry, fresh = false) {
  const rect = mapArea.getBoundingClientRect();
  const zoneNode = getOrCreateZoneNode(entry.zone, fresh);
  const offsets = clusterOffsets();
  const parts = clusterParts(entry);
  const made = [];
  for (const part of parts) {
    const [ox, oy] = offsets[part.role] || [(Math.random() - .5) * 150, (Math.random() - .5) * 120];
    const spec = textSpec(part.text, part.kind.startsWith("circle") ? "circle" : "pill");
    if (part.kind.includes("small")) { spec.width *= .78; spec.height *= .78; spec.radius *= .78; spec.font = 11; }
    const node = {
      id: `${entry.id}-${part.role}`,
      entryId: entry.id,
      zone: entry.zone,
      role: part.role,
      kind: part.kind,
      text: spec.text,
      title: part.title,
      fullEntry: entry,
      x: zoneNode.x + ox,
      y: zoneNode.y + oy,
      vx: (Math.random() - .5) * .12,
      vy: (Math.random() - .5) * .12,
      width: spec.width,
      height: spec.height,
      radius: spec.radius,
      font: spec.font,
      el: null
    };
    node.x = Math.max(node.width / 2, Math.min(rect.width - node.width / 2, node.x));
    node.y = Math.max(node.height / 2, Math.min(rect.height - node.height / 2, node.y));
    nodes.push(node);
    made.push(node);
    buildBubble(node);
  }
  links.push(...linkPairsForCluster(entry, made, zoneNode));
  mapHint.classList.toggle("is-hidden", nodes.length > 0);
}
function buildBubble(node) {
  const fragment = bubbleTemplate.content.cloneNode(true);
  const el = fragment.querySelector(".bubble");
  el.dataset.id = node.id;
  el.dataset.entryId = node.entryId;
  el.dataset.role = node.role;
  el.classList.add(`role-${node.role}`, ...(node.kind || "").split(" ").filter(Boolean));
  if (node.sharedZone) el.classList.add("shared-zone");
  applyBubbleScale(node);
  el.querySelector(".bubbleLabel").textContent = node.text;
  el.title = node.title;
  const deleteButton = el.querySelector(".deleteBubble");
  if (deleteButton) deleteButton.remove();
  el.addEventListener("pointerdown", event => startDrag(event, node));
  el.addEventListener("click", event => {
    if (event.target.closest(".deleteBubble")) return;
    if (suppressClick) return;
    selectCluster(node);
  });
  el.addEventListener("keydown", event => {
    if (event.key === "Enter" || event.key === " ") {
      event.preventDefault();
      selectCluster(node);
    }
  });
  node.el = el;
  bubbleLayer.appendChild(el);
}
function clearSelection() {
  selectedClusterId = null;
  for (const item of nodes) {
    if (!item.el) continue;
    item.el.classList.remove("is-selected", "is-muted");
  }
}
function selectCluster(nodeOrEntryId) {
  const node = typeof nodeOrEntryId === "string" ? nodes.find(n => n.entryId === nodeOrEntryId || n.id === nodeOrEntryId) : nodeOrEntryId;
  if (!node) return;
  const key = node.sharedZone ? zoneNodeId(node.zone) : node.entryId;
  if (selectedClusterId === key) {
    clearSelection();
    return;
  }
  selectedClusterId = key;
  for (const item of nodes) {
    const selected = selectedClusterId && (
      (selectedClusterId.startsWith("zone-") && item.zone === node.zone) ||
      item.entryId === selectedClusterId
    );
    item.el.classList.toggle("is-selected", !!selected);
    item.el.classList.toggle("is-muted", selectedClusterId && !selected);
  }
}
mapArea.addEventListener("click", event => {
  if (suppressClick) return;
  if (!event.target.closest(".bubble")) clearSelection();
});
function removeEntry(id) {
  entries = entries.filter(entry => entry.id !== id);
  saveEntries();
  selectedClusterId = null;
  renderNodes();
}
function renderNodes() {
  bubbleLayer.innerHTML = "";
  nodes = [];
  links = [];
  entries.forEach(entry => createCluster(entry, false));
  mapHint.classList.toggle("is-hidden", nodes.length > 0);
}
function findNode(id) {
  return nodes.find(node => node.id === id);
}

// Responsive map scaling: keeps the upper diagram text and bubbles
// in proportion when the tool is embedded in a narrower iframe.
// Export remains drawn from the full node dimensions for legibility.
function mapScale() {
  const rect = mapArea.getBoundingClientRect();
  if (!rect.width) return 1;
  return Math.max(0.66, Math.min(1, rect.width / 1080));
}
function displayWidth(node) {
  return node.width * mapScale();
}
function displayHeight(node) {
  return node.height * mapScale();
}
function displayFont(node) {
  return Math.max(8.2, node.font * mapScale());
}
function applyBubbleScale(node) {
  if (!node.el) return;
  const scale = mapScale();
  node.el.style.setProperty("--w", `${node.width * scale}px`);
  node.el.style.setProperty("--h", `${node.height * scale}px`);
  node.el.style.setProperty("--label-size", `${Math.max(8.2, node.font * scale)}px`);
  node.el.style.setProperty("--bubble-pad-y", `${Math.max(5, 8 * scale)}px`);
  node.el.style.setProperty("--bubble-pad-x", `${Math.max(7, 11 * scale)}px`);
}

function startDrag(event, node) {
  if (event.target.closest(".deleteBubble")) return;
  event.preventDefault();
  suppressClick = false;
  const rect = mapArea.getBoundingClientRect();
  const cluster = node.sharedZone ? nodes.filter(n => n.zone === node.zone) : nodes.filter(n => n.entryId === node.entryId);
  const dragWhole = event.shiftKey;
  pointerDrag = {
    node,
    cluster: dragWhole ? cluster.map(n => ({ node: n, x: n.x, y: n.y })) : null,
    startX: event.clientX,
    startY: event.clientY,
    offsetX: node.x - (event.clientX - rect.left),
    offsetY: node.y - (event.clientY - rect.top)
  };
  node.el.setPointerCapture(event.pointerId);
  node.el.classList.add("is-dragging");
  node.fx = node.x;
  node.fy = node.y;
  window.addEventListener("pointermove", onPointerMove);
  window.addEventListener("pointerup", onPointerUp, { once: true });
}
function onPointerMove(event) {
  if (!pointerDrag) return;
  const rect = mapArea.getBoundingClientRect();
  const node = pointerDrag.node;
  const dx = event.clientX - pointerDrag.startX;
  const dy = event.clientY - pointerDrag.startY;
  if (Math.abs(dx) + Math.abs(dy) > 4) suppressClick = true;
  if (pointerDrag.cluster) {
    for (const item of pointerDrag.cluster) {
      item.node.x = item.x + dx;
      item.node.y = item.y + dy;
      item.node.vx = 0;
      item.node.vy = 0;
    }
  } else {
    node.x = event.clientX - rect.left + pointerDrag.offsetX;
    node.y = event.clientY - rect.top + pointerDrag.offsetY;
    node.vx = 0;
    node.vy = 0;
  }
}
function onPointerUp() {
  if (!pointerDrag) return;
  const releasedNode = pointerDrag.node;
  releasedNode.el.classList.remove("is-dragging");
  releasedNode.fx = null;
  releasedNode.fy = null;
  if (releasedNode.sharedZone || releasedNode.role === "zone") {
    zoneHomes[releasedNode.zone] = { x: releasedNode.x, y: releasedNode.y };
  }
  pointerDrag = null;
  window.removeEventListener("pointermove", onPointerMove);
  setTimeout(() => { suppressClick = false; }, 90);
}

function tick(time) {
  const dt = Math.min(30, time - lastTime) / 16.67;
  lastTime = time;
  stepPhysics(dt);
  drawLinks();
  for (const node of nodes) {
    if (!node.el) continue;
    applyBubbleScale(node);
    node.el.style.left = `${node.x}px`;
    node.el.style.top = `${node.y}px`;
  }
  rafId = requestAnimationFrame(tick);
}

function nodeRadius(node) {
  return Math.max(displayWidth(node), displayHeight(node)) / 2;
}
function linkTargetDistance(link) {
  if (link.targetRole === "response" || link.targetRole === "reflectionResponse") return 178;
  if (link.sourceRole === "question" || link.sourceRole === "reflection") return 142;
  if (link.targetRole === "subset") return 144;
  return 126;
}
function parentForNode(node) {
  if (node.role === "response") return findNode(`${node.entryId}-question`);
  if (node.role === "reflectionResponse") return findNode(`${node.entryId}-reflection`);
  if (node.role === "question" || node.role === "reflection" || node.role === "set" || node.role === "subset") return findNode(zoneNodeId(node.zone));
  return null;
}
function applyRepulsion(dt) {
  for (let i = 0; i < nodes.length; i++) {
    for (let j = i + 1; j < nodes.length; j++) {
      const a = nodes[i], b = nodes[j];
      const dx = b.x - a.x;
      const dy = b.y - a.y;
      const dist = Math.hypot(dx, dy) || 0.001;
      const pad = a.entryId === b.entryId ? 18 : 24;
      const desired = Math.max(48, nodeRadius(a) + nodeRadius(b) + pad);
      if (dist < desired) {
        const overlap = desired - dist;
        const strength = a.entryId === b.entryId ? 0.0065 : 0.0048;
        let nx = dx / dist;
        let ny = dy / dist;
        const fx = nx * overlap * strength;
        const fy = ny * overlap * strength;
        if (a.fx == null) { a.vx -= fx * dt; a.vy -= fy * dt; }
        if (b.fx == null) { b.vx += fx * dt; b.vy += fy * dt; }
      }
    }
  }
  // Gentle outward bias: each satellite resists collapsing back over the node it is attached to.
  for (const node of nodes) {
    if (node.fx != null || node.role === "zone") continue;
    const parent = parentForNode(node);
    if (!parent) continue;
    const dx = node.x - parent.x;
    const dy = node.y - parent.y;
    const dist = Math.hypot(dx, dy) || 0.001;
    const minDistance = nodeRadius(node) + nodeRadius(parent) + (node.role.includes("Response") || node.role === "response" ? 74 : 48);
    if (dist < minDistance) {
      const push = (minDistance - dist) * 0.0038;
      node.vx += (dx / dist) * push * dt;
      node.vy += (dy / dist) * push * dt;
    }
  }
}

function stepPhysics(dt) {
  const rect = mapArea.getBoundingClientRect();
  if (!rect.width || !rect.height) return;
  const now = performance.now();

  // Soft springs: connected nodes remain in conversation, but with a watery delay.
  for (const link of links) {
    const a = findNode(link.source);
    const b = findNode(link.target);
    if (!a || !b) continue;
    const dx = b.x - a.x;
    const dy = b.y - a.y;
    const dist = Math.hypot(dx, dy) || 0.001;
    const desired = linkTargetDistance(link);
    const force = (dist - desired) * link.strength * 0.62;
    const fx = (dx / dist) * force;
    const fy = (dy / dist) * force;
    if (a.fx == null) { a.vx += fx * dt; a.vy += fy * dt; }
    if (b.fx == null) { b.vx -= fx * dt; b.vy -= fy * dt; }
  }

  for (const node of nodes) {
    if (node.fx != null) continue;

    if (node.role === "zone") {
      const anchor = anchorForZone(node.zone);
      const pull = 0.00012; // very slow return / settling
      node.vx += ((anchor.x - node.x) * pull + Math.sin(now * .00012 + node.y * .01) * .00020) * dt;
      node.vy += ((anchor.y - node.y) * pull + Math.cos(now * .00010 + node.x * .01) * .00020) * dt;
    } else {
      // Do not force satellites back to preset map regions. Let the springs and repulsion compose the field.
      node.vx += ((rect.width * .5 - node.x) * 0.000006 + Math.sin(now * .00010 + node.y * .01) * .00018) * dt;
      node.vy += ((rect.height * .5 - node.y) * 0.000006 + Math.cos(now * .00009 + node.x * .01) * .00018) * dt;
    }
  }

  applyRepulsion(dt);

  for (const node of nodes) {
    if (node.fx != null) continue;
    node.vx *= 0.84;
    node.vy *= 0.84;
    node.x += node.vx * dt * 5.6;
    node.y += node.vy * dt * 5.6;
    const marginX = displayWidth(node) / 2 + 8;
    const marginY = displayHeight(node) / 2 + 8;
    if (node.x < marginX) { node.x = marginX; node.vx *= -0.16; }
    if (node.x > rect.width - marginX) { node.x = rect.width - marginX; node.vx *= -0.16; }
    if (node.y < marginY) { node.y = marginY; node.vy *= -0.16; }
    if (node.y > rect.height - marginY) { node.y = rect.height - marginY; node.vy *= -0.16; }
  }
}

function resizeCanvas() {
  const rect = mapArea.getBoundingClientRect();
  const dpr = window.devicePixelRatio || 1;
  canvas.width = Math.max(1, Math.floor(rect.width * dpr));
  canvas.height = Math.max(1, Math.floor(rect.height * dpr));
  canvas.style.width = `${rect.width}px`;
  canvas.style.height = `${rect.height}px`;
  ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
}
window.addEventListener("resize", () => {
  resizeCanvas();
  const rect = mapArea.getBoundingClientRect();
  for (const node of nodes) {
    applyBubbleScale(node);
    const w = displayWidth(node);
    const h = displayHeight(node);
    node.x = Math.max(w / 2, Math.min(rect.width - w / 2, node.x));
    node.y = Math.max(h / 2, Math.min(rect.height - h / 2, node.y));
  }
});

function linkPointOnEdge(from, to, useDisplay = true) {
  const dx = to.x - from.x;
  const dy = to.y - from.y;
  const dist = Math.hypot(dx, dy) || 0.001;
  const ux = dx / dist;
  const uy = dy / dist;
  const w = useDisplay ? displayWidth(from) : from.width;
  const h = useDisplay ? displayHeight(from) : from.height;
  if ((from.kind || "").includes("circle")) {
    const r = Math.max(w, h) / 2;
    return { x: from.x + ux * r, y: from.y + uy * r };
  }
  const halfW = w / 2;
  const halfH = h / 2;
  const scale = Math.min(
    Math.abs(halfW / (ux || 0.0001)),
    Math.abs(halfH / (uy || 0.0001))
  );
  return { x: from.x + ux * scale, y: from.y + uy * scale };
}
function linkEndpoints(a, b, useDisplay = true) {
  return {
    start: linkPointOnEdge(a, b, useDisplay),
    end: linkPointOnEdge(b, a, useDisplay)
  };
}

function drawLinks() {
  const rect = mapArea.getBoundingClientRect();
  ctx.clearRect(0, 0, rect.width, rect.height);
  ctx.save();
  ctx.lineWidth = 1;
  for (const link of links) {
    const a = findNode(link.source);
    const b = findNode(link.target);
    if (!a || !b) continue;
    const selected = selectedClusterId && selectedClusterId === link.entryId;
    const { start, end } = linkEndpoints(a, b);
    ctx.beginPath();
    ctx.moveTo(start.x, start.y);
    const cx = (start.x + end.x) / 2 + Math.sin((start.y + end.y) * .02) * 14;
    const cy = (start.y + end.y) / 2 + Math.cos((start.x + end.x) * .02) * 10;
    ctx.quadraticCurveTo(cx, cy, end.x, end.y);
    ctx.strokeStyle = selected ? "rgba(0,0,0,.48)" : "rgba(0,0,0,.26)";
    ctx.stroke();
  }
  for (let i = 0; i < nodes.length; i++) {
    for (let j = i + 1; j < nodes.length; j++) {
      const a = nodes[i], b = nodes[j];
      if (a.entryId === b.entryId) continue;
      const dist = Math.hypot(a.x - b.x, a.y - b.y);
      if (dist < 160) {
        const { start, end } = linkEndpoints(a, b);
        ctx.beginPath();
        ctx.moveTo(start.x, start.y);
        ctx.lineTo(end.x, end.y);
        ctx.strokeStyle = `rgba(0,0,0,${Math.max(.015, .07 - dist / 2600)})`;
        ctx.lineWidth = 0.65;
        ctx.stroke();
      }
    }
  }
  ctx.restore();
}

function drawRoundRectPath(context, x, y, w, h, r) {
  const rr = Math.min(r, w / 2, h / 2);
  context.beginPath();
  context.moveTo(x + rr, y);
  context.arcTo(x + w, y, x + w, y + h, rr);
  context.arcTo(x + w, y + h, x, y + h, rr);
  context.arcTo(x, y + h, x, y, rr);
  context.arcTo(x, y, x + w, y, rr);
  context.closePath();
}
function drawWrappedText(context, text, x, y, w, fontSize, color, maxLines = 5) {
  context.fillStyle = color;
  context.font = `${fontSize}px Arial, Helvetica, sans-serif`;
  context.textAlign = "center";
  context.textBaseline = "middle";
  const lines = wrapTextLines(text, Math.max(10, Math.floor(w / (fontSize * .52)))).slice(0, maxLines);
  const lineHeight = fontSize * 1.2;
  const startY = y - ((lines.length - 1) * lineHeight) / 2;
  lines.forEach((line, i) => context.fillText(line, x, startY + i * lineHeight));
}
function downloadDiagramPng() {
  const rect = mapArea.getBoundingClientRect();
  const scale = 2;
  const out = document.createElement("canvas");
  out.width = Math.floor(rect.width * scale);
  out.height = Math.floor(rect.height * scale);
  const o = out.getContext("2d");
  o.scale(scale, scale);
  // Export with a light field so the PNG matches the visible diagram area
  // and does not appear inverted/dark in image viewers.
  o.clearRect(0, 0, rect.width, rect.height);
  o.save();
  o.fillStyle = "rgba(255,255,255,1)";
  drawRoundRectPath(o, 1, 1, rect.width - 2, rect.height - 2, 4);
  o.fill();
  o.strokeStyle = "rgba(0,0,0,.68)";
  o.lineWidth = 0.35;
  o.stroke();
  o.restore();
  for (const link of links) {
    const a = findNode(link.source);
    const b = findNode(link.target);
    if (!a || !b) continue;
    const { start, end } = linkEndpoints(a, b, false);
    o.beginPath();
    o.moveTo(start.x, start.y);
    const cx = (start.x + end.x) / 2 + Math.sin((start.y + end.y) * .02) * 12;
    const cy = (start.y + end.y) / 2 + Math.cos((start.x + end.x) * .02) * 10;
    o.quadraticCurveTo(cx, cy, end.x, end.y);
    o.strokeStyle = "rgba(0,0,0,.34)";
    o.lineWidth = 0.85;
    o.stroke();
  }
  for (const node of nodes) {
    const x = node.x - node.width / 2;
    const y = node.y - node.height / 2;
    const isCircle = node.kind.includes("circle");
    o.save();
    o.shadowColor = "rgba(0,0,0,.28)";
    o.shadowBlur = 8;
    o.fillStyle = isCircle ? "rgba(232,232,232,1)" : "rgba(255,255,255,1)";
    o.strokeStyle = "rgba(0,0,0,.68)";
    o.lineWidth = 0.75;
    if (isCircle) {
      o.beginPath();
      o.arc(node.x, node.y, node.width / 2, 0, Math.PI * 2);
      o.fill(); o.stroke();
    } else {
      drawRoundRectPath(o, x, y, node.width, node.height, 18);
      o.fill(); o.stroke();
    }
    o.restore();
    drawWrappedText(o, node.text, node.x, node.y, node.width - 18, node.font, "rgba(0,0,0,.92)", isCircle ? 4 : 6);
  }
  const a = document.createElement("a");
  a.href = out.toDataURL("image/png");
  a.download = "find-the-field-diagram.png";
  document.body.appendChild(a);
  a.click();
  a.remove();
}

function seedExample() {
  if (entries.length) return;
  entries = [
    {
      id: `entry-demo-${Date.now()}`,
      zone: "Themes",
      question: "What are you drawn to, or what do you keep returning to?",
      response: "I keep returning to old family photographs because they seem to hold memories that are already damaged or incomplete.",
      reflection: "Why do you think this keeps coming back?",
      reflectionResponse: "I think I am interested in how images preserve people while also showing what has been lost.",
      set: "Memory and time",
      subset: "Family archive"
    },
    {
      id: `entry-demo-found-${Date.now()}`,
      zone: "Materials",
      question: "What materials, objects, images, sounds, surfaces, or substances are you drawn to using?",
      response: "Found photographs, scans, damaged surfaces and paper traces.",
      reflection: "What do these materials already carry?",
      reflectionResponse: "They carry handling, absence, age and partial evidence.",
      set: "Image",
      subset: "Found photograph"
    }
  ];
  saveEntries();
}

function init() {
  initSuggestionPanels();
  zoneInput.value = currentZone();
  populateQuestions();
  loadEntries();
  if (new URLSearchParams(location.search).has("demo")) seedExample();
  resizeCanvas();
  renderNodes();
  rafId = requestAnimationFrame(tick);
}
init();
