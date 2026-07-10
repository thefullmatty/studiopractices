PRAGMA foreign_keys = ON;

-- Generated from ./ontology/source/concepts.csv

INSERT INTO concepts (name, slug, description)
VALUES ('body', 'body', 'The lived, represented, sensed, or performed body as a site of experience, identity, vulnerability, power, and relation.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('self-image', 'self-image', 'How a person sees, imagines, performs, or represents themselves through visual, material, social, or cultural forms.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('gender', 'gender', 'The social, cultural, embodied, and personal meanings through which gender is experienced, represented, questioned, or performed.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('gender politics', 'gender-politics', 'The ways gender is shaped by power, social expectations, law, culture, labour, representation, and resistance.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('feminism', 'feminism', 'Creative, critical, and political approaches concerned with gendered power, lived experience, care, embodiment, labour, and representation.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('queer identity', 'queer-identity', 'Forms of identity, relation, desire, expression, and belonging that question or exceed normative expectations of gender and sexuality.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('trans identity', 'trans-identity', 'Experiences, representations, and expressions of gender transition, trans embodiment, self-determination, recognition, and lived identity.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sexuality', 'sexuality', 'The ways desire, intimacy, pleasure, orientation, relation, and the erotic are experienced, represented, regulated, or imagined.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('masculinity', 'masculinity', 'The social, cultural, emotional, and embodied forms through which masculinity is performed, inherited, questioned, or reimagined.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('disability', 'disability', 'Embodied, social, political, and material experiences of access, difference, dependency, care, perception, and ableism.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('neurodiversity', 'neurodiversity', 'Differences in perception, cognition, attention, communication, sensory experience, and ways of being in the world.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('pain', 'pain', 'A lived or represented intensity of the body, where hurt, endurance, sensation, memory, care, and vulnerability become material or expressive concerns.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fat politics', 'fat-politics', 'Critical and creative approaches to body size, fatness, stigma, desire, visibility, health discourse, and bodily normativity.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('bodily autonomy', 'bodily-autonomy', 'The right and capacity to make decisions about one''s body, movement, health, appearance, sexuality, and self-representation.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('portraiture', 'portraiture', 'The representation of a person, self, face, body, presence, or identity through visual, material, photographic, or performative means.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('masking', 'masking', 'The concealment, adaptation, performance, or modulation of identity, emotion, behaviour, or difference in response to social expectations.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('embodiment', 'embodiment', 'The experience of being in, through, and as a body, including sensation, gesture, vulnerability, movement, memory, and perception.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('vulnerability', 'vulnerability', 'A condition of exposure, openness, risk, tenderness, dependence, or susceptibility within bodies, relationships, materials, or systems.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('transformation', 'transformation', 'A process of becoming, changing, shifting, disguising, mutating, transitioning, or reconfiguring identity, body, material, or form.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('intimacy', 'intimacy', 'Forms of closeness, touch, trust, desire, care, privacy, kinship, or emotional proximity between bodies, people, objects, or spaces.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('persona', 'persona', 'A constructed, performed, exaggerated, fictional, public, or strategic version of self or identity.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('visibility', 'visibility', 'The condition of being seen, recognised, exposed, represented, overlooked, surveilled, or made public.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('alter ego', 'alter-ego', 'An alternate self, character, double, mask, persona, or fictional identity through which another version of the self can appear.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('representation', 'representation', 'The ways bodies, identities, people, groups, or experiences are depicted, framed, mediated, interpreted, or made visible.')
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('memory', 'memory', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('archive', 'archive', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('trace', 'trace', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('family history', 'family-history', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('inheritance', 'inheritance', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('nostalgia', 'nostalgia', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('grief', 'grief', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('absence', 'absence', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('preservation', 'preservation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('documentation', 'documentation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('testimony', 'testimony', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('remembrance', 'remembrance', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('collective memory', 'collective-memory', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('cultural memory', 'cultural-memory', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('counter-archive', 'counter-archive', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('oral history', 'oral-history', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('erasure', 'erasure', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('silence', 'silence', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('loss', 'loss', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('witness', 'witness', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('evidence', 'evidence', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('memorial', 'memorial', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('intergenerational memory', 'intergenerational-memory', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('place', 'place', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('landscape', 'landscape', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ecology', 'ecology', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('climate', 'climate', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('climate justice', 'climate-justice', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('Country', 'country', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('land rights', 'land-rights', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('Indigenous sovereignty', 'indigenous-sovereignty', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('First Nations knowledge', 'first-nations-knowledge', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('place-based knowledge', 'place-based-knowledge', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('home', 'home', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('migration', 'migration', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('diaspora', 'diaspora', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('exile', 'exile', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('displacement', 'displacement', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('border politics', 'border-politics', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('refugee experience', 'refugee-experience', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('homeland', 'homeland', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('water rights', 'water-rights', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('extraction', 'extraction', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('pollution', 'pollution', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('habitat', 'habitat', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('site', 'site', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('occupation', 'occupation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('power', 'power', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('protest', 'protest', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('resistance', 'resistance', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('activism', 'activism', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('surveillance', 'surveillance', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('policing', 'policing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('incarceration', 'incarceration', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('institution', 'institution', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('institutional critique', 'institutional-critique', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('colonialism', 'colonialism', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('settler colonialism', 'settler-colonialism', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('decolonisation', 'decolonisation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('race', 'race', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('racism', 'racism', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('anti-racism', 'anti-racism', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('Black studies', 'black-studies', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('Blackness', 'blackness', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('whiteness', 'whiteness', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('critical race theory', 'critical-race-theory', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('censorship', 'censorship', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('class', 'class', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('capitalism', 'capitalism', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('labour politics', 'labour-politics', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('law', 'law', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('violence', 'violence', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('public space', 'public-space', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('authority', 'authority', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('care', 'care', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('kinship', 'kinship', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('community', 'community', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('friendship', 'friendship', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('repair', 'repair', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('support', 'support', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('dependency', 'dependency', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hospitality', 'hospitality', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('tenderness', 'tenderness', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('responsibility', 'responsibility', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('reciprocity', 'reciprocity', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('listening', 'listening', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('mutual aid', 'mutual-aid', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('community care', 'community-care', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('access', 'access', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('consent', 'consent', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('accountability', 'accountability', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('grief work', 'grief-work', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('social practice', 'social-practice', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('participation', 'participation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('collective responsibility', 'collective-responsibility', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ethics', 'ethics', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('interdependence', 'interdependence', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ritual', 'ritual', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('spirituality', 'spirituality', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('myth', 'myth', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('prayer', 'prayer', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ceremony', 'ceremony', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sacred image', 'sacred-image', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('iconoclasm', 'iconoclasm', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('religious trauma', 'religious-trauma', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('spiritual practice', 'spiritual-practice', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('taboo', 'taboo', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('magic', 'magic', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('superstition', 'superstition', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('repetition', 'repetition', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('devotion', 'devotion', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('mythology', 'mythology', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('moral panic', 'moral-panic', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('cult', 'cult', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('secular ritual', 'secular-ritual', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('belief systems', 'belief-systems', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ancestral knowledge', 'ancestral-knowledge', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('offering', 'offering', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sacred space', 'sacred-space', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('text', 'text', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('translation', 'translation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('storytelling', 'storytelling', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('symbol', 'symbol', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sign', 'sign', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('code', 'code', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('misreading', 'misreading', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('instruction', 'instruction', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('voice', 'voice', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('naming', 'naming', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('caption', 'caption', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('illegibility', 'illegibility', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('misrepresentation', 'misrepresentation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('stereotype', 'stereotype', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('refusal', 'refusal', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('counter-narrative', 'counter-narrative', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('image circulation', 'image-circulation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('authorship', 'authorship', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('speaking back', 'speaking-back', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('screen', 'screen', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('internet', 'internet', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('gaming', 'gaming', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('social media', 'social-media', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('AI', 'ai', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('camera', 'camera', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('algorithm', 'algorithm', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('glitch', 'glitch', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('data', 'data', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('broadcast', 'broadcast', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('interface', 'interface', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('network', 'network', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('digital surveillance', 'digital-surveillance', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('algorithmic bias', 'algorithmic-bias', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('data colonialism', 'data-colonialism', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('platform culture', 'platform-culture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('online identity', 'online-identity', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('misinformation', 'misinformation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('attention economy', 'attention-economy', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('AI ethics', 'ai-ethics', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('digital labour', 'digital-labour', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('meme culture', 'meme-culture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('screen politics', 'screen-politics', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('decay', 'decay', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('growth', 'growth', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('duration', 'duration', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('erosion', 'erosion', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ruin', 'ruin', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('weathering', 'weathering', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ageing', 'ageing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('cycle', 'cycle', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('delay', 'delay', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('accumulation', 'accumulation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('impermanence', 'impermanence', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('futurity', 'futurity', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('history', 'history', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('return', 'return', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('survival', 'survival', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('collapse', 'collapse', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('renewal', 'renewal', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('aftermath', 'aftermath', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('legacy', 'legacy', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('maintenance', 'maintenance', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('entropy', 'entropy', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('joy', 'joy', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('anxiety', 'anxiety', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('boredom', 'boredom', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('desire', 'desire', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('shame', 'shame', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fear', 'fear', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('melancholy', 'melancholy', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('humour', 'humour', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('suspense', 'suspense', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('awkwardness', 'awkwardness', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('wonder', 'wonder', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('tension', 'tension', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('anger', 'anger', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('alienation', 'alienation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('discomfort', 'discomfort', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hope', 'hope', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('dread', 'dread', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('longing', 'longing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('exhaustion', 'exhaustion', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('pleasure', 'pleasure', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('uncertainty', 'uncertainty', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('work', 'work', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('routine', 'routine', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('domestic labour', 'domestic-labour', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('shopping', 'shopping', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('transport', 'transport', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('food', 'food', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('cleaning', 'cleaning', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('office', 'office', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('service', 'service', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('leisure', 'leisure', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('unpaid labour', 'unpaid-labour', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('care work', 'care-work', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('consumer culture', 'consumer-culture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('precarity', 'precarity', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('productivity', 'productivity', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('bureaucracy', 'bureaucracy', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('convenience', 'convenience', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ordinary life', 'ordinary-life', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fantasy', 'fantasy', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('worldbuilding', 'worldbuilding', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('character', 'character', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('folklore', 'folklore', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('science fiction', 'science-fiction', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('horror', 'horror', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('anime', 'anime', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('cosplay', 'cosplay', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('dream', 'dream', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('speculative future', 'speculative-future', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fan culture', 'fan-culture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('role-play', 'role-play', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('avatar', 'avatar', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('monster', 'monster', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('alternative history', 'alternative-history', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('utopia', 'utopia', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('dystopia', 'dystopia', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('world-making', 'world-making', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('escapism', 'escapism', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('imaginary place', 'imaginary-place', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('graphite', 'graphite', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('charcoal', 'charcoal', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ink', 'ink', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('pencil', 'pencil', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('marker', 'marker', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('line', 'line', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('gesture', 'gesture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('notation', 'notation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('scribble', 'scribble', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('stain', 'stain', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('rubbing', 'rubbing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('diagram', 'diagram', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('contour', 'contour', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('pressure', 'pressure', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('smudge', 'smudge', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hand-drawn mark', 'hand-drawn-mark', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('automatic mark', 'automatic-mark', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('annotation', 'annotation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sketch', 'sketch', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('diagrammatic image', 'diagrammatic-image', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('paint', 'paint', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('pigment', 'pigment', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('canvas', 'canvas', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('colour', 'colour', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('texture', 'texture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('glaze', 'glaze', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('wash', 'wash', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ground', 'ground', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('skin', 'skin', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('layer', 'layer', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sheen', 'sheen', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('opacity', 'opacity', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('transparency', 'transparency', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('brushstroke', 'brushstroke', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('impasto', 'impasto', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('flatness', 'flatness', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('surface tension', 'surface-tension', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('underpainting', 'underpainting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('colour field', 'colour-field', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('painted object', 'painted-object', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('mural surface', 'mural-surface', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('material surface', 'material-surface', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('paper', 'paper', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('cardboard', 'cardboard', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('book', 'book', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('zine', 'zine', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('poster', 'poster', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('photocopy', 'photocopy', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('risograph', 'risograph', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('screen print', 'screen-print', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('etching', 'etching', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('collage', 'collage', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('label', 'label', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('document', 'document', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('publication', 'publication', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('edition', 'edition', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('multiple', 'multiple', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('page', 'page', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fold', 'fold', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('binding', 'binding', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('newsprint', 'newsprint', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('archive paper', 'archive-paper', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('printed matter', 'printed-matter', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('flyer', 'flyer', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('handout', 'handout', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('certificate', 'certificate', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fabric', 'fabric', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('thread', 'thread', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('cloth', 'cloth', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('garment', 'garment', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('yarn', 'yarn', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('rope', 'rope', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('netting', 'netting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('felt', 'felt', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('embroidery', 'embroidery', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('weaving', 'weaving', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('seam', 'seam', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('soft sculpture', 'soft-sculpture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('stitch', 'stitch', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('mending', 'mending', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('quilting', 'quilting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('knotting', 'knotting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fibre', 'fibre', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('textile repair', 'textile-repair', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('inherited cloth', 'inherited-cloth', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('domestic textile', 'domestic-textile', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('wearable object', 'wearable-object', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('banner', 'banner', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('flag', 'flag', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('tapestry', 'tapestry', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('wood', 'wood', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('metal', 'metal', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('concrete', 'concrete', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('plaster', 'plaster', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('glass', 'glass', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('mirror', 'mirror', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('steel', 'steel', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('timber', 'timber', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('frame', 'frame', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('scaffold', 'scaffold', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hardware', 'hardware', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('architecture', 'architecture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('beam', 'beam', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('structure', 'structure', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('module', 'module', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fixture', 'fixture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('bracket', 'bracket', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hinge', 'hinge', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('grid', 'grid', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('wall', 'wall', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('plinth', 'plinth', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('infrastructure', 'infrastructure', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('built environment', 'built-environment', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('clay', 'clay', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ceramic', 'ceramic', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('earth', 'earth', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('mud', 'mud', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('vessel', 'vessel', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('terracotta', 'terracotta', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('porcelain', 'porcelain', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('firing', 'firing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('brick', 'brick', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('mineral', 'mineral', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('dust', 'dust', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('slip', 'slip', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('kiln', 'kiln', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hand-built form', 'hand-built-form', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('shard', 'shard', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('tile', 'tile', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sediment', 'sediment', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('soil body', 'soil-body', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fired surface', 'fired-surface', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('unfired clay', 'unfired-clay', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('earthen material', 'earthen-material', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('geological matter', 'geological-matter', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('found object', 'found-object', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('packaging', 'packaging', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('furniture', 'furniture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('toy', 'toy', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('tool', 'tool', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('receipt', 'receipt', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('container', 'container', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('clothing', 'clothing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('domestic object', 'domestic-object', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('souvenir', 'souvenir', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('rubbish', 'rubbish', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('appliance', 'appliance', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('bag', 'bag', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('bottle', 'bottle', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('box', 'box', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('utensil', 'utensil', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('chair', 'chair', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('shelf', 'shelf', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('wrapper', 'wrapper', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('discarded object', 'discarded-object', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('personal object', 'personal-object', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('borrowed object', 'borrowed-object', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('everyday residue', 'everyday-residue', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('photograph', 'photograph', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('video', 'video', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('projection', 'projection', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('phone footage', 'phone-footage', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('screenshot', 'screenshot', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('film still', 'film-still', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('animation', 'animation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('monitor', 'monitor', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('slide', 'slide', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('scan', 'scan', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('image file', 'image-file', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('lens', 'lens', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('exposure', 'exposure', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('edit', 'edit', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('moving image', 'moving-image', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('screen capture', 'screen-capture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('digital photograph', 'digital-photograph', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('archival photograph', 'archival-photograph', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('found image', 'found-image', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('display screen', 'display-screen', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('visual record', 'visual-record', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sound', 'sound', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('song', 'song', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('recording', 'recording', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('noise', 'noise', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('microphone', 'microphone', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('speaker', 'speaker', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('echo', 'echo', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('speech', 'speech', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('breath', 'breath', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('field recording', 'field-recording', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('spoken word', 'spoken-word', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('chant', 'chant', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hum', 'hum', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('whisper', 'whisper', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('amplification', 'amplification', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('audio loop', 'audio-loop', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('oral testimony', 'oral-testimony', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('soundscape', 'soundscape', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('vibration', 'vibration', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('resonance', 'resonance', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('soil', 'soil', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('water', 'water', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('plants', 'plants', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ash', 'ash', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('salt', 'salt', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hair', 'hair', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('wax', 'wax', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('smoke', 'smoke', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('shell', 'shell', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('seed', 'seed', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('bone', 'bone', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('leaf', 'leaf', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('bark', 'bark', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('root', 'root', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('animal trace', 'animal-trace', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('weathered matter', 'weathered-matter', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('organic residue', 'organic-residue', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('compost', 'compost', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('natural pigment', 'natural-pigment', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('living material', 'living-material', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('plastic', 'plastic', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('vinyl', 'vinyl', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('resin', 'resin', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('rubber', 'rubber', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('acrylic', 'acrylic', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('foam', 'foam', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('silicone', 'silicone', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('laminate', 'laminate', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('artificial colour', 'artificial-colour', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('disposable material', 'disposable-material', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('manufactured surface', 'manufactured-surface', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('synthetic skin', 'synthetic-skin', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('industrial coating', 'industrial-coating', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('polymer', 'polymer', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('Perspex', 'perspex', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('adhesive', 'adhesive', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('tape', 'tape', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('bubble wrap', 'bubble-wrap', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('nylon', 'nylon', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('polyester', 'polyester', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('imitation material', 'imitation-material', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('mass-produced object', 'mass-produced-object', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('website', 'website', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('game engine', 'game-engine', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('AI image', 'ai-image', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('3D model', '3d-model', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sensor', 'sensor', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('map', 'map', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('file', 'file', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('pixel', 'pixel', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('database', 'database', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('render', 'render', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('digital archive', 'digital-archive', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hyperlink', 'hyperlink', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('metadata', 'metadata', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('screen space', 'screen-space', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('interactive system', 'interactive-system', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('generative image', 'generative-image', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('collecting', 'collecting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sorting', 'sorting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('cataloguing', 'cataloguing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('preserving', 'preserving', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('storing', 'storing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('indexing', 'indexing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('classifying', 'classifying', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('gathering', 'gathering', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('accumulating', 'accumulating', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('labelling', 'labelling', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('documenting', 'documenting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('inventory', 'inventory', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('selecting', 'selecting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('saving', 'saving', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ordering', 'ordering', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('filing', 'filing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('grouping', 'grouping', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('keeping', 'keeping', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('archive-building', 'archive-building', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('collection logic', 'collection-logic', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('material research', 'material-research', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('cutting', 'cutting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('tearing', 'tearing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('burning', 'burning', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('erasing', 'erasing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sanding', 'sanding', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('deleting', 'deleting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('obscuring', 'obscuring', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('scratching', 'scratching', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('scraping', 'scraping', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('censoring', 'censoring', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('editing out', 'editing-out', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('excision', 'excision', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('removal', 'removal', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('damage', 'damage', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('subtraction', 'subtraction', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fragmenting', 'fragmenting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('piercing', 'piercing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('trimming', 'trimming', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('cropping', 'cropping', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('breaking apart', 'breaking-apart', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('concealment', 'concealment', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('reduction', 'reduction', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('stitching', 'stitching', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('gluing', 'gluing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('wrapping', 'wrapping', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('patching', 'patching', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('casting', 'casting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('moulding', 'moulding', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('assembling', 'assembling', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fastening', 'fastening', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('suturing', 'suturing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('reconstruction', 'reconstruction', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('joining', 'joining', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('welding', 'welding', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('taping', 'taping', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('tying', 'tying', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('weaving together', 'weaving-together', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('connecting', 'connecting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('holding', 'holding', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('restoration', 'restoration', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('provisional fix', 'provisional-fix', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('layering', 'layering', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('folding', 'folding', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('staining', 'staining', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('soaking', 'soaking', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('enlarging', 'enlarging', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('shrinking', 'shrinking', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('distorting', 'distorting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('translating', 'translating', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('remixing', 'remixing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('mutating', 'mutating', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('compressing', 'compressing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('covering', 'covering', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('coating', 'coating', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('building up', 'building-up', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('changing scale', 'changing-scale', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('filtering', 'filtering', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('reworking', 'reworking', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('adapting', 'adapting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('reformatting', 'reformatting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('overprinting', 'overprinting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('alteration', 'alteration', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('rhythm', 'rhythm', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('pattern', 'pattern', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('seriality', 'seriality', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('looping', 'looping', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('counting', 'counting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('copying', 'copying', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('variation', 'variation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('iteration', 'iteration', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sequence', 'sequence', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('recurrence', 'recurrence', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('rehearsal', 'rehearsal', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('duplication', 'duplication', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('modularity', 'modularity', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('multiples', 'multiples', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('repeated gesture', 'repeated-gesture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('repeated action', 'repeated-action', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('observing', 'observing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('photographing', 'photographing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('filming', 'filming', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('note-taking', 'note-taking', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('measuring', 'measuring', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('witnessing', 'witnessing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('interviewing', 'interviewing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('describing', 'describing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('tracking', 'tracking', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('scanning', 'scanning', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fieldwork', 'fieldwork', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('looking', 'looking', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('collecting evidence', 'collecting-evidence', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('reporting', 'reporting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('journaling', 'journaling', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('documenting change', 'documenting-change', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('following', 'following', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('watching', 'watching', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('studying', 'studying', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('close attention', 'close-attention', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('mapping', 'mapping', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('tracing', 'tracing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('route', 'route', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('footprint', 'footprint', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('outline', 'outline', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('path', 'path', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('border', 'border', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('site-plan', 'site-plan', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('navigation', 'navigation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('shadow', 'shadow', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('residue', 'residue', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('index', 'index', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('mark', 'mark', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('record', 'record', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('cartography', 'cartography', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('memory map', 'memory-map', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('movement path', 'movement-path', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('spatial relation', 'spatial-relation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('boundary', 'boundary', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('territory', 'territory', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('location', 'location', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('performing', 'performing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('walking', 'walking', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('carrying', 'carrying', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('wearing', 'wearing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('speaking', 'speaking', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('improvising', 'improvising', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('instructing', 'instructing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('action', 'action', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('movement', 'movement', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('activation', 'activation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('public action', 'public-action', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('private action', 'private-action', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ritual action', 'ritual-action', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('score', 'score', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('live encounter', 'live-encounter', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hanging', 'hanging', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('stacking', 'stacking', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('suspending', 'suspending', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('balancing', 'balancing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('placing', 'placing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('staging', 'staging', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sequencing', 'sequencing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('lighting', 'lighting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('spacing', 'spacing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('framing', 'framing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('installing', 'installing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('composing', 'composing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('positioning', 'positioning', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('presenting', 'presenting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('organising', 'organising', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('curating', 'curating', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('aligning', 'aligning', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('isolating', 'isolating', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('clustering', 'clustering', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('display system', 'display-system', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('installation logic', 'installation-logic', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('collaborating', 'collaborating', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sharing', 'sharing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('borrowing', 'borrowing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('gifting', 'gifting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('responding', 'responding', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('publishing', 'publishing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hosting', 'hosting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('conversation', 'conversation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('co-making', 'co-making', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('dialogue', 'dialogue', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('exchange', 'exchange', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('negotiation', 'negotiation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('invitation', 'invitation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('collective action', 'collective-action', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('workshop', 'workshop', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('correspondence', 'correspondence', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('contribution', 'contribution', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('distortion', 'distortion', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('interruption', 'interruption', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fragmentation', 'fragmentation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('rupture', 'rupture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('contradiction', 'contradiction', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sabotage', 'sabotage', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('misalignment', 'misalignment', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('interference', 'interference', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('disruption', 'disruption', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('breakdown', 'breakdown', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('failure', 'failure', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('collision', 'collision', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('instability', 'instability', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('scrambling', 'scrambling', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('defamiliarisation', 'defamiliarisation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('decomposing', 'decomposing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('rusting', 'rusting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fading', 'fading', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('conserving', 'conserving', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sealing', 'sealing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('protecting', 'protecting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('rot', 'rot', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('patina', 'patina', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('wear', 'wear', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fragility', 'fragility', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('deterioration', 'deterioration', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('material change', 'material-change', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('line drawing', 'line-drawing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('observational drawing', 'observational-drawing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('gestural drawing', 'gestural-drawing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('diagramming', 'diagramming', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('mark-making', 'mark-making', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('tonal drawing', 'tonal-drawing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sketching', 'sketching', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('automatic drawing', 'automatic-drawing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('contour drawing', 'contour-drawing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('blind drawing', 'blind-drawing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('charcoal drawing', 'charcoal-drawing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ink drawing', 'ink-drawing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('pencil drawing', 'pencil-drawing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('drawing from memory', 'drawing-from-memory', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('drawing as record', 'drawing-as-record', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('drawing as plan', 'drawing-as-plan', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('acrylic painting', 'acrylic-painting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('oil painting', 'oil-painting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('watercolour', 'watercolour', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('gouache', 'gouache', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('glazing', 'glazing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('colour mixing', 'colour-mixing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('surface preparation', 'surface-preparation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('mural painting', 'mural-painting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hard-edge painting', 'hard-edge-painting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('gestural painting', 'gestural-painting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('monochrome painting', 'monochrome-painting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('layered painting', 'layered-painting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('painting on object', 'painting-on-object', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('painting installation', 'painting-installation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('painted text', 'painted-text', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('painting as surface', 'painting-as-surface', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('relief print', 'relief-print', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('monotype', 'monotype', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('lithography', 'lithography', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('stencil', 'stencil', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('digital print', 'digital-print', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('zine-making', 'zine-making', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('editioning', 'editioning', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('registration', 'registration', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('lino print', 'lino-print', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('woodcut', 'woodcut', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('drypoint', 'drypoint', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('collagraph', 'collagraph', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('poster printing', 'poster-printing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('artist book', 'artist-book', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('print multiple', 'print-multiple', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('portrait photography', 'portrait-photography', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('documentary photography', 'documentary-photography', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('staged photography', 'staged-photography', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('analogue photography', 'analogue-photography', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('digital photography', 'digital-photography', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('photo collage', 'photo-collage', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('cyanotype', 'cyanotype', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('long exposure', 'long-exposure', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('image transfer', 'image-transfer', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('found photograph', 'found-photograph', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('still life photography', 'still-life-photography', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('landscape photography', 'landscape-photography', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('self-portrait', 'self-portrait', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('photogram', 'photogram', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('contact sheet', 'contact-sheet', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('photographic sequence', 'photographic-sequence', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('manipulated image', 'manipulated-image', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('camera phone image', 'camera-phone-image', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('single-channel video', 'single-channel-video', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('montage', 'montage', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('loop', 'loop', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('subtitle', 'subtitle', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('voiceover', 'voiceover', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('screen recording', 'screen-recording', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('phone video', 'phone-video', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('installation video', 'installation-video', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('split screen', 'split-screen', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('video essay', 'video-essay', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('performance documentation', 'performance-documentation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('time-lapse', 'time-lapse', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('slow motion', 'slow-motion', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('found footage', 'found-footage', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('video diary', 'video-diary', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('moving-image installation', 'moving-image-installation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('voice recording', 'voice-recording', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('singing', 'singing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sampling', 'sampling', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('multi-channel sound', 'multi-channel-sound', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('audio editing', 'audio-editing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('microphone work', 'microphone-work', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sound installation', 'sound-installation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('live sound', 'live-sound', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('recorded testimony', 'recorded-testimony', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ambient sound', 'ambient-sound', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('assemblage', 'assemblage', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('carving', 'carving', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('modelling', 'modelling', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('construction', 'construction', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('readymade', 'readymade', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('kinetic sculpture', 'kinetic-sculpture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('object-making', 'object-making', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fabrication', 'fabrication', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('modular form', 'modular-form', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('installation object', 'installation-object', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('relief sculpture', 'relief-sculpture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('small object', 'small-object', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('large-scale object', 'large-scale-object', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('suspended object', 'suspended-object', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('found-object sculpture', 'found-object-sculpture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('welded form', 'welded-form', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('built form', 'built-form', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sculptural support', 'sculptural-support', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('site-specific installation', 'site-specific-installation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('wall work', 'wall-work', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('floor work', 'floor-work', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('projection installation', 'projection-installation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('immersive space', 'immersive-space', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('room intervention', 'room-intervention', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('temporary installation', 'temporary-installation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('spatial arrangement', 'spatial-arrangement', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('viewer movement', 'viewer-movement', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('threshold', 'threshold', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('environment', 'environment', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('walkthrough', 'walkthrough', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('constellation', 'constellation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('plinth arrangement', 'plinth-arrangement', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hanging system', 'hanging-system', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('architectural intervention', 'architectural-intervention', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sensory installation', 'sensory-installation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('appliqué', 'appliqu', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('dyeing', 'dyeing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('felting', 'felting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('garment construction', 'garment-construction', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('soft form', 'soft-form', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fibre installation', 'fibre-installation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('sewing', 'sewing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hand stitch', 'hand-stitch', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('machine stitch', 'machine-stitch', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('banner-making', 'banner-making', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('fabric construction', 'fabric-construction', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('wearable textile', 'wearable-textile', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('textile assemblage', 'textile-assemblage', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('hand-building', 'hand-building', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('wheel throwing', 'wheel-throwing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('slip casting', 'slip-casting', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('raku', 'raku', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('vessel-making', 'vessel-making', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ceramic sculpture', 'ceramic-sculpture', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('surface carving', 'surface-carving', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('clay modelling', 'clay-modelling', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('coil building', 'coil-building', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('slab building', 'slab-building', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('pinch pot', 'pinch-pot', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ceramic installation', 'ceramic-installation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('ceramic fragment', 'ceramic-fragment', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('glaze testing', 'glaze-testing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('kiln process', 'kiln-process', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('endurance', 'endurance', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('costume', 'costume', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('live work', 'live-work', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('body action', 'body-action', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('performed task', 'performed-task', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('spoken performance', 'spoken-performance', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('durational work', 'durational-work', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('audience encounter', 'audience-encounter', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('private performance', 'private-performance', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('performance for camera', 'performance-for-camera', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('web design', 'web-design', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('coding', 'coding', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('3D modelling', '3d-modelling', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('digital collage', 'digital-collage', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('interactive media', 'interactive-media', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('game environment', 'game-environment', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('augmented image', 'augmented-image', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('data visualisation', 'data-visualisation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('interface design', 'interface-design', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('digital publication', 'digital-publication', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('digital drawing', 'digital-drawing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('video editing', 'video-editing', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('image manipulation', 'image-manipulation', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('screen-based work', 'screen-based-work', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('online performance', 'online-performance', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('database work', 'database-work', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('interactive website', 'interactive-website', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO concepts (name, slug, description)
VALUES ('browser-based artwork', 'browser-based-artwork', NULL)
ON CONFLICT(slug) DO UPDATE SET
  name = excluded.name,
  description = excluded.description,
  updated_at = CURRENT_TIMESTAMP;
