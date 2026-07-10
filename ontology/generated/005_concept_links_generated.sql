PRAGMA foreign_keys = ON;

-- Generated from ./ontology/source/concepts.csv

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'body';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'self-image';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'gender';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'gender-politics';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'feminism';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'queer-identity';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'trans-identity';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'sexuality';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'masculinity';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'disability';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'neurodiversity';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'fat-politics';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'bodily-autonomy';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'portraiture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'masking';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'embodiment';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'vulnerability';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'transformation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'intimacy';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'persona';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'visibility';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'alter-ego';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'body-and-identity'
WHERE c.slug = 'representation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'memory';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'archive';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'trace';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'family-history';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'inheritance';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'nostalgia';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'grief';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'absence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'preservation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'documentation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'testimony';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'remembrance';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'collective-memory';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'cultural-memory';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'counter-archive';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'oral-history';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'erasure';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'silence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'loss';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'witness';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'evidence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'memorial';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'memory-and-archive'
WHERE c.slug = 'intergenerational-memory';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'place';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'landscape';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'ecology';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'climate';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'climate-justice';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'country';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'land-rights';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'indigenous-sovereignty';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'first-nations-knowledge';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'place-based-knowledge';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'home';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'migration';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'diaspora';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'exile';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'displacement';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'border-politics';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'refugee-experience';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'homeland';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'water-rights';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'extraction';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'pollution';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'habitat';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'site';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'place-and-environment'
WHERE c.slug = 'occupation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'power';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'protest';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'resistance';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'activism';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'surveillance';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'policing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'incarceration';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'institution';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'institutional-critique';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'colonialism';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'settler-colonialism';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'decolonisation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'race';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'racism';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'anti-racism';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'black-studies';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'blackness';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'whiteness';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'critical-race-theory';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'censorship';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'class';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'capitalism';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'labour-politics';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'law';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 25, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'violence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 26, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'public-space';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 27, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'power-and-society'
WHERE c.slug = 'authority';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'care';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'kinship';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'community';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'friendship';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'repair';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'support';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'dependency';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'hospitality';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'tenderness';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'responsibility';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'reciprocity';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'listening';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'mutual-aid';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'community-care';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'access';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'consent';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'accountability';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'grief-work';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'social-practice';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'participation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'collective-responsibility';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'ethics';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'care-and-relation'
WHERE c.slug = 'interdependence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'ritual';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'spirituality';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'myth';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'prayer';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'ceremony';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'sacred-image';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'iconoclasm';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'religious-trauma';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'spiritual-practice';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'taboo';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'magic';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'superstition';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'repetition';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'devotion';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'mythology';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'moral-panic';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'cult';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'secular-ritual';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'belief-systems';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'ancestral-knowledge';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'offering';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'belief-and-ritual'
WHERE c.slug = 'sacred-space';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'text';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'translation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'storytelling';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'symbol';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'sign';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'code';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'misreading';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'instruction';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'voice';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'naming';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'caption';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'illegibility';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'misrepresentation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'stereotype';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'refusal';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'counter-narrative';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'image-circulation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'authorship';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'language-and-image'
WHERE c.slug = 'speaking-back';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'screen';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'internet';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'gaming';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'social-media';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'ai';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'camera';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'algorithm';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'glitch';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'data';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'broadcast';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'interface';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'network';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'digital-surveillance';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'algorithmic-bias';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'data-colonialism';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'platform-culture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'online-identity';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'misinformation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'attention-economy';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'ai-ethics';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'digital-labour';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'meme-culture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'technology-and-media'
WHERE c.slug = 'screen-politics';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'decay';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'growth';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'duration';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'erosion';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'ruin';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'weathering';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'ageing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'cycle';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'delay';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'accumulation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'impermanence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'futurity';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'history';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'return';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'survival';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'collapse';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'renewal';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'aftermath';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'legacy';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'maintenance';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'time-and-change'
WHERE c.slug = 'entropy';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'joy';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'anxiety';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'boredom';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'desire';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'shame';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'fear';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'melancholy';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'humour';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'suspense';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'awkwardness';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'wonder';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'tension';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'anger';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'alienation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'discomfort';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'hope';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'dread';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'longing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'exhaustion';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'pleasure';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'feeling-and-atmosphere'
WHERE c.slug = 'uncertainty';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'work';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'routine';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'domestic-labour';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'shopping';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'transport';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'food';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'cleaning';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'office';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'service';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'leisure';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'unpaid-labour';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'care-work';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'consumer-culture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'precarity';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'productivity';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'bureaucracy';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'convenience';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'labour-and-everyday-life'
WHERE c.slug = 'ordinary-life';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'fantasy';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'worldbuilding';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'character';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'folklore';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'science-fiction';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'horror';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'anime';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'cosplay';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'dream';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'speculative-future';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'fan-culture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'role-play';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'avatar';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'monster';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'alternative-history';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'utopia';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'dystopia';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'world-making';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'escapism';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fantasy-and-worldbuilding'
WHERE c.slug = 'imaginary-place';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'graphite';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'charcoal';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'ink';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'pencil';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'marker';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'line';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'gesture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'notation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'scribble';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'stain';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'rubbing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'diagram';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'contour';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'pressure';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'smudge';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'hand-drawn-mark';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'automatic-mark';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'annotation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'sketch';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing-and-mark-making'
WHERE c.slug = 'diagrammatic-image';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'paint';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'pigment';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'canvas';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'colour';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'texture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'glaze';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'wash';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'ground';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'skin';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'layer';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'sheen';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'opacity';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'transparency';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'brushstroke';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'impasto';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'flatness';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'surface-tension';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'underpainting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'colour-field';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'painted-object';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'mural-surface';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting-and-surface'
WHERE c.slug = 'material-surface';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'paper';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'cardboard';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'book';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'zine';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'poster';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'photocopy';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'risograph';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'screen-print';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'etching';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'collage';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'label';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'document';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'publication';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'edition';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'multiple';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'page';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'fold';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'binding';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'newsprint';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'archive-paper';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'printed-matter';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'flyer';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'handout';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'paper-and-print'
WHERE c.slug = 'certificate';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'fabric';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'thread';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'cloth';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'garment';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'yarn';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'rope';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'netting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'felt';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'embroidery';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'weaving';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'seam';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'soft-sculpture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'stitch';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'mending';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'quilting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'knotting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'fibre';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'textile-repair';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'inherited-cloth';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'domestic-textile';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'wearable-object';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'banner';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'flag';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 24, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'fibre-and-textile'
WHERE c.slug = 'tapestry';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'wood';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'metal';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'concrete';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'plaster';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'glass';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'mirror';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'steel';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'timber';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'frame';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'scaffold';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'hardware';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'architecture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'beam';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'structure';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'module';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'fixture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'bracket';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'hinge';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'grid';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'wall';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'plinth';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'infrastructure';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'industrial-and-structural'
WHERE c.slug = 'built-environment';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'clay';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'ceramic';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'earth';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'mud';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'vessel';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'terracotta';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'porcelain';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'firing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'brick';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'mineral';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'dust';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'slip';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'kiln';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'hand-built-form';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'shard';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'tile';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'sediment';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'soil-body';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'fired-surface';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'unfired-clay';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'earthen-material';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'clay-and-earth'
WHERE c.slug = 'geological-matter';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'found-object';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'packaging';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'furniture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'toy';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'tool';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'receipt';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'container';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'clothing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'domestic-object';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'souvenir';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'rubbish';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'appliance';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'bag';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'bottle';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'box';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'utensil';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'chair';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'shelf';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'wrapper';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'discarded-object';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'personal-object';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'borrowed-object';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 23, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'found-and-everyday-objects'
WHERE c.slug = 'everyday-residue';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'photograph';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'video';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'projection';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'phone-footage';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'screenshot';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'film-still';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'animation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'monitor';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'slide';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'scan';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'image-file';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'lens';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'exposure';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'edit';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'moving-image';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'screen-capture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'digital-photograph';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'archival-photograph';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'found-image';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'display-screen';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'lens-and-screen'
WHERE c.slug = 'visual-record';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'sound';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'song';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'recording';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'noise';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'microphone';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'speaker';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'echo';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'speech';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'breath';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'field-recording';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'spoken-word';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'chant';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'hum';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'whisper';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'amplification';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'audio-loop';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'oral-testimony';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'soundscape';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'vibration';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound-and-voice'
WHERE c.slug = 'resonance';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'soil';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'water';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'plants';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'ash';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'salt';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'hair';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'wax';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'smoke';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'shell';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'seed';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'bone';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'leaf';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'bark';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'root';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'animal-trace';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'weathered-matter';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'organic-residue';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'compost';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'natural-pigment';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'organic-and-environmental'
WHERE c.slug = 'living-material';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'plastic';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'vinyl';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'resin';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'rubber';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'acrylic';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'foam';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'silicone';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'laminate';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'artificial-colour';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'disposable-material';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'manufactured-surface';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'synthetic-skin';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'industrial-coating';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'polymer';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'perspex';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'adhesive';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'tape';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'bubble-wrap';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'nylon';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'polyester';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'imitation-material';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'synthetic-and-manufactured'
WHERE c.slug = 'mass-produced-object';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'website';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'game-engine';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'ai-image';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = '3d-model';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'sensor';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'map';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'file';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'pixel';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'database';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'render';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'digital-archive';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'hyperlink';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'metadata';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'screen-space';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'interactive-system';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-and-coded'
WHERE c.slug = 'generative-image';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'collecting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'sorting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'cataloguing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'preserving';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'storing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'indexing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'classifying';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'gathering';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'accumulating';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'labelling';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'documenting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'inventory';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'selecting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'saving';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'ordering';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'filing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'grouping';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'keeping';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'archive-building';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'collection-logic';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'collect-and-archive'
WHERE c.slug = 'material-research';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'cutting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'tearing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'burning';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'erasing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'sanding';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'deleting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'obscuring';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'scratching';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'scraping';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'censoring';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'editing-out';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'excision';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'removal';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'damage';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'subtraction';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'fragmenting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'piercing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'trimming';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'cropping';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'breaking-apart';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'concealment';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 22, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'cut-and-remove'
WHERE c.slug = 'reduction';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'stitching';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'gluing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'wrapping';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'patching';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'casting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'moulding';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'assembling';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'fastening';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'suturing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'reconstruction';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'joining';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'welding';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'taping';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'tying';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'weaving-together';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'connecting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'holding';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'restoration';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'join-and-repair'
WHERE c.slug = 'provisional-fix';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'layering';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'folding';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'staining';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'soaking';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'enlarging';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'shrinking';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'distorting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'translating';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'remixing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'mutating';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'compressing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'covering';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'coating';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'building-up';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'changing-scale';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'filtering';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'reworking';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'adapting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'reformatting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'overprinting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'layer-and-transform'
WHERE c.slug = 'alteration';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'rhythm';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'pattern';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'seriality';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'looping';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'counting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'copying';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'variation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'iteration';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'sequence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'recurrence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'rehearsal';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'duplication';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'modularity';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'multiples';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'repeated-gesture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'repeat-and-sequence'
WHERE c.slug = 'repeated-action';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'observing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'photographing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'filming';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'note-taking';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'measuring';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'witnessing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'interviewing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'describing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'tracking';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'scanning';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'fieldwork';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'looking';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'collecting-evidence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'reporting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'journaling';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'documenting-change';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'following';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'watching';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'studying';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'observe-and-document'
WHERE c.slug = 'close-attention';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'mapping';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'tracing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'route';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'footprint';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'outline';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'path';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'border';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'site-plan';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'navigation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'shadow';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'residue';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'index';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'mark';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'record';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'cartography';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'memory-map';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'movement-path';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'spatial-relation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'boundary';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'territory';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'map-and-trace'
WHERE c.slug = 'location';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'performing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'walking';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'carrying';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'wearing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'speaking';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'improvising';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'instructing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'action';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'movement';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'activation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'public-action';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'private-action';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'ritual-action';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'score';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'move-and-perform'
WHERE c.slug = 'live-encounter';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'hanging';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'stacking';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'suspending';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'balancing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'placing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'staging';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'sequencing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'lighting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'spacing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'framing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'installing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'composing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'positioning';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'presenting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'organising';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'curating';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'aligning';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'isolating';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 19, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'clustering';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 20, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'display-system';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 21, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'arrange-and-display'
WHERE c.slug = 'installation-logic';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'collaborating';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'sharing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'borrowing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'gifting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'responding';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'publishing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'hosting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'conversation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'co-making';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'dialogue';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'exchange';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'negotiation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'invitation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'collective-action';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'workshop';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'correspondence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'exchange-and-collaborate'
WHERE c.slug = 'contribution';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'distortion';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'interruption';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'fragmentation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'rupture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'contradiction';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'sabotage';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'misalignment';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'interference';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'disruption';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'breakdown';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'failure';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'collision';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'instability';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'scrambling';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'distort-and-disrupt'
WHERE c.slug = 'defamiliarisation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
WHERE c.slug = 'decomposing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
WHERE c.slug = 'rusting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
WHERE c.slug = 'fading';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
WHERE c.slug = 'conserving';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
WHERE c.slug = 'sealing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
WHERE c.slug = 'protecting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
WHERE c.slug = 'rot';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
WHERE c.slug = 'patina';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
WHERE c.slug = 'wear';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
WHERE c.slug = 'fragility';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
WHERE c.slug = 'deterioration';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'preserve-and-decay'
WHERE c.slug = 'material-change';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'line-drawing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'observational-drawing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'gestural-drawing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'diagramming';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'mark-making';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'tonal-drawing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'sketching';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'automatic-drawing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'contour-drawing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'blind-drawing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'charcoal-drawing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'ink-drawing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'pencil-drawing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'drawing-from-memory';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'drawing-as-record';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'drawing'
WHERE c.slug = 'drawing-as-plan';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'acrylic-painting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'oil-painting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'watercolour';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'gouache';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'glazing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'colour-mixing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'surface-preparation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'mural-painting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'hard-edge-painting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'gestural-painting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'monochrome-painting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'layered-painting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'painting-on-object';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'painting-installation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'painted-text';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'painting'
WHERE c.slug = 'painting-as-surface';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'relief-print';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'monotype';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'lithography';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'stencil';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'digital-print';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'zine-making';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'editioning';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'registration';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'lino-print';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'woodcut';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'drypoint';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'collagraph';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'poster-printing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'artist-book';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'printmaking'
WHERE c.slug = 'print-multiple';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'portrait-photography';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'documentary-photography';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'staged-photography';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'analogue-photography';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'digital-photography';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'photo-collage';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'cyanotype';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'long-exposure';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'image-transfer';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'found-photograph';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'still-life-photography';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'landscape-photography';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'self-portrait';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'photogram';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'contact-sheet';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'photographic-sequence';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'manipulated-image';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'photography'
WHERE c.slug = 'camera-phone-image';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'single-channel-video';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'montage';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'loop';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'subtitle';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'voiceover';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'screen-recording';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'phone-video';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'installation-video';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'split-screen';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'video-essay';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'performance-documentation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'time-lapse';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'slow-motion';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'found-footage';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'video-diary';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'video'
WHERE c.slug = 'moving-image-installation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
WHERE c.slug = 'voice-recording';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
WHERE c.slug = 'singing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
WHERE c.slug = 'sampling';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
WHERE c.slug = 'multi-channel-sound';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
WHERE c.slug = 'audio-editing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
WHERE c.slug = 'microphone-work';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
WHERE c.slug = 'sound-installation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
WHERE c.slug = 'live-sound';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
WHERE c.slug = 'recorded-testimony';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sound'
WHERE c.slug = 'ambient-sound';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'assemblage';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'carving';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'modelling';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'construction';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'readymade';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'kinetic-sculpture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'object-making';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'fabrication';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'modular-form';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'installation-object';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'relief-sculpture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'small-object';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'large-scale-object';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'suspended-object';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'found-object-sculpture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'welded-form';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'built-form';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'sculpture'
WHERE c.slug = 'sculptural-support';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'site-specific-installation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'wall-work';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'floor-work';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'projection-installation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'immersive-space';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'room-intervention';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'temporary-installation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'spatial-arrangement';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'viewer-movement';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'threshold';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'environment';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'walkthrough';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'constellation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'plinth-arrangement';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'hanging-system';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'architectural-intervention';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'installation'
WHERE c.slug = 'sensory-installation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
WHERE c.slug = 'appliqu';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
WHERE c.slug = 'dyeing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
WHERE c.slug = 'felting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
WHERE c.slug = 'garment-construction';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
WHERE c.slug = 'soft-form';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
WHERE c.slug = 'fibre-installation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
WHERE c.slug = 'sewing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
WHERE c.slug = 'hand-stitch';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
WHERE c.slug = 'machine-stitch';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
WHERE c.slug = 'banner-making';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
WHERE c.slug = 'fabric-construction';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
WHERE c.slug = 'wearable-textile';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'textile'
WHERE c.slug = 'textile-assemblage';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'hand-building';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'wheel-throwing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'slip-casting';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'raku';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'vessel-making';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'ceramic-sculpture';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'surface-carving';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'clay-modelling';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'coil-building';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'slab-building';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'pinch-pot';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'ceramic-installation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'ceramic-fragment';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'glaze-testing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'ceramics'
WHERE c.slug = 'kiln-process';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
WHERE c.slug = 'endurance';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
WHERE c.slug = 'costume';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
WHERE c.slug = 'live-work';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
WHERE c.slug = 'body-action';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
WHERE c.slug = 'performed-task';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
WHERE c.slug = 'spoken-performance';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
WHERE c.slug = 'durational-work';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
WHERE c.slug = 'audience-encounter';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
WHERE c.slug = 'private-performance';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'performance'
WHERE c.slug = 'performance-for-camera';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 1, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'web-design';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 2, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'coding';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 3, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = '3d-modelling';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 4, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'digital-collage';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 5, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'interactive-media';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 6, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'game-environment';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 7, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'augmented-image';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 8, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'data-visualisation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 9, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'interface-design';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 10, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'digital-publication';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 11, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'digital-drawing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 12, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'video-editing';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 13, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'image-manipulation';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 14, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'screen-based-work';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 15, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'online-performance';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 16, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'database-work';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 17, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'interactive-website';

INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)
SELECT c.id, s.id, 18, 1
FROM concepts c
JOIN concept_subsets s ON s.slug = 'digital-media'
WHERE c.slug = 'browser-based-artwork';
