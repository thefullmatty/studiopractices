PRAGMA foreign_keys = ON;

-- ============================================================
-- STUDIO PRACTICES: CONCEPT ONTOLOGY
-- Cloudflare D1 / SQLite compatible
-- ============================================================

CREATE TABLE IF NOT EXISTS concept_sets (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL UNIQUE,
  slug TEXT NOT NULL UNIQUE,
  description TEXT,
  active INTEGER NOT NULL DEFAULT 1 CHECK (active IN (0,1)),
  display_order INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS concept_subsets (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  set_id INTEGER NOT NULL,
  name TEXT NOT NULL,
  slug TEXT NOT NULL,
  description TEXT,
  active INTEGER NOT NULL DEFAULT 1 CHECK (active IN (0,1)),
  display_order INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE(set_id, slug),
  FOREIGN KEY (set_id) REFERENCES concept_sets(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS concepts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  description TEXT,
  active INTEGER NOT NULL DEFAULT 1 CHECK (active IN (0,1)),
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Many-to-many: one concept may belong to several subsets.
CREATE TABLE IF NOT EXISTS concept_subset_links (
  concept_id INTEGER NOT NULL,
  subset_id INTEGER NOT NULL,
  display_order INTEGER NOT NULL DEFAULT 0,
  is_primary INTEGER NOT NULL DEFAULT 0 CHECK (is_primary IN (0,1)),
  PRIMARY KEY (concept_id, subset_id),
  FOREIGN KEY (concept_id) REFERENCES concepts(id) ON DELETE CASCADE,
  FOREIGN KEY (subset_id) REFERENCES concept_subsets(id) ON DELETE CASCADE
);

-- Optional aliases/synonyms for future search expansion.
CREATE TABLE IF NOT EXISTS concept_aliases (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  concept_id INTEGER NOT NULL,
  alias TEXT NOT NULL,
  slug TEXT NOT NULL,
  UNIQUE(concept_id, slug),
  FOREIGN KEY (concept_id) REFERENCES concepts(id) ON DELETE CASCADE
);

-- Optional concept-to-concept relations for future pathways.
CREATE TABLE IF NOT EXISTS concept_relationships (
  source_concept_id INTEGER NOT NULL,
  target_concept_id INTEGER NOT NULL,
  relationship_type TEXT NOT NULL DEFAULT 'related',
  weight REAL NOT NULL DEFAULT 1.0,
  note TEXT,
  PRIMARY KEY (source_concept_id, target_concept_id, relationship_type),
  CHECK (source_concept_id <> target_concept_id),
  FOREIGN KEY (source_concept_id) REFERENCES concepts(id) ON DELETE CASCADE,
  FOREIGN KEY (target_concept_id) REFERENCES concepts(id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_concept_subsets_set_id
  ON concept_subsets(set_id);

CREATE INDEX IF NOT EXISTS idx_concept_subset_links_subset_id
  ON concept_subset_links(subset_id);

CREATE INDEX IF NOT EXISTS idx_concept_aliases_slug
  ON concept_aliases(slug);

CREATE INDEX IF NOT EXISTS idx_concept_relationships_source
  ON concept_relationships(source_concept_id);

CREATE INDEX IF NOT EXISTS idx_concept_relationships_target
  ON concept_relationships(target_concept_id);

-- ============================================================
-- SEED SETS
-- ============================================================


INSERT OR IGNORE INTO concept_sets (name, slug, display_order) VALUES ('Theme', 'theme', 1);

INSERT OR IGNORE INTO concept_sets (name, slug, display_order) VALUES ('Material', 'material', 2);

INSERT OR IGNORE INTO concept_sets (name, slug, display_order) VALUES ('Process', 'process', 3);

INSERT OR IGNORE INTO concept_sets (name, slug, display_order) VALUES ('Technique', 'technique', 4);


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


-- ============================================================
-- SEED CONCEPTS AND LINKS
-- ============================================================

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('body', 'body');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'body';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('self-image', 'self-image');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'self-image';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('gender', 'gender');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'gender';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('gender politics', 'gender-politics');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'gender-politics';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('feminism', 'feminism');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'feminism';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('queer identity', 'queer-identity');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'queer-identity';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('trans identity', 'trans-identity');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'trans-identity';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sexuality', 'sexuality');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'sexuality';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('masculinity', 'masculinity');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'masculinity';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('disability', 'disability');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'disability';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('neurodiversity', 'neurodiversity');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'neurodiversity';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fat politics', 'fat-politics');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'fat-politics';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('bodily autonomy', 'bodily-autonomy');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'bodily-autonomy';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('portraiture', 'portraiture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'portraiture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('masking', 'masking');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'masking';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('embodiment', 'embodiment');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'embodiment';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('vulnerability', 'vulnerability');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'vulnerability';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('transformation', 'transformation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'transformation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('intimacy', 'intimacy');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'intimacy';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('persona', 'persona');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'persona';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('visibility', 'visibility');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'visibility';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('alter ego', 'alter-ego');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'alter-ego';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('representation', 'representation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'representation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('memory', 'memory');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'memory';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('archive', 'archive');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'archive';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('trace', 'trace');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'trace';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('family history', 'family-history');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'family-history';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('inheritance', 'inheritance');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'inheritance';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('nostalgia', 'nostalgia');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'nostalgia';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('grief', 'grief');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'grief';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('absence', 'absence');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'absence';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('preservation', 'preservation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'preservation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('documentation', 'documentation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'documentation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('testimony', 'testimony');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'testimony';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('remembrance', 'remembrance');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'remembrance';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('collective memory', 'collective-memory');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'collective-memory';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('cultural memory', 'cultural-memory');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'cultural-memory';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('counter-archive', 'counter-archive');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'counter-archive';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('oral history', 'oral-history');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'oral-history';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('erasure', 'erasure');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'erasure';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('silence', 'silence');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'silence';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('loss', 'loss');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'loss';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('witness', 'witness');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'witness';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('evidence', 'evidence');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'evidence';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('memorial', 'memorial');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'memorial';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('intergenerational memory', 'intergenerational-memory');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'intergenerational-memory';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('place', 'place');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'place';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('landscape', 'landscape');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'landscape';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ecology', 'ecology');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'ecology';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('climate', 'climate');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'climate';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('climate justice', 'climate-justice');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'climate-justice';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('Country', 'country');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'country';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('land rights', 'land-rights');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'land-rights';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('Indigenous sovereignty', 'indigenous-sovereignty');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'indigenous-sovereignty';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('First Nations knowledge', 'first-nations-knowledge');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'first-nations-knowledge';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('place-based knowledge', 'place-based-knowledge');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'place-based-knowledge';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('home', 'home');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'home';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('migration', 'migration');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'migration';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('diaspora', 'diaspora');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'diaspora';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('exile', 'exile');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'exile';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('displacement', 'displacement');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'displacement';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('border politics', 'border-politics');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'border-politics';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('refugee experience', 'refugee-experience');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'refugee-experience';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('homeland', 'homeland');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'homeland';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('water rights', 'water-rights');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'water-rights';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('extraction', 'extraction');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'extraction';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('pollution', 'pollution');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'pollution';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('habitat', 'habitat');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'habitat';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('site', 'site');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'site';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('occupation', 'occupation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'occupation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('power', 'power');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'power';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('protest', 'protest');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'protest';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('resistance', 'resistance');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'resistance';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('activism', 'activism');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'activism';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('surveillance', 'surveillance');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'surveillance';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('policing', 'policing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'policing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('incarceration', 'incarceration');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'incarceration';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('institution', 'institution');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'institution';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('institutional critique', 'institutional-critique');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'institutional-critique';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('colonialism', 'colonialism');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'colonialism';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('settler colonialism', 'settler-colonialism');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'settler-colonialism';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('decolonisation', 'decolonisation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'decolonisation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('race', 'race');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'race';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('racism', 'racism');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'racism';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('anti-racism', 'anti-racism');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'anti-racism';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('Black studies', 'black-studies');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'black-studies';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('Blackness', 'blackness');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'blackness';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('whiteness', 'whiteness');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'whiteness';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('critical race theory', 'critical-race-theory');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'critical-race-theory';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('censorship', 'censorship');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'censorship';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('class', 'class');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'class';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('capitalism', 'capitalism');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'capitalism';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('labour politics', 'labour-politics');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'labour-politics';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('law', 'law');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'law';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('violence', 'violence');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 25, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'violence';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('public space', 'public-space');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 26, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'public-space';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('authority', 'authority');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 27, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'authority';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('care', 'care');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'care';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('kinship', 'kinship');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'kinship';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('community', 'community');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'community';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('friendship', 'friendship');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'friendship';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('repair', 'repair');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'repair';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('support', 'support');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'support';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('dependency', 'dependency');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'dependency';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hospitality', 'hospitality');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'hospitality';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('tenderness', 'tenderness');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'tenderness';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('responsibility', 'responsibility');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'responsibility';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('reciprocity', 'reciprocity');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'reciprocity';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('listening', 'listening');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'listening';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('mutual aid', 'mutual-aid');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'mutual-aid';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('community care', 'community-care');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'community-care';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('access', 'access');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'access';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('consent', 'consent');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'consent';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('accountability', 'accountability');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'accountability';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('grief work', 'grief-work');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'grief-work';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('social practice', 'social-practice');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'social-practice';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('participation', 'participation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'participation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('collective responsibility', 'collective-responsibility');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'collective-responsibility';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ethics', 'ethics');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'ethics';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('interdependence', 'interdependence');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'interdependence';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ritual', 'ritual');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'ritual';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('spirituality', 'spirituality');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'spirituality';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('myth', 'myth');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'myth';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('prayer', 'prayer');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'prayer';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ceremony', 'ceremony');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'ceremony';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sacred image', 'sacred-image');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'sacred-image';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('iconoclasm', 'iconoclasm');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'iconoclasm';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('religious trauma', 'religious-trauma');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'religious-trauma';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('spiritual practice', 'spiritual-practice');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'spiritual-practice';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('taboo', 'taboo');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'taboo';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('magic', 'magic');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'magic';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('superstition', 'superstition');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'superstition';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('repetition', 'repetition');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'repetition';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('devotion', 'devotion');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'devotion';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('mythology', 'mythology');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'mythology';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('moral panic', 'moral-panic');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'moral-panic';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('cult', 'cult');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'cult';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('secular ritual', 'secular-ritual');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'secular-ritual';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('belief systems', 'belief-systems');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'belief-systems';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ancestral knowledge', 'ancestral-knowledge');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'ancestral-knowledge';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'transformation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('offering', 'offering');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'offering';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sacred space', 'sacred-space');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'sacred-space';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('text', 'text');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'text';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('translation', 'translation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'translation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('storytelling', 'storytelling');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'storytelling';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('symbol', 'symbol');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'symbol';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sign', 'sign');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'sign';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('code', 'code');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'code';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('misreading', 'misreading');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'misreading';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('instruction', 'instruction');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'instruction';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('voice', 'voice');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'voice';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('naming', 'naming');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'naming';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('caption', 'caption');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'caption';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('illegibility', 'illegibility');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'illegibility';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'representation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('misrepresentation', 'misrepresentation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'misrepresentation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('stereotype', 'stereotype');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'stereotype';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'testimony';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'erasure';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'silence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'visibility';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('refusal', 'refusal');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'refusal';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('counter-narrative', 'counter-narrative');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'counter-narrative';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('image circulation', 'image-circulation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'image-circulation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('authorship', 'authorship');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'authorship';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('speaking back', 'speaking-back');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'speaking-back';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('screen', 'screen');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'screen';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('internet', 'internet');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'internet';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('gaming', 'gaming');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'gaming';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('social media', 'social-media');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'social-media';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('AI', 'ai');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'ai';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('camera', 'camera');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'camera';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('algorithm', 'algorithm');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'algorithm';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('glitch', 'glitch');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'glitch';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('data', 'data');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'data';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('broadcast', 'broadcast');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'broadcast';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('interface', 'interface');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'interface';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('network', 'network');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'network';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('digital surveillance', 'digital-surveillance');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'digital-surveillance';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('algorithmic bias', 'algorithmic-bias');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'algorithmic-bias';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('data colonialism', 'data-colonialism');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'data-colonialism';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('platform culture', 'platform-culture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'platform-culture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('online identity', 'online-identity');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'online-identity';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('misinformation', 'misinformation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'misinformation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('attention economy', 'attention-economy');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'attention-economy';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('AI ethics', 'ai-ethics');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'ai-ethics';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('digital labour', 'digital-labour');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'digital-labour';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('meme culture', 'meme-culture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'meme-culture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('screen politics', 'screen-politics');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'screen-politics';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('decay', 'decay');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'decay';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('growth', 'growth');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'growth';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('duration', 'duration');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'duration';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('erosion', 'erosion');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'erosion';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ruin', 'ruin');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'ruin';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('weathering', 'weathering');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'weathering';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ageing', 'ageing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'ageing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'transformation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('cycle', 'cycle');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'cycle';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('delay', 'delay');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'delay';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('accumulation', 'accumulation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'accumulation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('impermanence', 'impermanence');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'impermanence';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('futurity', 'futurity');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'futurity';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('history', 'history');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'history';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('return', 'return');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'return';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('survival', 'survival');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'survival';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('collapse', 'collapse');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'collapse';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('renewal', 'renewal');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'renewal';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'repetition';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('aftermath', 'aftermath');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'aftermath';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('legacy', 'legacy');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'legacy';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'inheritance';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('maintenance', 'maintenance');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'maintenance';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('entropy', 'entropy');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'entropy';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('joy', 'joy');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'joy';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('anxiety', 'anxiety');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'anxiety';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('boredom', 'boredom');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'boredom';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('desire', 'desire');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'desire';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('shame', 'shame');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'shame';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fear', 'fear');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'fear';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('melancholy', 'melancholy');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'melancholy';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('humour', 'humour');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'humour';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('suspense', 'suspense');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'suspense';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('awkwardness', 'awkwardness');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'awkwardness';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('wonder', 'wonder');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'wonder';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('tension', 'tension');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'tension';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'grief';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('anger', 'anger');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'anger';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'tenderness';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('alienation', 'alienation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'alienation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'intimacy';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('discomfort', 'discomfort');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'discomfort';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hope', 'hope');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'hope';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('dread', 'dread');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'dread';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('longing', 'longing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'longing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('exhaustion', 'exhaustion');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'exhaustion';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('pleasure', 'pleasure');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'pleasure';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('uncertainty', 'uncertainty');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'uncertainty';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('work', 'work');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'work';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('routine', 'routine');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'routine';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('domestic labour', 'domestic-labour');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'domestic-labour';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('shopping', 'shopping');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'shopping';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('transport', 'transport');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'transport';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('food', 'food');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'food';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('cleaning', 'cleaning');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'cleaning';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('office', 'office');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'office';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('service', 'service');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'service';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'repetition';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('leisure', 'leisure');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'leisure';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'maintenance';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'labour-politics';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'digital-labour';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('unpaid labour', 'unpaid-labour');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'unpaid-labour';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('care work', 'care-work');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'care-work';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('consumer culture', 'consumer-culture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'consumer-culture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'class';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('precarity', 'precarity');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'precarity';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('productivity', 'productivity');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'productivity';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('bureaucracy', 'bureaucracy');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'bureaucracy';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('convenience', 'convenience');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'convenience';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'exhaustion';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'survival';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ordinary life', 'ordinary-life');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 25, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'ordinary-life';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fantasy', 'fantasy');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'fantasy';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('worldbuilding', 'worldbuilding');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'worldbuilding';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('character', 'character');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'character';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'myth';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('folklore', 'folklore');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'folklore';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('science fiction', 'science-fiction');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'science-fiction';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('horror', 'horror');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'horror';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('anime', 'anime');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'anime';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'gaming';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('cosplay', 'cosplay');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'cosplay';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('dream', 'dream');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'dream';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('speculative future', 'speculative-future');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'speculative-future';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'mythology';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fan culture', 'fan-culture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'fan-culture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('role-play', 'role-play');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'role-play';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('avatar', 'avatar');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'avatar';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('monster', 'monster');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'monster';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'magic';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('alternative history', 'alternative-history');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'alternative-history';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('utopia', 'utopia');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'utopia';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('dystopia', 'dystopia');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'dystopia';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('world-making', 'world-making');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'world-making';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('escapism', 'escapism');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'escapism';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('imaginary place', 'imaginary-place');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'imaginary-place';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 25, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'theme'
WHERE c.slug = 'transformation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('graphite', 'graphite');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'graphite';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('charcoal', 'charcoal');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'charcoal';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ink', 'ink');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'ink';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('pencil', 'pencil');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'pencil';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('marker', 'marker');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'marker';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('line', 'line');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'line';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('gesture', 'gesture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'gesture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('notation', 'notation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'notation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('scribble', 'scribble');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'scribble';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('stain', 'stain');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'stain';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('rubbing', 'rubbing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'rubbing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('diagram', 'diagram');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'diagram';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('contour', 'contour');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'contour';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('pressure', 'pressure');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'pressure';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'erasure';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('smudge', 'smudge');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'smudge';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hand-drawn mark', 'hand-drawn-mark');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'hand-drawn-mark';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('automatic mark', 'automatic-mark');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'automatic-mark';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('annotation', 'annotation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'annotation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sketch', 'sketch');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'sketch';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('diagrammatic image', 'diagrammatic-image');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'diagrammatic-image';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'trace';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('paint', 'paint');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'paint';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('pigment', 'pigment');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'pigment';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('canvas', 'canvas');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'canvas';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('colour', 'colour');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'colour';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('texture', 'texture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'texture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('glaze', 'glaze');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'glaze';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('wash', 'wash');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'wash';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ground', 'ground');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'ground';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('skin', 'skin');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'skin';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('layer', 'layer');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'layer';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'stain';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sheen', 'sheen');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'sheen';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('opacity', 'opacity');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'opacity';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('transparency', 'transparency');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'transparency';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('brushstroke', 'brushstroke');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'brushstroke';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('impasto', 'impasto');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'impasto';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('flatness', 'flatness');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'flatness';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('surface tension', 'surface-tension');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'surface-tension';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('underpainting', 'underpainting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'underpainting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('colour field', 'colour-field');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'colour-field';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('painted object', 'painted-object');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'painted-object';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('mural surface', 'mural-surface');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'mural-surface';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('material surface', 'material-surface');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'material-surface';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('paper', 'paper');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'paper';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('cardboard', 'cardboard');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'cardboard';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('book', 'book');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'book';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('zine', 'zine');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'zine';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('poster', 'poster');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'poster';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('photocopy', 'photocopy');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'photocopy';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('risograph', 'risograph');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'risograph';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('screen print', 'screen-print');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'screen-print';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('etching', 'etching');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'etching';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('collage', 'collage');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'collage';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('label', 'label');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'label';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('document', 'document');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'document';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('publication', 'publication');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'publication';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('edition', 'edition');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'edition';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('multiple', 'multiple');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'multiple';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('page', 'page');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'page';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fold', 'fold');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'fold';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('binding', 'binding');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'binding';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('newsprint', 'newsprint');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'newsprint';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('archive paper', 'archive-paper');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'archive-paper';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('printed matter', 'printed-matter');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'printed-matter';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('flyer', 'flyer');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'flyer';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('handout', 'handout');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'handout';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('certificate', 'certificate');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'certificate';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fabric', 'fabric');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'fabric';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('thread', 'thread');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'thread';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('cloth', 'cloth');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'cloth';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('garment', 'garment');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'garment';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('yarn', 'yarn');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'yarn';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('rope', 'rope');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'rope';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('netting', 'netting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'netting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('felt', 'felt');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'felt';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('embroidery', 'embroidery');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'embroidery';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('weaving', 'weaving');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'weaving';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('seam', 'seam');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'seam';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('soft sculpture', 'soft-sculpture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'soft-sculpture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('stitch', 'stitch');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'stitch';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('mending', 'mending');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'mending';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('quilting', 'quilting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'quilting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('knotting', 'knotting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'knotting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fibre', 'fibre');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'fibre';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('textile repair', 'textile-repair');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'textile-repair';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('inherited cloth', 'inherited-cloth');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'inherited-cloth';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('domestic textile', 'domestic-textile');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'domestic-textile';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('wearable object', 'wearable-object');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'wearable-object';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('banner', 'banner');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'banner';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('flag', 'flag');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'flag';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('tapestry', 'tapestry');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'tapestry';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('wood', 'wood');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'wood';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('metal', 'metal');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'metal';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('concrete', 'concrete');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'concrete';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('plaster', 'plaster');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'plaster';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('glass', 'glass');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'glass';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('mirror', 'mirror');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'mirror';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('steel', 'steel');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'steel';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('timber', 'timber');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'timber';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('frame', 'frame');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'frame';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('scaffold', 'scaffold');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'scaffold';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hardware', 'hardware');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'hardware';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('architecture', 'architecture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'architecture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('beam', 'beam');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'beam';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'support';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('structure', 'structure');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'structure';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('module', 'module');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'module';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fixture', 'fixture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'fixture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('bracket', 'bracket');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'bracket';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hinge', 'hinge');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'hinge';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('grid', 'grid');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'grid';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('wall', 'wall');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'wall';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('plinth', 'plinth');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'plinth';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('infrastructure', 'infrastructure');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'infrastructure';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('built environment', 'built-environment');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'built-environment';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('clay', 'clay');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'clay';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ceramic', 'ceramic');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'ceramic';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('earth', 'earth');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'earth';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('mud', 'mud');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'mud';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('vessel', 'vessel');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'vessel';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'glaze';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('terracotta', 'terracotta');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'terracotta';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('porcelain', 'porcelain');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'porcelain';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('firing', 'firing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'firing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('brick', 'brick');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'brick';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('mineral', 'mineral');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'mineral';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('dust', 'dust');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'dust';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('slip', 'slip');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'slip';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('kiln', 'kiln');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'kiln';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hand-built form', 'hand-built-form');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'hand-built-form';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('shard', 'shard');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'shard';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('tile', 'tile');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'tile';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sediment', 'sediment');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'sediment';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'ground';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('soil body', 'soil-body');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'soil-body';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fired surface', 'fired-surface');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'fired-surface';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('unfired clay', 'unfired-clay');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'unfired-clay';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('earthen material', 'earthen-material');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'earthen-material';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('geological matter', 'geological-matter');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'geological-matter';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('found object', 'found-object');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'found-object';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('packaging', 'packaging');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'packaging';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('furniture', 'furniture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'furniture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('toy', 'toy');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'toy';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('tool', 'tool');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'tool';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('receipt', 'receipt');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'receipt';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('container', 'container');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'container';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('clothing', 'clothing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'clothing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('domestic object', 'domestic-object');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'domestic-object';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('souvenir', 'souvenir');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'souvenir';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('rubbish', 'rubbish');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'rubbish';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('appliance', 'appliance');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'appliance';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('bag', 'bag');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'bag';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('bottle', 'bottle');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'bottle';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('box', 'box');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'box';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('utensil', 'utensil');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'utensil';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('chair', 'chair');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'chair';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('shelf', 'shelf');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'shelf';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'sign';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('wrapper', 'wrapper');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'wrapper';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('discarded object', 'discarded-object');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'discarded-object';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('personal object', 'personal-object');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'personal-object';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('borrowed object', 'borrowed-object');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'borrowed-object';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('everyday residue', 'everyday-residue');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'everyday-residue';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('photograph', 'photograph');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'photograph';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('video', 'video');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'video';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('projection', 'projection');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'projection';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('phone footage', 'phone-footage');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'phone-footage';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('screenshot', 'screenshot');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'screenshot';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('film still', 'film-still');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'film-still';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('animation', 'animation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'animation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'camera';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('monitor', 'monitor');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'monitor';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('slide', 'slide');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'slide';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('scan', 'scan');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'scan';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('image file', 'image-file');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'image-file';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('lens', 'lens');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'lens';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'frame';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('exposure', 'exposure');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'exposure';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('edit', 'edit');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'edit';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('moving image', 'moving-image');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'moving-image';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('screen capture', 'screen-capture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'screen-capture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('digital photograph', 'digital-photograph');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'digital-photograph';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('archival photograph', 'archival-photograph');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'archival-photograph';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('found image', 'found-image');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'found-image';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('display screen', 'display-screen');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'display-screen';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('visual record', 'visual-record');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'visual-record';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sound', 'sound');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'sound';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'voice';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('song', 'song');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'song';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('recording', 'recording');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'recording';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('noise', 'noise');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'noise';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('microphone', 'microphone');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'microphone';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('speaker', 'speaker');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'speaker';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('echo', 'echo');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'echo';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'silence';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('speech', 'speech');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'speech';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('breath', 'breath');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'breath';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'listening';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('field recording', 'field-recording');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'field-recording';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('spoken word', 'spoken-word');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'spoken-word';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('chant', 'chant');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'chant';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hum', 'hum');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'hum';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('whisper', 'whisper');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'whisper';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('amplification', 'amplification');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'amplification';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('audio loop', 'audio-loop');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'audio-loop';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('oral testimony', 'oral-testimony');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'oral-testimony';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('soundscape', 'soundscape');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'soundscape';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('vibration', 'vibration');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'vibration';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('resonance', 'resonance');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'resonance';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('soil', 'soil');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'soil';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('water', 'water');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'water';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('plants', 'plants');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'plants';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ash', 'ash');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'ash';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('salt', 'salt');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'salt';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hair', 'hair');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'hair';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'food';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('wax', 'wax');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'wax';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('smoke', 'smoke');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'smoke';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('shell', 'shell');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'shell';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('seed', 'seed');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'seed';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('bone', 'bone');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'bone';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('leaf', 'leaf');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'leaf';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('bark', 'bark');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'bark';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('root', 'root');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'root';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'fibre';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('animal trace', 'animal-trace');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'animal-trace';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('weathered matter', 'weathered-matter');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'weathered-matter';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('organic residue', 'organic-residue');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'organic-residue';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'growth';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'decay';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('compost', 'compost');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'compost';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('natural pigment', 'natural-pigment');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'natural-pigment';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('living material', 'living-material');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'living-material';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('plastic', 'plastic');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'plastic';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('vinyl', 'vinyl');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'vinyl';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('resin', 'resin');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'resin';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('rubber', 'rubber');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'rubber';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('acrylic', 'acrylic');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'acrylic';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('foam', 'foam');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'foam';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'packaging';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('silicone', 'silicone');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'silicone';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('laminate', 'laminate');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'laminate';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('artificial colour', 'artificial-colour');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'artificial-colour';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('disposable material', 'disposable-material');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'disposable-material';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('manufactured surface', 'manufactured-surface');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'manufactured-surface';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('synthetic skin', 'synthetic-skin');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'synthetic-skin';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('industrial coating', 'industrial-coating');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'industrial-coating';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('polymer', 'polymer');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'polymer';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('Perspex', 'perspex');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'perspex';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('adhesive', 'adhesive');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'adhesive';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('tape', 'tape');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'tape';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('bubble wrap', 'bubble-wrap');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'bubble-wrap';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('nylon', 'nylon');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'nylon';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('polyester', 'polyester');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'polyester';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('imitation material', 'imitation-material');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'imitation-material';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('mass-produced object', 'mass-produced-object');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'mass-produced-object';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'code';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'data';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'interface';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('website', 'website');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'website';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('game engine', 'game-engine');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'game-engine';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('AI image', 'ai-image');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'ai-image';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('3D model', '3d-model');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = '3d-model';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sensor', 'sensor');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'sensor';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('map', 'map');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'map';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('file', 'file');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'file';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('pixel', 'pixel');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'pixel';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('database', 'database');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'database';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'algorithm';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'glitch';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'scan';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('render', 'render');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'render';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('digital archive', 'digital-archive');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'digital-archive';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'network';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hyperlink', 'hyperlink');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'hyperlink';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('metadata', 'metadata');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'metadata';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('screen space', 'screen-space');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'screen-space';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('interactive system', 'interactive-system');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'interactive-system';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('generative image', 'generative-image');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'material'
WHERE c.slug = 'generative-image';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('collecting', 'collecting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'collecting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sorting', 'sorting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'sorting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('cataloguing', 'cataloguing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'cataloguing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('preserving', 'preserving');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'preserving';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('storing', 'storing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'storing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('indexing', 'indexing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'indexing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('classifying', 'classifying');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'classifying';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('gathering', 'gathering');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'gathering';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('accumulating', 'accumulating');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'accumulating';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('labelling', 'labelling');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'labelling';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('documenting', 'documenting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'documenting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('inventory', 'inventory');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'inventory';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('selecting', 'selecting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'selecting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('saving', 'saving');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'saving';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ordering', 'ordering');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'ordering';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('filing', 'filing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'filing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('grouping', 'grouping');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'grouping';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'recording';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('keeping', 'keeping');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'keeping';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'evidence';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('archive-building', 'archive-building');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'archive-building';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('collection logic', 'collection-logic');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'collection-logic';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('material research', 'material-research');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'material-research';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('cutting', 'cutting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'cutting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('tearing', 'tearing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'tearing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('burning', 'burning');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'burning';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('erasing', 'erasing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'erasing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sanding', 'sanding');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'sanding';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('deleting', 'deleting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'deleting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('obscuring', 'obscuring');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'obscuring';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('scratching', 'scratching');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'scratching';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('scraping', 'scraping');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'scraping';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('censoring', 'censoring');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'censoring';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('editing out', 'editing-out');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'editing-out';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'extraction';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('excision', 'excision');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'excision';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('removal', 'removal');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'removal';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('damage', 'damage');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'damage';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('subtraction', 'subtraction');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'subtraction';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fragmenting', 'fragmenting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'fragmenting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('piercing', 'piercing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'piercing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('trimming', 'trimming');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'trimming';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('cropping', 'cropping');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'cropping';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('breaking apart', 'breaking-apart');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'breaking-apart';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('concealment', 'concealment');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'concealment';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('reduction', 'reduction');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'reduction';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('stitching', 'stitching');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'stitching';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('gluing', 'gluing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'gluing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'binding';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('wrapping', 'wrapping');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'wrapping';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'mending';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('patching', 'patching');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'patching';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('casting', 'casting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'casting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('moulding', 'moulding');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'moulding';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('assembling', 'assembling');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'assembling';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fastening', 'fastening');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'fastening';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('suturing', 'suturing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'suturing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('reconstruction', 'reconstruction');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'reconstruction';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('joining', 'joining');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'joining';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('welding', 'welding');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'welding';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('taping', 'taping');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'taping';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('tying', 'tying');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'tying';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('weaving together', 'weaving-together');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'weaving-together';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('connecting', 'connecting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'connecting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('holding', 'holding');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'holding';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'support';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'repair';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('restoration', 'restoration');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'restoration';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('provisional fix', 'provisional-fix');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'provisional-fix';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('layering', 'layering');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'layering';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('folding', 'folding');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'folding';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('staining', 'staining');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'staining';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('soaking', 'soaking');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'soaking';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('enlarging', 'enlarging');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'enlarging';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('shrinking', 'shrinking');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'shrinking';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('distorting', 'distorting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'distorting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('translating', 'translating');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'translating';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('remixing', 'remixing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'remixing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('mutating', 'mutating');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'mutating';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('compressing', 'compressing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'compressing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('covering', 'covering');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'covering';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('coating', 'coating');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'coating';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('building up', 'building-up');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'building-up';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('changing scale', 'changing-scale');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'changing-scale';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('filtering', 'filtering');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'filtering';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('reworking', 'reworking');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'reworking';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('adapting', 'adapting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'adapting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('reformatting', 'reformatting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'reformatting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'masking';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('overprinting', 'overprinting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'overprinting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'transformation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('alteration', 'alteration');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'alteration';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'repetition';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('rhythm', 'rhythm');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'rhythm';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('pattern', 'pattern');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'pattern';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('seriality', 'seriality');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'seriality';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('looping', 'looping');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'looping';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('counting', 'counting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'counting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('copying', 'copying');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'copying';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('variation', 'variation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'variation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('iteration', 'iteration');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'iteration';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sequence', 'sequence');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'sequence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'grid';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('recurrence', 'recurrence');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'recurrence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'routine';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('rehearsal', 'rehearsal');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'rehearsal';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'echo';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('duplication', 'duplication');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'duplication';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'return';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('modularity', 'modularity');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'modularity';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'accumulation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('multiples', 'multiples');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'multiples';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'edition';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('repeated gesture', 'repeated-gesture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'repeated-gesture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('repeated action', 'repeated-action');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'repeated-action';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('observing', 'observing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'observing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'recording';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('photographing', 'photographing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'photographing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('filming', 'filming');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'filming';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('note-taking', 'note-taking');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'note-taking';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('measuring', 'measuring');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'measuring';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('witnessing', 'witnessing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'witnessing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('interviewing', 'interviewing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'interviewing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('describing', 'describing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'describing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('tracking', 'tracking');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'tracking';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('scanning', 'scanning');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'scanning';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fieldwork', 'fieldwork');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'fieldwork';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('looking', 'looking');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'looking';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'listening';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('collecting evidence', 'collecting-evidence');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'collecting-evidence';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('reporting', 'reporting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'reporting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('journaling', 'journaling');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'journaling';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('documenting change', 'documenting-change');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'documenting-change';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('following', 'following');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'following';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('watching', 'watching');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'watching';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('studying', 'studying');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'studying';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('close attention', 'close-attention');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'close-attention';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('mapping', 'mapping');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'mapping';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('tracing', 'tracing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'tracing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('route', 'route');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'route';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'diagram';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('footprint', 'footprint');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'footprint';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('outline', 'outline');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'outline';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('path', 'path');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'path';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('border', 'border');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'border';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('site-plan', 'site-plan');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'site-plan';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('navigation', 'navigation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'navigation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('shadow', 'shadow');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'shadow';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('residue', 'residue');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'residue';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'contour';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('index', 'index');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'index';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('mark', 'mark');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'mark';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('record', 'record');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'record';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('cartography', 'cartography');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'cartography';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('memory map', 'memory-map');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'memory-map';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('movement path', 'movement-path');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'movement-path';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('spatial relation', 'spatial-relation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'spatial-relation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('boundary', 'boundary');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'boundary';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('territory', 'territory');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'territory';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('location', 'location');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'location';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('performing', 'performing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'performing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('walking', 'walking');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'walking';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('carrying', 'carrying');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'carrying';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('wearing', 'wearing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'wearing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'listening';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('speaking', 'speaking');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'speaking';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'gesture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('improvising', 'improvising');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'improvising';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('instructing', 'instructing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'instructing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'rehearsal';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('action', 'action');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'action';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'duration';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('movement', 'movement');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'movement';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'embodiment';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'role-play';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('activation', 'activation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'activation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('public action', 'public-action');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'public-action';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('private action', 'private-action');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'private-action';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ritual action', 'ritual-action');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'ritual-action';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('score', 'score');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'score';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'participation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('live encounter', 'live-encounter');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'live-encounter';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hanging', 'hanging');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'hanging';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('stacking', 'stacking');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'stacking';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('suspending', 'suspending');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'suspending';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('balancing', 'balancing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'balancing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('placing', 'placing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'placing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('staging', 'staging');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'staging';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sequencing', 'sequencing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'sequencing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('lighting', 'lighting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'lighting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'grouping';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('spacing', 'spacing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'spacing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('framing', 'framing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'framing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('installing', 'installing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'installing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('composing', 'composing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'composing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('positioning', 'positioning');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'positioning';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('presenting', 'presenting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'presenting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('organising', 'organising');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'organising';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('curating', 'curating');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'curating';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'ordering';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('aligning', 'aligning');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'aligning';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('isolating', 'isolating');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'isolating';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('clustering', 'clustering');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'clustering';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('display system', 'display-system');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'display-system';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('installation logic', 'installation-logic');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'installation-logic';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('collaborating', 'collaborating');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'collaborating';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sharing', 'sharing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'sharing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('borrowing', 'borrowing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'borrowing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('gifting', 'gifting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'gifting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('responding', 'responding');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'responding';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'interviewing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'instructing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('publishing', 'publishing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'publishing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hosting', 'hosting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'hosting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('conversation', 'conversation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'conversation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'participation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('co-making', 'co-making');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'co-making';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('dialogue', 'dialogue');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'dialogue';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('exchange', 'exchange');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'exchange';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('negotiation', 'negotiation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'negotiation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('invitation', 'invitation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'invitation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('collective action', 'collective-action');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'collective-action';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('workshop', 'workshop');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'workshop';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('correspondence', 'correspondence');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'correspondence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'social-practice';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'reciprocity';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('contribution', 'contribution');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'contribution';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('distortion', 'distortion');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'distortion';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('interruption', 'interruption');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'interruption';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'glitch';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fragmentation', 'fragmentation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'fragmentation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('rupture', 'rupture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'rupture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('contradiction', 'contradiction');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'contradiction';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'refusal';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sabotage', 'sabotage');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'sabotage';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'displacement';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('misalignment', 'misalignment');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'misalignment';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'noise';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('interference', 'interference');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'interference';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('disruption', 'disruption');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'disruption';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('breakdown', 'breakdown');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'breakdown';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('failure', 'failure');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'failure';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('collision', 'collision');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'collision';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('instability', 'instability');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'instability';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('scrambling', 'scrambling');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'scrambling';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'misreading';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'resistance';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('defamiliarisation', 'defamiliarisation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'defamiliarisation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'preserving';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'weathering';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'ageing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('decomposing', 'decomposing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'decomposing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('rusting', 'rusting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'rusting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fading', 'fading');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'fading';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('conserving', 'conserving');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'conserving';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sealing', 'sealing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'sealing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('protecting', 'protecting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'protecting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'erosion';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'damage';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'repair';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('rot', 'rot');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'rot';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('patina', 'patina');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'patina';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('wear', 'wear');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'wear';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'exposure';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fragility', 'fragility');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'fragility';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'loss';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'maintenance';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('deterioration', 'deterioration');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'deterioration';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'survival';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'entropy';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('material change', 'material-change');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'process'
WHERE c.slug = 'material-change';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('line drawing', 'line-drawing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'line-drawing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('observational drawing', 'observational-drawing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'observational-drawing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('gestural drawing', 'gestural-drawing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'gestural-drawing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('diagramming', 'diagramming');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'diagramming';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'tracing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'rubbing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('mark-making', 'mark-making');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'mark-making';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('tonal drawing', 'tonal-drawing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'tonal-drawing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'mapping';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'notation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sketching', 'sketching');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'sketching';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('automatic drawing', 'automatic-drawing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'automatic-drawing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('contour drawing', 'contour-drawing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'contour-drawing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('blind drawing', 'blind-drawing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'blind-drawing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('charcoal drawing', 'charcoal-drawing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'charcoal-drawing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ink drawing', 'ink-drawing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'ink-drawing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('pencil drawing', 'pencil-drawing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'pencil-drawing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('drawing from memory', 'drawing-from-memory');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'drawing-from-memory';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('drawing as record', 'drawing-as-record');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'drawing-as-record';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('drawing as plan', 'drawing-as-plan');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'drawing-as-plan';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('acrylic painting', 'acrylic-painting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'acrylic-painting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('oil painting', 'oil-painting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'oil-painting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('watercolour', 'watercolour');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'watercolour';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('gouache', 'gouache');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'gouache';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'wash';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('glazing', 'glazing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'glazing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'staining';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'impasto';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'underpainting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('colour mixing', 'colour-mixing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'colour-mixing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('surface preparation', 'surface-preparation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'surface-preparation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('mural painting', 'mural-painting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'mural-painting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hard-edge painting', 'hard-edge-painting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'hard-edge-painting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('gestural painting', 'gestural-painting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'gestural-painting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('monochrome painting', 'monochrome-painting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'monochrome-painting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('layered painting', 'layered-painting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'layered-painting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('painting on object', 'painting-on-object');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'painting-on-object';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('painting installation', 'painting-installation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'painting-installation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('painted text', 'painted-text');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'painted-text';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('painting as surface', 'painting-as-surface');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'painting-as-surface';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('relief print', 'relief-print');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'relief-print';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'screen-print';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'risograph';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'etching';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('monotype', 'monotype');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'monotype';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('lithography', 'lithography');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'lithography';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('stencil', 'stencil');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'stencil';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'photocopy';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('digital print', 'digital-print');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'digital-print';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('zine-making', 'zine-making');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'zine-making';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('editioning', 'editioning');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'editioning';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('registration', 'registration');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'registration';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('lino print', 'lino-print');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'lino-print';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('woodcut', 'woodcut');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'woodcut';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('drypoint', 'drypoint');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'drypoint';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('collagraph', 'collagraph');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'collagraph';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'overprinting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('poster printing', 'poster-printing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'poster-printing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('artist book', 'artist-book');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'artist-book';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('print multiple', 'print-multiple');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'print-multiple';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('portrait photography', 'portrait-photography');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'portrait-photography';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('documentary photography', 'documentary-photography');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'documentary-photography';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('staged photography', 'staged-photography');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'staged-photography';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('analogue photography', 'analogue-photography');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'analogue-photography';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('digital photography', 'digital-photography');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'digital-photography';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'scanning';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('photo collage', 'photo-collage');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'photo-collage';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('cyanotype', 'cyanotype');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'cyanotype';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('long exposure', 'long-exposure');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'long-exposure';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('image transfer', 'image-transfer');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'image-transfer';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'archival-photograph';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('found photograph', 'found-photograph');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'found-photograph';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('still life photography', 'still-life-photography');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'still-life-photography';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('landscape photography', 'landscape-photography');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'landscape-photography';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('self-portrait', 'self-portrait');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'self-portrait';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('photogram', 'photogram');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'photogram';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('contact sheet', 'contact-sheet');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'contact-sheet';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('photographic sequence', 'photographic-sequence');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'photographic-sequence';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('manipulated image', 'manipulated-image');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'manipulated-image';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('camera phone image', 'camera-phone-image');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'camera-phone-image';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('single-channel video', 'single-channel-video');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'single-channel-video';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'moving-image';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'projection';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('montage', 'montage');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'montage';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('loop', 'loop');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'loop';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'edit';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('subtitle', 'subtitle');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'subtitle';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('voiceover', 'voiceover');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'voiceover';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('screen recording', 'screen-recording');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'screen-recording';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('phone video', 'phone-video');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'phone-video';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'animation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('installation video', 'installation-video');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'installation-video';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('split screen', 'split-screen');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'split-screen';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('video essay', 'video-essay');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'video-essay';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('performance documentation', 'performance-documentation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'performance-documentation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('time-lapse', 'time-lapse');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'time-lapse';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('slow motion', 'slow-motion');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'slow-motion';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('found footage', 'found-footage');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'found-footage';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('video diary', 'video-diary');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'video-diary';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('moving-image installation', 'moving-image-installation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'moving-image-installation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'field-recording';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('voice recording', 'voice-recording');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'voice-recording';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'soundscape';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'spoken-word';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('singing', 'singing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'singing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sampling', 'sampling');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'sampling';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'looping';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'amplification';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'silence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'noise';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('multi-channel sound', 'multi-channel-sound');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'multi-channel-sound';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('audio editing', 'audio-editing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'audio-editing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('microphone work', 'microphone-work');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'microphone-work';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'oral-history';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sound installation', 'sound-installation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'sound-installation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('live sound', 'live-sound');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'live-sound';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('recorded testimony', 'recorded-testimony');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'recorded-testimony';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ambient sound', 'ambient-sound');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'ambient-sound';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'rhythm';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'echo';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('assemblage', 'assemblage');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'assemblage';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('carving', 'carving');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'carving';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'casting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('modelling', 'modelling');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'modelling';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('construction', 'construction');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'construction';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('readymade', 'readymade');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'readymade';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'soft-sculpture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('kinetic sculpture', 'kinetic-sculpture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'kinetic-sculpture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('object-making', 'object-making');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'object-making';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fabrication', 'fabrication');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'fabrication';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('modular form', 'modular-form');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'modular-form';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('installation object', 'installation-object');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'installation-object';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('relief sculpture', 'relief-sculpture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'relief-sculpture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('small object', 'small-object');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'small-object';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('large-scale object', 'large-scale-object');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'large-scale-object';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('suspended object', 'suspended-object');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'suspended-object';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('found-object sculpture', 'found-object-sculpture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'found-object-sculpture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('welded form', 'welded-form');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'welded-form';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('built form', 'built-form');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'built-form';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sculptural support', 'sculptural-support');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'sculptural-support';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('site-specific installation', 'site-specific-installation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'site-specific-installation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('wall work', 'wall-work');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'wall-work';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('floor work', 'floor-work');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'floor-work';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('projection installation', 'projection-installation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'projection-installation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('immersive space', 'immersive-space');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'immersive-space';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('room intervention', 'room-intervention');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'room-intervention';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('temporary installation', 'temporary-installation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'temporary-installation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'display-system';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'lighting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('spatial arrangement', 'spatial-arrangement');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'spatial-arrangement';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('viewer movement', 'viewer-movement');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'viewer-movement';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('threshold', 'threshold');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'threshold';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('environment', 'environment');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'environment';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('walkthrough', 'walkthrough');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'walkthrough';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('constellation', 'constellation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'constellation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('plinth arrangement', 'plinth-arrangement');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'plinth-arrangement';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hanging system', 'hanging-system');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'hanging-system';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('architectural intervention', 'architectural-intervention');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'architectural-intervention';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sensory installation', 'sensory-installation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'sensory-installation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'stitching';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'embroidery';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'weaving';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'quilting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('appliqué', 'appliqu');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'appliqu';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('dyeing', 'dyeing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'dyeing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('felting', 'felting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'felting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'knotting';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('garment construction', 'garment-construction');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'garment-construction';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('soft form', 'soft-form');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'soft-form';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'textile-repair';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fibre installation', 'fibre-installation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'fibre-installation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('sewing', 'sewing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'sewing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hand stitch', 'hand-stitch');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'hand-stitch';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('machine stitch', 'machine-stitch');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'machine-stitch';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('banner-making', 'banner-making');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'banner-making';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'tapestry';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('fabric construction', 'fabric-construction');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'fabric-construction';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('wearable textile', 'wearable-textile');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'wearable-textile';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('textile assemblage', 'textile-assemblage');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'textile-assemblage';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('hand-building', 'hand-building');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'hand-building';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('wheel throwing', 'wheel-throwing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'wheel-throwing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('slip casting', 'slip-casting');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'slip-casting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'glazing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'firing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('raku', 'raku');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'raku';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'porcelain';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'terracotta';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('vessel-making', 'vessel-making');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'vessel-making';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ceramic sculpture', 'ceramic-sculpture');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'ceramic-sculpture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('surface carving', 'surface-carving');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'surface-carving';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('clay modelling', 'clay-modelling');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'clay-modelling';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('coil building', 'coil-building');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'coil-building';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('slab building', 'slab-building');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'slab-building';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('pinch pot', 'pinch-pot');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'pinch-pot';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ceramic installation', 'ceramic-installation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'ceramic-installation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'unfired-clay';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('ceramic fragment', 'ceramic-fragment');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'ceramic-fragment';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('glaze testing', 'glaze-testing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'glaze-testing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('kiln process', 'kiln-process');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'kiln-process';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'gesture';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('endurance', 'endurance');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'endurance';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'rehearsal';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'score';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'instruction';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('costume', 'costume');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'costume';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'role-play';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'public-action';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'ritual-action';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'participation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'documentation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('live work', 'live-work');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'live-work';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('body action', 'body-action');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'body-action';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'repeated-action';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('performed task', 'performed-task');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'performed-task';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('spoken performance', 'spoken-performance');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'spoken-performance';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('durational work', 'durational-work');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'durational-work';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('audience encounter', 'audience-encounter');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'audience-encounter';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('private performance', 'private-performance');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'private-performance';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('performance for camera', 'performance-for-camera');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'performance-for-camera';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('web design', 'web-design');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'web-design';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('coding', 'coding');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'coding';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'animation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('3D modelling', '3d-modelling');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = '3d-modelling';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('digital collage', 'digital-collage');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'digital-collage';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('interactive media', 'interactive-media');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'interactive-media';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('game environment', 'game-environment');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'game-environment';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('augmented image', 'augmented-image');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'augmented-image';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('data visualisation', 'data-visualisation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'data-visualisation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'generative-image';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('interface design', 'interface-design');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'interface-design';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('digital publication', 'digital-publication');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'digital-publication';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('digital drawing', 'digital-drawing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'digital-drawing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('video editing', 'video-editing');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'video-editing';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('image manipulation', 'image-manipulation');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'image-manipulation';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('screen-based work', 'screen-based-work');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'screen-based-work';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('online performance', 'online-performance');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'online-performance';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('database work', 'database-work');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'database-work';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('interactive website', 'interactive-website');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'interactive-website';

INSERT OR IGNORE INTO concepts (name, slug) VALUES ('browser-based artwork', 'browser-based-artwork');

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, CASE WHEN NOT EXISTS (SELECT 1 FROM concept_subset_links l WHERE l.concept_id = c.id) THEN 1 ELSE 0 END
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
JOIN concept_sets cs ON cs.id = s.set_id AND cs.slug = 'technique'
WHERE c.slug = 'browser-based-artwork';


-- ============================================================
-- USEFUL TEST QUERIES
-- ============================================================

-- Count everything.
SELECT
  (SELECT COUNT(*) FROM concept_sets) AS set_count,
  (SELECT COUNT(*) FROM concept_subsets) AS subset_count,
  (SELECT COUNT(*) FROM concepts) AS concept_count,
  (SELECT COUNT(*) FROM concept_subset_links) AS link_count;

-- Show the full hierarchy.
SELECT
  cs.name AS set_name,
  ss.name AS subset_name,
  c.name AS concept_name
FROM concept_subset_links l
JOIN concepts c ON c.id = l.concept_id
JOIN concept_subsets ss ON ss.id = l.subset_id
JOIN concept_sets cs ON cs.id = ss.set_id
ORDER BY cs.display_order, ss.display_order, l.display_order;

-- Example: all concepts inside Memory & archive.
SELECT c.name
FROM concepts c
JOIN concept_subset_links l ON l.concept_id = c.id
JOIN concept_subsets ss ON ss.id = l.subset_id
WHERE ss.slug = 'memory-and-archive'
ORDER BY l.display_order;
