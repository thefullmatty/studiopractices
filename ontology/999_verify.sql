PRAGMA foreign_keys = ON;

SELECT 'concept_sets' AS table_name, COUNT(*) AS row_count FROM concept_sets;
SELECT 'concept_subsets' AS table_name, COUNT(*) AS row_count FROM concept_subsets;
SELECT 'concepts' AS table_name, COUNT(*) AS row_count FROM concepts;
SELECT 'concept_subset_links' AS table_name, COUNT(*) AS row_count FROM concept_subset_links;
SELECT 'concept_aliases' AS table_name, COUNT(*) AS row_count FROM concept_aliases;
SELECT 'concept_relationships' AS table_name, COUNT(*) AS row_count FROM concept_relationships;

SELECT
  'concepts_without_subset' AS check_name,
  COUNT(*) AS problem_count
FROM concepts c
LEFT JOIN concept_subset_links l ON c.id = l.concept_id
WHERE l.subset_id IS NULL;

SELECT
  'subset_links_with_missing_concept' AS check_name,
  COUNT(*) AS problem_count
FROM concept_subset_links l
LEFT JOIN concepts c ON l.concept_id = c.id
WHERE c.id IS NULL;

SELECT
  'subset_links_with_missing_subset' AS check_name,
  COUNT(*) AS problem_count
FROM concept_subset_links l
LEFT JOIN concept_subsets s ON l.subset_id = s.id
WHERE s.id IS NULL;
