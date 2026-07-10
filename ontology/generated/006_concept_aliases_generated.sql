PRAGMA foreign_keys = ON;

-- Generated from ./ontology/source/concepts.csv

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'process notes', 'process-notes'
FROM concepts c
WHERE c.slug = 'documentation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'studio evidence', 'studio-evidence'
FROM concepts c
WHERE c.slug = 'documentation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'documentation practice', 'documentation-practice'
FROM concepts c
WHERE c.slug = 'documentation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'noticing', 'noticing'
FROM concepts c
WHERE c.slug = 'observation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'close looking', 'close-looking'
FROM concepts c
WHERE c.slug = 'observation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'attending', 'attending'
FROM concepts c
WHERE c.slug = 'observation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'critical reflection', 'critical-reflection'
FROM concepts c
WHERE c.slug = 'reflection';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'reflective writing', 'reflective-writing'
FROM concepts c
WHERE c.slug = 'reflection';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'self-evaluation', 'self-evaluation'
FROM concepts c
WHERE c.slug = 'reflection';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'fieldwork notes', 'fieldwork-notes'
FROM concepts c
WHERE c.slug = 'field-notes';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'site notes', 'site-notes'
FROM concepts c
WHERE c.slug = 'field-notes';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'research notes', 'research-notes'
FROM concepts c
WHERE c.slug = 'field-notes';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'studio journal', 'studio-journal'
FROM concepts c
WHERE c.slug = 'process-journal';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'process diary', 'process-diary'
FROM concepts c
WHERE c.slug = 'process-journal';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'visual journal', 'visual-journal'
FROM concepts c
WHERE c.slug = 'process-journal';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'sketchbook', 'sketchbook'
FROM concepts c
WHERE c.slug = 'visual-diary';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'visual journal', 'visual-journal'
FROM concepts c
WHERE c.slug = 'visual-diary';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'image log', 'image-log'
FROM concepts c
WHERE c.slug = 'visual-diary';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'work log', 'work-log'
FROM concepts c
WHERE c.slug = 'studio-log';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'making log', 'making-log'
FROM concepts c
WHERE c.slug = 'studio-log';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'studio record', 'studio-record'
FROM concepts c
WHERE c.slug = 'studio-log';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'mark-up', 'mark-up'
FROM concepts c
WHERE c.slug = 'annotation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'notes', 'notes'
FROM concepts c
WHERE c.slug = 'annotation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'commentary', 'commentary'
FROM concepts c
WHERE c.slug = 'annotation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'capture', 'capture'
FROM concepts c
WHERE c.slug = 'recording';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'audio recording', 'audio-recording'
FROM concepts c
WHERE c.slug = 'recording';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'video recording', 'video-recording'
FROM concepts c
WHERE c.slug = 'recording';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'proof', 'proof'
FROM concepts c
WHERE c.slug = 'evidence';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'trace', 'trace'
FROM concepts c
WHERE c.slug = 'evidence';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'record', 'record'
FROM concepts c
WHERE c.slug = 'evidence';
