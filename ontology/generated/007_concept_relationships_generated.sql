PRAGMA foreign_keys = ON;

-- Generated from ./ontology/source/concepts.csv

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'embodiment'
WHERE source.slug = 'body';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'vulnerability'
WHERE source.slug = 'body';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'portraiture'
WHERE source.slug = 'body';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'bodily-autonomy'
WHERE source.slug = 'body';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'portraiture'
WHERE source.slug = 'self-image';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'persona'
WHERE source.slug = 'self-image';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'visibility'
WHERE source.slug = 'self-image';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'representation'
WHERE source.slug = 'self-image';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'gender-politics'
WHERE source.slug = 'gender';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'queer-identity'
WHERE source.slug = 'gender';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'trans-identity'
WHERE source.slug = 'gender';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'motherhood'
WHERE source.slug = 'gender';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'femininity'
WHERE source.slug = 'gender';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'gender roles'
WHERE source.slug = 'gender';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'masculinity'
WHERE source.slug = 'gender';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'gender'
WHERE source.slug = 'gender-politics';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'feminism'
WHERE source.slug = 'gender-politics';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'bodily-autonomy'
WHERE source.slug = 'gender-politics';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'visibility'
WHERE source.slug = 'gender-politics';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'gender-politics'
WHERE source.slug = 'feminism';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'care'
WHERE source.slug = 'feminism';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'labour'
WHERE source.slug = 'feminism';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'representation'
WHERE source.slug = 'feminism';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'sexuality'
WHERE source.slug = 'queer-identity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'gender'
WHERE source.slug = 'queer-identity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'visibility'
WHERE source.slug = 'queer-identity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'intimacy'
WHERE source.slug = 'queer-identity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'gender'
WHERE source.slug = 'trans-identity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'bodily-autonomy'
WHERE source.slug = 'trans-identity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'visibility'
WHERE source.slug = 'trans-identity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'transformation'
WHERE source.slug = 'trans-identity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'queer-identity'
WHERE source.slug = 'sexuality';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'intimacy'
WHERE source.slug = 'sexuality';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'bodily-autonomy'
WHERE source.slug = 'sexuality';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'visibility'
WHERE source.slug = 'sexuality';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'gender'
WHERE source.slug = 'masculinity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'gender-politics'
WHERE source.slug = 'masculinity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'persona'
WHERE source.slug = 'masculinity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'vulnerability'
WHERE source.slug = 'masculinity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'neurodiversity'
WHERE source.slug = 'disability';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'care'
WHERE source.slug = 'disability';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'bodily-autonomy'
WHERE source.slug = 'disability';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'vulnerability'
WHERE source.slug = 'disability';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'disability'
WHERE source.slug = 'neurodiversity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'perception'
WHERE source.slug = 'neurodiversity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'care'
WHERE source.slug = 'neurodiversity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'masking'
WHERE source.slug = 'neurodiversity';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'body'
WHERE source.slug = 'pain';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'embodiment'
WHERE source.slug = 'pain';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'vulnerability'
WHERE source.slug = 'pain';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'disability'
WHERE source.slug = 'pain';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'care'
WHERE source.slug = 'pain';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'memory'
WHERE source.slug = 'pain';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'intimacy'
WHERE source.slug = 'pain';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'body'
WHERE source.slug = 'fat-politics';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'visibility'
WHERE source.slug = 'fat-politics';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'representation'
WHERE source.slug = 'fat-politics';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'bodily-autonomy'
WHERE source.slug = 'fat-politics';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'body'
WHERE source.slug = 'bodily-autonomy';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'sexuality'
WHERE source.slug = 'bodily-autonomy';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'gender-politics'
WHERE source.slug = 'bodily-autonomy';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'trans-identity'
WHERE source.slug = 'bodily-autonomy';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'self-image'
WHERE source.slug = 'portraiture';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'representation'
WHERE source.slug = 'portraiture';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'visibility'
WHERE source.slug = 'portraiture';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'persona'
WHERE source.slug = 'portraiture';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'persona'
WHERE source.slug = 'masking';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'visibility'
WHERE source.slug = 'masking';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'neurodiversity'
WHERE source.slug = 'masking';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'self-image'
WHERE source.slug = 'masking';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'body'
WHERE source.slug = 'embodiment';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'gesture'
WHERE source.slug = 'embodiment';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'vulnerability'
WHERE source.slug = 'embodiment';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'movement'
WHERE source.slug = 'embodiment';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'body'
WHERE source.slug = 'vulnerability';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'intimacy'
WHERE source.slug = 'vulnerability';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'care'
WHERE source.slug = 'vulnerability';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'disability'
WHERE source.slug = 'vulnerability';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'trans-identity'
WHERE source.slug = 'transformation';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'alter-ego'
WHERE source.slug = 'transformation';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'persona'
WHERE source.slug = 'transformation';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'layer-and-transform'
WHERE source.slug = 'transformation';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'sexuality'
WHERE source.slug = 'intimacy';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'vulnerability'
WHERE source.slug = 'intimacy';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'care'
WHERE source.slug = 'intimacy';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'relation'
WHERE source.slug = 'intimacy';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'masking'
WHERE source.slug = 'persona';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'alter-ego'
WHERE source.slug = 'persona';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'self-image'
WHERE source.slug = 'persona';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'portraiture'
WHERE source.slug = 'persona';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'representation'
WHERE source.slug = 'visibility';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'queer-identity'
WHERE source.slug = 'visibility';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'masking'
WHERE source.slug = 'visibility';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'portraiture'
WHERE source.slug = 'visibility';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'persona'
WHERE source.slug = 'alter-ego';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'transformation'
WHERE source.slug = 'alter-ego';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'masking'
WHERE source.slug = 'alter-ego';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'self-image'
WHERE source.slug = 'alter-ego';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'portraiture'
WHERE source.slug = 'representation';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'visibility'
WHERE source.slug = 'representation';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'self-image'
WHERE source.slug = 'representation';

INSERT OR IGNORE INTO concept_relationships (source_concept_id, target_concept_id, relationship_type, weight, note)
SELECT source.id, target.id, 'related', 1.0, NULL
FROM concepts source
JOIN concepts target ON target.slug = 'gender-politics'
WHERE source.slug = 'representation';
