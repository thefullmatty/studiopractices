PRAGMA foreign_keys = ON;

-- Generated from ./ontology/source/concepts.csv

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'documentation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'observation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'reflection';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'field-notes';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'process-journal';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'visual-diary';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'studio-log';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'annotation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'recording';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'evidence';
