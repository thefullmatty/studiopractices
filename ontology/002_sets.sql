-- ============================================================
-- STUDIO PRACTICES ONTOLOGY
-- FILE: 002_sets.sql
--
-- Defines the primary conceptual dimensions of the platform.
--
-- Theme
-- Material
-- Process
-- Technique
-- ============================================================

INSERT OR IGNORE INTO concept_sets (name, slug, display_order) VALUES ('Theme', 'theme', 1);

INSERT OR IGNORE INTO concept_sets (name, slug, display_order) VALUES ('Material', 'material', 2);

INSERT OR IGNORE INTO concept_sets (name, slug, display_order) VALUES ('Process', 'process', 3);

INSERT OR IGNORE INTO concept_sets (name, slug, display_order) VALUES ('Technique', 'technique', 4);