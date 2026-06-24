const DATA = {
  Theme: {
    "Body & identity": ["body","self-image","gender","gender politics","feminism","queer identity","trans identity","sexuality","masculinity","disability","neurodiversity","fat politics","bodily autonomy","portraiture","masking","embodiment","vulnerability","transformation","intimacy","persona","visibility","alter ego","representation"],
    "Memory & archive": ["memory","archive","trace","family history","inheritance","nostalgia","grief","absence","preservation","documentation","testimony","remembrance","collective memory","cultural memory","counter-archive","oral history","erasure","silence","loss","witness","evidence","memorial","intergenerational memory"],
    "Place & environment": ["place","landscape","ecology","climate","climate justice","Country","land rights","Indigenous sovereignty","First Nations knowledge","place-based knowledge","home","migration","diaspora","exile","displacement","border politics","refugee experience","homeland","water rights","extraction","pollution","habitat","site","occupation"],
    "Power & society": ["power","protest","resistance","activism","surveillance","policing","incarceration","institution","institutional critique","colonialism","settler colonialism","decolonisation","race","racism","anti-racism","Black studies","Blackness","whiteness","critical race theory","censorship","class","capitalism","labour politics","law","violence","public space","authority"],
    "Care & relation": ["care","kinship","community","friendship","repair","support","dependency","hospitality","tenderness","responsibility","reciprocity","listening","mutual aid","community care","access","consent","accountability","grief work","social practice","participation","collective responsibility","ethics","interdependence"],
    "Belief & ritual": ["ritual","spirituality","myth","prayer","ceremony","sacred image","iconoclasm","religious trauma","spiritual practice","taboo","magic","superstition","repetition","devotion","mythology","moral panic","cult","secular ritual","belief systems","ancestral knowledge","transformation","offering","sacred space"],
    "Language & image": ["text","translation","storytelling","symbol","sign","code","misreading","instruction","voice","naming","caption","illegibility","representation","misrepresentation","stereotype","testimony","erasure","silence","visibility","refusal","counter-narrative","image circulation","authorship","speaking back"],
    "Technology & media": ["screen","internet","gaming","social media","AI","camera","algorithm","glitch","data","broadcast","interface","network","digital surveillance","algorithmic bias","data colonialism","platform culture","online identity","misinformation","attention economy","AI ethics","digital labour","meme culture","screen politics"],
    "Time & change": ["decay","growth","duration","erosion","ruin","weathering","ageing","transformation","cycle","delay","accumulation","impermanence","futurity","history","return","survival","collapse","renewal","repetition","aftermath","legacy","inheritance","maintenance","entropy"],
    "Feeling & atmosphere": ["joy","anxiety","boredom","desire","shame","fear","melancholy","humour","suspense","awkwardness","wonder","tension","grief","anger","tenderness","alienation","intimacy","discomfort","hope","dread","longing","exhaustion","pleasure","uncertainty"],
    "Labour & everyday life": ["work","routine","domestic labour","shopping","transport","food","cleaning","office","service","repetition","leisure","maintenance","labour politics","digital labour","unpaid labour","care work","consumer culture","class","precarity","productivity","bureaucracy","convenience","exhaustion","survival","ordinary life"],
    "Fantasy & worldbuilding": ["fantasy","worldbuilding","character","myth","folklore","science fiction","horror","anime","gaming","cosplay","dream","speculative future","mythology","fan culture","role-play","avatar","monster","magic","alternative history","utopia","dystopia","world-making","escapism","imaginary place","transformation"]
  },
  Material: {
    "Drawing & mark-making": ["graphite","charcoal","ink","pencil","marker","line","gesture","notation","scribble","stain","rubbing","diagram","contour","pressure","erasure","smudge","hand-drawn mark","automatic mark","annotation","sketch","diagrammatic image","trace"],
    "Painting & surface": ["paint","pigment","canvas","colour","texture","glaze","wash","ground","skin","layer","stain","sheen","opacity","transparency","brushstroke","impasto","flatness","surface tension","underpainting","colour field","painted object","mural surface","material surface"],
    "Paper & print": ["paper","cardboard","book","zine","poster","photocopy","risograph","screen print","etching","collage","label","document","publication","edition","multiple","page","fold","binding","newsprint","archive paper","printed matter","flyer","handout","certificate"],
    "Fibre & textile": ["fabric","thread","cloth","garment","yarn","rope","netting","felt","embroidery","weaving","seam","soft sculpture","stitch","mending","quilting","knotting","fibre","textile repair","inherited cloth","domestic textile","wearable object","banner","flag","tapestry"],
    "Industrial & structural": ["wood","metal","concrete","plaster","glass","mirror","steel","timber","frame","scaffold","hardware","architecture","beam","support","structure","module","fixture","bracket","hinge","grid","wall","plinth","infrastructure","built environment"],
    "Clay & earth": ["clay","ceramic","earth","mud","vessel","glaze","terracotta","porcelain","firing","brick","mineral","dust","slip","kiln","hand-built form","shard","tile","sediment","ground","soil body","fired surface","unfired clay","earthen material","geological matter"],
    "Found & everyday objects": ["found object","packaging","furniture","toy","tool","receipt","container","clothing","domestic object","souvenir","rubbish","appliance","bag","bottle","box","utensil","chair","shelf","sign","wrapper","discarded object","personal object","borrowed object","everyday residue"],
    "Lens & screen": ["photograph","video","projection","phone footage","screenshot","film still","animation","camera","monitor","slide","scan","image file","lens","frame","exposure","edit","moving image","screen capture","digital photograph","archival photograph","found image","display screen","visual record"],
    "Sound & voice": ["sound","voice","song","recording","noise","microphone","speaker","echo","silence","speech","breath","listening","field recording","spoken word","chant","hum","whisper","amplification","audio loop","oral testimony","soundscape","vibration","resonance"],
    "Organic & environmental": ["soil","water","plants","ash","salt","hair","food","wax","smoke","shell","seed","bone","leaf","bark","root","fibre","animal trace","weathered matter","organic residue","growth","decay","compost","natural pigment","living material"],
    "Synthetic & manufactured": ["plastic","vinyl","resin","rubber","acrylic","foam","packaging","silicone","laminate","artificial colour","disposable material","manufactured surface","synthetic skin","industrial coating","polymer","Perspex","adhesive","tape","bubble wrap","nylon","polyester","imitation material","mass-produced object"],
    "Digital & coded": ["code","data","interface","website","game engine","AI image","3D model","sensor","map","file","pixel","database","algorithm","glitch","scan","render","digital archive","network","hyperlink","metadata","screen space","interactive system","generative image"]
  },
  Process: {
    "Collect & archive": ["collecting","sorting","cataloguing","preserving","storing","indexing","classifying","gathering","accumulating","labelling","documenting","inventory","selecting","saving","ordering","filing","grouping","recording","keeping","evidence","archive-building","collection logic","material research"],
    "Cut & remove": ["cutting","tearing","burning","erasing","sanding","deleting","obscuring","scratching","scraping","censoring","editing out","extraction","excision","removal","damage","subtraction","fragmenting","piercing","trimming","cropping","breaking apart","concealment","reduction"],
    "Join & repair": ["stitching","gluing","binding","wrapping","mending","patching","casting","moulding","assembling","fastening","suturing","reconstruction","joining","welding","taping","tying","weaving together","connecting","holding","support","repair","restoration","provisional fix"],
    "Layer & transform": ["layering","folding","staining","soaking","enlarging","shrinking","distorting","translating","remixing","mutating","compressing","covering","coating","building up","changing scale","filtering","reworking","adapting","reformatting","masking","overprinting","transformation","alteration"],
    "Repeat & sequence": ["repetition","rhythm","pattern","seriality","looping","counting","copying","variation","iteration","sequence","grid","recurrence","routine","rehearsal","echo","duplication","return","modularity","accumulation","multiples","edition","repeated gesture","repeated action"],
    "Observe & document": ["observing","recording","photographing","filming","note-taking","measuring","witnessing","interviewing","describing","tracking","scanning","fieldwork","looking","listening","collecting evidence","reporting","journaling","documenting change","following","watching","studying","close attention"],
    "Map & trace": ["mapping","tracing","route","diagram","footprint","outline","path","border","site-plan","navigation","shadow","residue","contour","index","mark","record","cartography","memory map","movement path","spatial relation","boundary","territory","location"],
    "Move & perform": ["performing","walking","carrying","wearing","listening","speaking","gesture","improvising","instructing","rehearsal","action","duration","movement","embodiment","role-play","activation","public action","private action","ritual action","score","participation","live encounter"],
    "Arrange & display": ["hanging","stacking","suspending","balancing","placing","staging","sequencing","lighting","grouping","spacing","framing","installing","composing","positioning","presenting","organising","curating","ordering","aligning","isolating","clustering","display system","installation logic"],
    "Exchange & collaborate": ["collaborating","sharing","borrowing","gifting","responding","interviewing","instructing","publishing","hosting","conversation","participation","co-making","dialogue","exchange","negotiation","invitation","collective action","workshop","correspondence","social practice","reciprocity","contribution"],
    "Distort & disrupt": ["distortion","interruption","glitch","fragmentation","rupture","contradiction","refusal","sabotage","displacement","misalignment","noise","interference","disruption","breakdown","failure","collision","instability","scrambling","misreading","resistance","defamiliarisation"],
    "Preserve & decay": ["preserving","weathering","ageing","decomposing","rusting","fading","conserving","sealing","protecting","erosion","damage","repair","rot","patina","wear","exposure","fragility","loss","maintenance","deterioration","survival","entropy","material change"]
  },
  Technique: {
    "Drawing": ["line drawing","observational drawing","gestural drawing","diagramming","tracing","rubbing","mark-making","tonal drawing","mapping","notation","sketching","automatic drawing","contour drawing","blind drawing","charcoal drawing","ink drawing","pencil drawing","drawing from memory","drawing as record","drawing as plan"],
    "Painting": ["acrylic painting","oil painting","watercolour","gouache","wash","glazing","staining","impasto","underpainting","colour mixing","surface preparation","mural painting","hard-edge painting","gestural painting","monochrome painting","layered painting","painting on object","painting installation","painted text","painting as surface"],
    "Printmaking": ["relief print","screen print","risograph","etching","monotype","lithography","stencil","photocopy","digital print","zine-making","editioning","registration","lino print","woodcut","drypoint","collagraph","overprinting","poster printing","artist book","print multiple"],
    "Photography": ["portrait photography","documentary photography","staged photography","analogue photography","digital photography","scanning","photo collage","cyanotype","long exposure","image transfer","archival photograph","found photograph","still life photography","landscape photography","self-portrait","photogram","contact sheet","photographic sequence","manipulated image","camera phone image"],
    "Video": ["single-channel video","moving image","projection","montage","loop","edit","subtitle","voiceover","screen recording","phone video","animation","installation video","split screen","video essay","performance documentation","time-lapse","slow motion","found footage","video diary","moving-image installation"],
    "Sound": ["field recording","voice recording","soundscape","spoken word","singing","sampling","looping","amplification","silence","noise","multi-channel sound","audio editing","microphone work","oral history","sound installation","live sound","recorded testimony","ambient sound","rhythm","echo"],
    "Sculpture": ["assemblage","carving","casting","modelling","construction","readymade","soft sculpture","kinetic sculpture","object-making","fabrication","modular form","installation object","relief sculpture","small object","large-scale object","suspended object","found-object sculpture","welded form","built form","sculptural support"],
    "Installation": ["site-specific installation","wall work","floor work","projection installation","immersive space","room intervention","temporary installation","display system","lighting","spatial arrangement","viewer movement","threshold","environment","walkthrough","constellation","plinth arrangement","hanging system","architectural intervention","sensory installation"],
    "Textile": ["stitching","embroidery","weaving","quilting","appliqué","dyeing","felting","knotting","garment construction","soft form","textile repair","fibre installation","sewing","hand stitch","machine stitch","banner-making","tapestry","fabric construction","wearable textile","textile assemblage"],
    "Ceramics": ["hand-building","wheel throwing","slip casting","glazing","firing","raku","porcelain","terracotta","vessel-making","ceramic sculpture","surface carving","clay modelling","coil building","slab building","pinch pot","ceramic installation","unfired clay","ceramic fragment","glaze testing","kiln process"],
    "Performance": ["gesture","endurance","rehearsal","score","instruction","costume","role-play","public action","ritual action","participation","documentation","live work","body action","repeated action","performed task","spoken performance","durational work","audience encounter","private performance","performance for camera"],
    "Digital media": ["web design","coding","animation","3D modelling","digital collage","interactive media","game environment","augmented image","data visualisation","generative image","interface design","digital publication","digital drawing","video editing","image manipulation","screen-based work","online performance","database work","interactive website","browser-based artwork"]
  }
};



const RESOURCES = {
  collections: [
    { label: "MCA", template: "https://www.mca.com.au/search/?q={term}&ref=https://www.mca.com.au/collection/" },
    { label: "AGNSW", template: "https://www.artgallery.nsw.gov.au/collection/works/?q={term}" },
    { label: "NGV", template: "https://www.ngv.vic.gov.au/?type=collection&s={term}&paged=1" },
    { label: "NGA", template: "https://searchthecollection.nga.gov.au/results?keyword={term}&includeParts=true" },
    { label: "AGSA", template: "https://www.agsa.sa.gov.au/collection-publications/collection/?q={term}&type=work&has-images=yes&on-display=no" },
    { label: "Tate", template: "https://www.tate.org.uk/search?tab=artwork&q={term}" },
    { label: "MoMA", template: "https://www.moma.org/collection/works/?q={term}&classifications=any&date_begin=Pre-1850&date_end=2026" },
    { label: "Whitney", template: "https://whitney.org/collection/works?q%5Bsearch_cont%5D={term}" },
    { label: "SFMOMA", template: "https://www.sfmoma.org/?s={term}" },
    { label: "Guggenheim", template: "https://www.guggenheim.org/search?s={term}&page=1" }
  ],
  channels: [
    { label: "Art21", template: "https://art21.org/?s={term}" },
    { label: "Louisiana", template: "https://channel.louisiana.dk/search/{term}" },
    { label: "Tate YouTube", template: "https://www.youtube.com/@tate/search?query={term}" },
    { label: "MoMA", template: "https://www.moma.org/search/?bucket=5&query={term}" },
    { label: "Whitney", template: "https://whitney.org/media?search={term}" },
    { label: "SFMOMA", template: "https://www.sfmoma.org/?s={term}&type=multimedia" },
    { label: "AGNSW YouTube", template: "https://www.youtube.com/@ArtGalleryofNSW/search?query={term}" },
    { label: "NGV Channel", template: "https://www.ngv.vic.gov.au/?type=multimedia&s={term}&paged=1" },
    { label: "MCA YouTube", template: "https://www.youtube.com/@mcaaustralia/search?query={term}" },
    { label: "Tate Stories", template: "https://www.tate.org.uk/search?tab=stories&q={term}" },
    { label: "Whitney YouTube", template: "https://www.youtube.com/@whitney_museum/search?query={term}" }
  ],
  writing: [
    { label: "Artlink", template: "https://www.artlink.com.au/search/?q={term}" },
    { label: "Art Monthly", template: "https://www.artmonthly.org.au/search?q={term}" },
    { label: "Memo Review", mode: "google", site: "memoreview.net" },
    { label: "Art + Australia", mode: "google", site: "artandaustralia.com/archive" },
    { label: "Runway", template: "https://runway.org.au/search?q={term}" },
    { label: "un Projects", template: "https://unprojects.org.au/?s={term}&post_types=article" },
    { label: "Tate Research", template: "https://www.tate.org.uk/search?tab=research&q={term}" },
    { label: "MoMA Magazine", template: "https://www.moma.org/search/?bucket=5&query={term}" },
    { label: "NGV Text", template: "https://www.ngv.vic.gov.au/?type=text&s={term}&paged=1" },
    { label: "Whitney Essays", template: "https://whitney.org/essays?q%5Bsearch_cont%5D={term}" },
    { label: "e-flux", template: "https://www.e-flux.com/search?q={term}" },
    { label: "Frieze", template: "https://www.frieze.com/search?search={term}" },
    { label: "Ocula", template: "https://ocula.com/search/?q={term}" }
  ]
};


const rootTerms = ['Theme', 'Material', 'Process', 'Technique'];
const network = document.getElementById('network');
const lines = document.getElementById('lines');
const searchInput = document.getElementById('searchTerm');
const searchBtn = document.getElementById('searchBtn');
const resourceMenu = document.getElementById('resourceMenu');
const statusText = document.getElementById('statusText');
const categoryButtons = document.querySelectorAll('[data-category]');
const resetBtn = document.getElementById('resetBtn');

let currentType = null;
let currentField = null;
let activeCategory = null;
let activeResource = null;
let currentMode = 'root';
let activeNode = null;
let nodes = [];
let links = [];
let simulationRunning = false;

const FIELD = {
  minX: 48,
  maxX: 915,
  minY: 118,
  maxY: 518,
  centreX: 480,
  centreY: 315
};

const PHYSICS = {
  centrePull: 0.00018,
  homePull: 0.00034,
  linkSpring: 0.0058,
  repulsion: 2200,
  friction: 0.925,
  restlessness: 0.007,
  maxSpeed: 5.2
};

function getCurrentScale() {
  const stage = document.querySelector('.stage');
  return stage.getBoundingClientRect().width / 960.87;
}

function encodeTerm(term) {
  return encodeURIComponent(term.trim());
}

function openResource(resource, term) {
  const cleanTerm = term.trim();
  const encoded = encodeTerm(cleanTerm);
  if (!encoded) {
    statusText.textContent = 'Type or select a search term first.';
    return;
  }
  let url;
  if (resource.mode === 'google') {
    url = `https://www.google.com/search?q=${encodeURIComponent(cleanTerm + ' site:' + resource.site)}`;
  } else {
    url = resource.template.replace(/\{term\}/g, encoded);
  }
  window.open(url, '_blank', 'noopener,noreferrer');
}

function setSearchTerm(term) {
  searchInput.value = term;
  statusText.textContent = `Search term: ${term}`;
}

function clearActiveResources() {
  activeResource = null;
  document.querySelectorAll('.resource-chip').forEach(btn => btn.classList.remove('active'));
}

function setActiveCategory(category) {
  activeCategory = category;
  clearActiveResources();
  categoryButtons.forEach(btn => btn.classList.toggle('active', btn.dataset.category === category));
  renderResources(category);
}

function renderResources(category) {
  const resources = RESOURCES[category] || [];
  resourceMenu.innerHTML = '';
  resourceMenu.classList.add('open');
  const heading = document.createElement('div');
  heading.className = 'resource-heading';
  heading.textContent = `Choose ${category === 'collections' ? 'a collection' : category === 'channels' ? 'a channel' : 'a writing resource'}`;
  resourceMenu.appendChild(heading);
  resources.forEach(resource => {
    const btn = document.createElement('button');
    btn.type = 'button';
    btn.className = 'resource-chip';
    btn.textContent = resource.label;
    btn.addEventListener('click', () => {
      activeResource = resource;
      document.querySelectorAll('.resource-chip').forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
      statusText.textContent = `${resource.label} selected.`;
    });
    resourceMenu.appendChild(btn);
  });
}

function resetAll() {
  currentType = null;
  currentField = null;
  activeCategory = null;
  activeResource = null;
  activeNode = null;
  searchInput.value = '';
  statusText.textContent = 'Type a term or choose one from the word web.';
  resourceMenu.innerHTML = '';
  resourceMenu.classList.remove('open');
  categoryButtons.forEach(btn => btn.classList.remove('active'));
  renderNetwork({ center: null, children: rootTerms, mode: 'root' });
}

function getChildrenForNode(label, mode) {
  if (mode === 'root') {
    currentType = label;
    currentField = null;
    return { center: label, children: Object.keys(DATA[label]), mode: 'fields' };
  }
  if (mode === 'fields') {
    currentField = label;
    return { center: label, children: DATA[currentType][label], mode: 'terms' };
  }
  return null;
}

function visibleTerms(children, mode) {
  if (mode !== 'terms') return children;
  return children.slice(0, 28);
}

function shuffle(arr) {
  const a = [...arr];
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

function initialPoint(i, total, mode, isCenter = false) {
  const cx = FIELD.centreX;
  const cy = mode === 'root' ? 315 : 326;
  if (isCenter) return { x: cx, y: cy };

  if (mode === 'root') {
    const rootPositions = [
      { x: 238, y: 284 }, // Theme
      { x: 394, y: 238 }, // Material
      { x: 554, y: 310 }, // Process
      { x: 710, y: 256 }  // Technique
    ];
    return rootPositions[i] || { x: cx, y: cy };
  }

  // Organic radial placement: each child gets its own proximity to the core.
  // This keeps the structure urchin-like rather than too evenly star-shaped.
  const baseRadiusX = mode === 'terms' ? 318 : 276;
  const baseRadiusY = mode === 'terms' ? 178 : 150;
  const golden = Math.PI * (3 - Math.sqrt(5));
  const angle = -Math.PI / 2 + i * golden;
  const proximity = 0.64 + Math.random() * 0.52;
  const wobbleX = Math.sin(i * 1.91 + Math.random()) * 22;
  const wobbleY = Math.cos(i * 1.37 + Math.random()) * 18;
  return {
    x: cx + Math.cos(angle) * baseRadiusX * proximity + wobbleX,
    y: cy + Math.sin(angle) * baseRadiusY * proximity + wobbleY
  };
}

function estimateNodeRadius(label, isCenter) {
  const base = isCenter ? 64 : 45;
  return Math.min(isCenter ? 88 : 70, base + label.length * 1.05);
}

function createNode(label, mode, isCenter, i, total) {
  const pos = initialPoint(i, total, mode, isCenter);
  const btn = document.createElement('button');
  btn.type = 'button';
  btn.className = `node ${isCenter ? 'center-node' : 'outer-node'}`;
  btn.textContent = label;
  network.appendChild(btn);

  const node = {
    id: `${mode}-${label}-${i}-${Math.random().toString(36).slice(2)}`,
    label,
    mode,
    isCenter,
    el: btn,
    x: pos.x,
    y: pos.y,
    homeX: pos.x,
    homeY: pos.y,
    vx: (Math.random() - 0.5) * 1.4,
    vy: (Math.random() - 0.5) * 1.4,
    r: estimateNodeRadius(label, isCenter),
    isDragging: false,
    pointerId: null,
    downX: 0,
    downY: 0,
    moved: false
  };

  btn.addEventListener('pointerdown', event => startDrag(event, node));
  btn.addEventListener('pointermove', event => moveDrag(event, node));
  btn.addEventListener('pointerup', event => endDrag(event, node));
  btn.addEventListener('pointercancel', event => endDrag(event, node));
  btn.addEventListener('click', event => event.preventDefault());

  return node;
}

function setActiveNode(node) {
  activeNode = node;
  setSearchTerm(node.label);
  nodes.forEach(n => n.el.classList.toggle('selected', n === node));
}

function startDrag(event, node) {
  if (event.button !== 0) return;
  event.preventDefault();
  setActiveNode(node);
  node.isDragging = true;
  node.pointerId = event.pointerId;
  node.downX = event.clientX;
  node.downY = event.clientY;
  node.moved = false;
  node.el.classList.add('dragging');
  try { node.el.setPointerCapture(event.pointerId); } catch (_) {}
}

function moveDrag(event, node) {
  if (!node.isDragging || node.pointerId !== event.pointerId) return;
  const scale = getCurrentScale();
  const stageRect = document.querySelector('.stage-inner').getBoundingClientRect();
  node.x = (event.clientX - stageRect.left) / scale;
  node.y = (event.clientY - stageRect.top) / scale;
  node.vx = 0;
  node.vy = 0;
  if (Math.abs(event.clientX - node.downX) + Math.abs(event.clientY - node.downY) > 5) node.moved = true;
}

function endDrag(event, node) {
  if (!node.isDragging) return;
  node.isDragging = false;
  node.pointerId = null;
  node.el.classList.remove('dragging');
  try { node.el.releasePointerCapture(event.pointerId); } catch (_) {}

  // The central node is an anchor/search term, not a navigation button.
  // This prevents the field from disappearing when the centre is clicked again.
  if (node.isCenter) return;

  const next = getChildrenForNode(node.label, node.mode);
  if (next && Array.isArray(next.children)) {
    setTimeout(() => renderNetwork(next), node.moved ? 140 : 40);
  }
}

function makeLink(a, b, length = null, strength = null) {
  const dx = b.x - a.x;
  const dy = b.y - a.y;
  return {
    a,
    b,
    length: length || Math.max(80, Math.min(250, Math.sqrt(dx * dx + dy * dy))),
    strength: strength || PHYSICS.linkSpring,
    line: document.createElementNS('http://www.w3.org/2000/svg', 'line')
  };
}

function renderNetwork({ center, children, mode }) {
  currentMode = mode;
  network.innerHTML = '';
  lines.innerHTML = '';
  activeNode = null;
  nodes = [];
  links = [];

  const shown = visibleTerms(children, mode);
  let centerNode = null;
  if (mode !== 'root') {
    centerNode = createNode(center, mode, true, 0, shown.length);
    centerNode.el.classList.add('selected');
    nodes.push(centerNode);
  }

  const childNodes = shown.map((term, i) => createNode(term, mode, false, i, shown.length));
  nodes.push(...childNodes);

  if (mode === 'root') {
    // Root is a loose chain only: Theme → Material → Process → Technique.
    // No closing loop and no cross-links.
    for (let i = 0; i < childNodes.length - 1; i++) {
      links.push(makeLink(childNodes[i], childNodes[i + 1], 165 + Math.random() * 32, 0.008));
    }
  } else if (centerNode) {
    // Branch only from the current core to its subset.
    // Children are not connected to each other: more urchin/starfish than constellation.
    childNodes.forEach(n => {
      const len = currentMode === 'terms'
        ? 178 + Math.random() * 126
        : 145 + Math.random() * 96;
      links.push(makeLink(centerNode, n, len, 0.007));
    });
  }

  links.forEach(link => {
    link.line.setAttribute('class', 'net-line');
    lines.appendChild(link.line);
  });

  if (!simulationRunning) {
    simulationRunning = true;
    requestAnimationFrame(tick);
  }
}

function tick() {
  updatePhysics();
  drawNetwork();
  requestAnimationFrame(tick);
}

function updatePhysics() {
  for (let i = 0; i < nodes.length; i++) {
    for (let j = i + 1; j < nodes.length; j++) {
      repel(nodes[i], nodes[j]);
    }
  }

  links.forEach(applySpring);

  nodes.forEach(node => {
    if (!node.isDragging) {
      node.vx += (FIELD.centreX - node.x) * PHYSICS.centrePull;
      node.vy += (FIELD.centreY - node.y) * PHYSICS.centrePull;
      node.vx += (node.homeX - node.x) * PHYSICS.homePull;
      node.vy += (node.homeY - node.y) * PHYSICS.homePull;
      node.vx += (Math.random() - 0.5) * PHYSICS.restlessness;
      node.vy += (Math.random() - 0.5) * PHYSICS.restlessness;
      const speed = Math.sqrt(node.vx * node.vx + node.vy * node.vy);
      if (speed > PHYSICS.maxSpeed) {
        node.vx = (node.vx / speed) * PHYSICS.maxSpeed;
        node.vy = (node.vy / speed) * PHYSICS.maxSpeed;
      }
      node.x += node.vx;
      node.y += node.vy;
      node.vx *= PHYSICS.friction;
      node.vy *= PHYSICS.friction;
    }
    node.x = Math.max(FIELD.minX + node.r * 0.15, Math.min(FIELD.maxX - node.r * 0.15, node.x));
    node.y = Math.max(FIELD.minY, Math.min(FIELD.maxY, node.y));
  });
}

function repel(a, b) {
  const dx = b.x - a.x;
  const dy = b.y - a.y;
  const distSq = dx * dx + dy * dy + 0.01;
  const dist = Math.sqrt(distSq);
  const minDist = (a.r + b.r) * 0.32;
  const force = (PHYSICS.repulsion / distSq) + (dist < minDist ? (minDist - dist) * 0.05 : 0);
  const fx = (dx / dist) * force;
  const fy = (dy / dist) * force;
  if (!a.isDragging) {
    a.vx -= fx;
    a.vy -= fy;
  }
  if (!b.isDragging) {
    b.vx += fx;
    b.vy += fy;
  }
}

function applySpring(link) {
  const a = link.a;
  const b = link.b;
  const dx = b.x - a.x;
  const dy = b.y - a.y;
  const dist = Math.sqrt(dx * dx + dy * dy) || 1;
  const stretch = dist - link.length;
  const force = stretch * link.strength;
  const fx = (dx / dist) * force;
  const fy = (dy / dist) * force;
  if (!a.isDragging) {
    a.vx += fx;
    a.vy += fy;
  }
  if (!b.isDragging) {
    b.vx -= fx;
    b.vy -= fy;
  }
}

function drawNetwork() {
  links.forEach(link => {
    link.line.setAttribute('x1', link.a.x.toFixed(2));
    link.line.setAttribute('y1', link.a.y.toFixed(2));
    link.line.setAttribute('x2', link.b.x.toFixed(2));
    link.line.setAttribute('y2', link.b.y.toFixed(2));
  });
  nodes.forEach(node => {
    node.el.style.left = `${node.x}px`;
    node.el.style.top = `${node.y}px`;
  });
}

categoryButtons.forEach(btn => btn.addEventListener('click', () => setActiveCategory(btn.dataset.category)));
resetBtn.addEventListener('click', resetAll);
searchBtn.addEventListener('click', () => {
  if (!activeResource) {
    statusText.textContent = 'Choose collections, channels, or writing, then select a resource.';
    return;
  }
  openResource(activeResource, searchInput.value);
});
searchInput.addEventListener('input', () => {
  if (searchInput.value.trim()) statusText.textContent = 'Custom search term ready.';
});
searchInput.addEventListener('keydown', (event) => {
  if (event.key === 'Enter') searchBtn.click();
});

resetAll();
