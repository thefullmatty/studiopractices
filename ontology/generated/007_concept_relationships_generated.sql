PRAGMA foreign_keys = ON;

-- Generated from ./ontology/source/concepts.csv

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'archive'
WHERE source.slug = 'documentation';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'reflection'
WHERE source.slug = 'documentation';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'observation'
WHERE source.slug = 'documentation';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'documentation'
WHERE source.slug = 'observation';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'field-notes'
WHERE source.slug = 'observation';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'documentation'
WHERE source.slug = 'reflection';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'process-journal'
WHERE source.slug = 'reflection';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'observation'
WHERE source.slug = 'field-notes';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'documentation'
WHERE source.slug = 'field-notes';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'documentation'
WHERE source.slug = 'process-journal';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'reflection'
WHERE source.slug = 'process-journal';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'process-journal'
WHERE source.slug = 'visual-diary';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'documentation'
WHERE source.slug = 'visual-diary';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'process-journal'
WHERE source.slug = 'studio-log';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'documentation'
WHERE source.slug = 'studio-log';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'documentation'
WHERE source.slug = 'annotation';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'reflection'
WHERE source.slug = 'annotation';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'documentation'
WHERE source.slug = 'recording';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'observation'
WHERE source.slug = 'recording';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'documentation'
WHERE source.slug = 'evidence';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'archive'
WHERE source.slug = 'evidence';
