const $ = id => document.getElementById(id);
const toggles = ['toggleDuration','toggleEdition','toggleCopyright','toggleCourtesy'];
let mode = 'one';
let plainCredit = '';

toggles.forEach(id => $(id).addEventListener('click', () => $(id).classList.toggle('selected')));
$('modeOneLine').addEventListener('click', () => setMode('one'));
$('modeStacked').addEventListener('click', () => setMode('stacked'));
$('printBtn').addEventListener('click', printCredit);
$('copyBtn').addEventListener('click', copyCredit);
$('clearBtn').addEventListener('click', clearAll);

document.querySelectorAll('input').forEach(i => i.addEventListener('keydown', e => {
  if(e.key === 'Enter') printCredit();
}));

function val(id){ return $(id).value.trim(); }
function esc(s){ return s.replace(/[&<>"]/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;'}[c])); }
function setMode(next){
  mode = next;
  $('modeOneLine').classList.toggle('selected', mode === 'one');
  $('modeStacked').classList.toggle('selected', mode === 'stacked');
  if(plainCredit) printCredit();
}
function buildParts(){
  const artist = val('artist'), title = val('title'), year = val('year'), materials = val('materials');
  const h = val('height'), w = val('width'), d = val('depth');
  const dims = [h,w,d].filter(Boolean).join(' × ') + ([h,w,d].some(Boolean) ? ' cm' : '');
  const duration = $('toggleDuration').classList.contains('selected') ? [val('minutes') && `${val('minutes')} min`, val('seconds') && `${val('seconds')} sec`].filter(Boolean).join(' ') : '';
  const edition = $('toggleEdition').classList.contains('selected') && (val('editionNo') || val('editionOf')) ? `edition ${val('editionNo') || '—'} of ${val('editionOf') || '—'}` : '';
  const copyright = $('toggleCopyright').classList.contains('selected') ? `© ${year || new Date().getFullYear()} ${artist}`.trim() : '';
  const courtesy = $('toggleCourtesy').classList.contains('selected') ? 'courtesy of the artist' : '';
  return {artist,title,year,materials,dims,duration,edition,copyright,courtesy};
}
function printCredit(){
  const p = buildParts();
  const out = $('paper-output');
  out.classList.toggle('stacked', mode === 'stacked');
  if(mode === 'one'){
    const bits = [
      p.artist && `<span class="piece">${esc(p.artist)}</span>`,
      p.title && `<span class="piece"><em>${esc(p.title)}</em></span>`,
      p.year && `<span class="piece">${esc(p.year)}</span>`,
      p.materials && `<span class="piece">${esc(p.materials)}</span>`,
      p.dims && `<span class="piece">${esc(p.dims)}</span>`,
      p.duration && `<span class="piece">${esc(p.duration)}</span>`,
      p.edition && `<span class="piece">${esc(p.edition)}</span>`,
      p.copyright && `<span class="piece">${esc(p.copyright)}</span>`,
      p.courtesy && `<span class="piece">${esc(p.courtesy)}</span>`
    ].filter(Boolean);
    plainCredit = [p.artist, p.title, p.year, p.materials, p.dims, p.duration, p.edition, p.copyright, p.courtesy].filter(Boolean).join(', ');
    out.innerHTML = bits.length ? `<div class="line">${bits.join(', ')}</div>` : ' ';
  } else {
    const lines = [esc(p.artist), p.title ? `<em>${esc(p.title)}</em>` : '', esc(p.year), esc(p.materials), esc(p.dims), esc(p.duration), esc(p.edition), esc(p.copyright), esc(p.courtesy)].filter(Boolean);
    plainCredit = [p.artist, p.title, p.year, p.materials, p.dims, p.duration, p.edition, p.copyright, p.courtesy].filter(Boolean).join('\n');
    out.innerHTML = `<div class="stack">${lines.join('<br>')}</div>`;
  }
}
function copyCredit() {
  if (!plainCredit) printCredit();

  const text = plainCredit;
  const temp = document.createElement("textarea");

  temp.value = text;
  temp.setAttribute("readonly", "");
  temp.style.position = "fixed";
  temp.style.left = "-9999px";

  document.body.appendChild(temp);
  temp.select();

  const success = document.execCommand("copy");
  document.body.removeChild(temp);

  showToast(success ? "Copied" : "Copy failed");
}

function clearAll(){
  document.querySelectorAll('input').forEach(i => i.value = '');
  toggles.forEach(id => $(id).classList.remove('selected'));
  $('paper-output').innerHTML = '';
  plainCredit = '';
}
function showToast(msg){
  const t = $('toast'); t.textContent = msg; t.classList.add('show');
  setTimeout(()=>t.classList.remove('show'), 1200);
}
