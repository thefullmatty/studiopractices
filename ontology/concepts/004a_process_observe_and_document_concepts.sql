PRAGMA foreign_keys = ON;

INSERT OR IGNORE INTO concepts (name, slug, description)
VALUES
  ('Documentation', 'documentation', 'The recording, describing, photographing, writing, or otherwise preserving of studio practice.'),
  ('Observation', 'observation', 'Close looking, listening, noticing, or attending to visual, material, spatial, or social details.'),
  ('Reflection', 'reflection', 'Thinking back through a process, decision, work, or encounter in order to understand what has changed.'),
  ('Field notes', 'field-notes', 'Written, visual, or recorded notes made during observation, research, travel, or site-based practice.'),
  ('Process journal', 'process-journal', 'A record of studio activity, decision-making, experimentation, testing, and reflection over time.'),
  ('Visual diary', 'visual-diary', 'A visual record of images, drawings, notes, references, tests, and developing ideas.'),
  ('Studio log', 'studio-log', 'A practical record of studio actions, materials, timings, tests, failures, and outcomes.'),
  ('Annotation', 'annotation', 'Notes or marks added to an image, text, object, or document to explain, question, or interpret it.'),
  ('Recording', 'recording', 'The capture of sound, image, movement, speech, action, or process using analogue or digital means.'),
  ('Evidence', 'evidence', 'Material, visual, textual, or experiential traces that support an interpretation or account of practice.');
