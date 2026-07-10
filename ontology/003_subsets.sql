-- ============================================================
-- SEED SUBSETS
-- ============================================================

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Body & identity', 'body-and-identity', 1
FROM concept_sets WHERE slug = 'theme';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Memory & archive', 'memory-and-archive', 2
FROM concept_sets WHERE slug = 'theme';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Place & environment', 'place-and-environment', 3
FROM concept_sets WHERE slug = 'theme';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Power & society', 'power-and-society', 4
FROM concept_sets WHERE slug = 'theme';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Care & relation', 'care-and-relation', 5
FROM concept_sets WHERE slug = 'theme';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Belief & ritual', 'belief-and-ritual', 6
FROM concept_sets WHERE slug = 'theme';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Language & image', 'language-and-image', 7
FROM concept_sets WHERE slug = 'theme';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Technology & media', 'technology-and-media', 8
FROM concept_sets WHERE slug = 'theme';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Time & change', 'time-and-change', 9
FROM concept_sets WHERE slug = 'theme';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Feeling & atmosphere', 'feeling-and-atmosphere', 10
FROM concept_sets WHERE slug = 'theme';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Labour & everyday life', 'labour-and-everyday-life', 11
FROM concept_sets WHERE slug = 'theme';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Fantasy & worldbuilding', 'fantasy-and-worldbuilding', 12
FROM concept_sets WHERE slug = 'theme';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Drawing & mark-making', 'drawing-and-mark-making', 1
FROM concept_sets WHERE slug = 'material';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Painting & surface', 'painting-and-surface', 2
FROM concept_sets WHERE slug = 'material';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Paper & print', 'paper-and-print', 3
FROM concept_sets WHERE slug = 'material';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Fibre & textile', 'fibre-and-textile', 4
FROM concept_sets WHERE slug = 'material';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Industrial & structural', 'industrial-and-structural', 5
FROM concept_sets WHERE slug = 'material';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Clay & earth', 'clay-and-earth', 6
FROM concept_sets WHERE slug = 'material';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Found & everyday objects', 'found-and-everyday-objects', 7
FROM concept_sets WHERE slug = 'material';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Lens & screen', 'lens-and-screen', 8
FROM concept_sets WHERE slug = 'material';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Sound & voice', 'sound-and-voice', 9
FROM concept_sets WHERE slug = 'material';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Organic & environmental', 'organic-and-environmental', 10
FROM concept_sets WHERE slug = 'material';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Synthetic & manufactured', 'synthetic-and-manufactured', 11
FROM concept_sets WHERE slug = 'material';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Digital & coded', 'digital-and-coded', 12
FROM concept_sets WHERE slug = 'material';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Collect & archive', 'collect-and-archive', 1
FROM concept_sets WHERE slug = 'process';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Cut & remove', 'cut-and-remove', 2
FROM concept_sets WHERE slug = 'process';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Join & repair', 'join-and-repair', 3
FROM concept_sets WHERE slug = 'process';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Layer & transform', 'layer-and-transform', 4
FROM concept_sets WHERE slug = 'process';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Repeat & sequence', 'repeat-and-sequence', 5
FROM concept_sets WHERE slug = 'process';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Observe & document', 'observe-and-document', 6
FROM concept_sets WHERE slug = 'process';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Map & trace', 'map-and-trace', 7
FROM concept_sets WHERE slug = 'process';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Move & perform', 'move-and-perform', 8
FROM concept_sets WHERE slug = 'process';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Arrange & display', 'arrange-and-display', 9
FROM concept_sets WHERE slug = 'process';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Exchange & collaborate', 'exchange-and-collaborate', 10
FROM concept_sets WHERE slug = 'process';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Distort & disrupt', 'distort-and-disrupt', 11
FROM concept_sets WHERE slug = 'process';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Preserve & decay', 'preserve-and-decay', 12
FROM concept_sets WHERE slug = 'process';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Drawing', 'drawing', 1
FROM concept_sets WHERE slug = 'technique';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Painting', 'painting', 2
FROM concept_sets WHERE slug = 'technique';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Printmaking', 'printmaking', 3
FROM concept_sets WHERE slug = 'technique';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Photography', 'photography', 4
FROM concept_sets WHERE slug = 'technique';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Video', 'video', 5
FROM concept_sets WHERE slug = 'technique';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Sound', 'sound', 6
FROM concept_sets WHERE slug = 'technique';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Sculpture', 'sculpture', 7
FROM concept_sets WHERE slug = 'technique';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Installation', 'installation', 8
FROM concept_sets WHERE slug = 'technique';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Textile', 'textile', 9
FROM concept_sets WHERE slug = 'technique';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Ceramics', 'ceramics', 10
FROM concept_sets WHERE slug = 'technique';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Performance', 'performance', 11
FROM concept_sets WHERE slug = 'technique';

INSERT OR IGNORE INTO concept_subsets (set_id, name, slug, display_order)
SELECT id, 'Digital media', 'digital-media', 12
FROM concept_sets WHERE slug = 'technique';