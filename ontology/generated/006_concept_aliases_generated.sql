PRAGMA foreign_keys = ON;

-- Generated from ./ontology/source/concepts.csv

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'embodiment', 'embodiment'
FROM concepts c
WHERE c.slug = 'body';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'corporeality', 'corporeality'
FROM concepts c
WHERE c.slug = 'body';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'physicality', 'physicality'
FROM concepts c
WHERE c.slug = 'body';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'the body', 'the-body'
FROM concepts c
WHERE c.slug = 'body';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'self-perception', 'self-perception'
FROM concepts c
WHERE c.slug = 'self-image';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'self-representation', 'self-representation'
FROM concepts c
WHERE c.slug = 'self-image';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'image of self', 'image-of-self'
FROM concepts c
WHERE c.slug = 'self-image';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'identity image', 'identity-image'
FROM concepts c
WHERE c.slug = 'self-image';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'gender identity', 'gender-identity'
FROM concepts c
WHERE c.slug = 'gender';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'gender expression', 'gender-expression'
FROM concepts c
WHERE c.slug = 'gender';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'gendered experience', 'gendered-experience'
FROM concepts c
WHERE c.slug = 'gender';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'motherhood', 'motherhood'
FROM concepts c
WHERE c.slug = 'gender';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'femininity', 'femininity'
FROM concepts c
WHERE c.slug = 'gender';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'gender roles', 'gender-roles'
FROM concepts c
WHERE c.slug = 'gender';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'gender and power', 'gender-and-power'
FROM concepts c
WHERE c.slug = 'gender-politics';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'gender inequality', 'gender-inequality'
FROM concepts c
WHERE c.slug = 'gender-politics';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'gender critique', 'gender-critique'
FROM concepts c
WHERE c.slug = 'gender-politics';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'feminist art', 'feminist-art'
FROM concepts c
WHERE c.slug = 'feminism';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'feminist theory', 'feminist-theory'
FROM concepts c
WHERE c.slug = 'feminism';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'women''s experience', 'women''s-experience'
FROM concepts c
WHERE c.slug = 'feminism';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'gender justice', 'gender-justice'
FROM concepts c
WHERE c.slug = 'feminism';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'queerness', 'queerness'
FROM concepts c
WHERE c.slug = 'queer-identity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'LGBTQIA+', 'lgbtqia+'
FROM concepts c
WHERE c.slug = 'queer-identity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'queer experience', 'queer-experience'
FROM concepts c
WHERE c.slug = 'queer-identity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'queer culture', 'queer-culture'
FROM concepts c
WHERE c.slug = 'queer-identity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'transness', 'transness'
FROM concepts c
WHERE c.slug = 'trans-identity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'trans experience', 'trans-experience'
FROM concepts c
WHERE c.slug = 'trans-identity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'gender transition', 'gender-transition'
FROM concepts c
WHERE c.slug = 'trans-identity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'gender affirmation', 'gender-affirmation'
FROM concepts c
WHERE c.slug = 'trans-identity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'desire', 'desire'
FROM concepts c
WHERE c.slug = 'sexuality';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'sexual identity', 'sexual-identity'
FROM concepts c
WHERE c.slug = 'sexuality';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'erotics', 'erotics'
FROM concepts c
WHERE c.slug = 'sexuality';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'orientation', 'orientation'
FROM concepts c
WHERE c.slug = 'sexuality';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'manhood', 'manhood'
FROM concepts c
WHERE c.slug = 'masculinity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'male identity', 'male-identity'
FROM concepts c
WHERE c.slug = 'masculinity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'masculine performance', 'masculine-performance'
FROM concepts c
WHERE c.slug = 'masculinity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'masculine culture', 'masculine-culture'
FROM concepts c
WHERE c.slug = 'masculinity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'access', 'access'
FROM concepts c
WHERE c.slug = 'disability';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'disabled experience', 'disabled-experience'
FROM concepts c
WHERE c.slug = 'disability';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'ableism', 'ableism'
FROM concepts c
WHERE c.slug = 'disability';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'crip theory', 'crip-theory'
FROM concepts c
WHERE c.slug = 'disability';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'neurodivergence', 'neurodivergence'
FROM concepts c
WHERE c.slug = 'neurodiversity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'autism', 'autism'
FROM concepts c
WHERE c.slug = 'neurodiversity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'ADHD', 'adhd'
FROM concepts c
WHERE c.slug = 'neurodiversity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'sensory experience', 'sensory-experience'
FROM concepts c
WHERE c.slug = 'neurodiversity';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'hurt', 'hurt'
FROM concepts c
WHERE c.slug = 'pain';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'suffering', 'suffering'
FROM concepts c
WHERE c.slug = 'pain';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'ache', 'ache'
FROM concepts c
WHERE c.slug = 'pain';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'wound', 'wound'
FROM concepts c
WHERE c.slug = 'pain';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'discomfort', 'discomfort'
FROM concepts c
WHERE c.slug = 'pain';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'chronic pain', 'chronic-pain'
FROM concepts c
WHERE c.slug = 'pain';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'sensory intensity', 'sensory-intensity'
FROM concepts c
WHERE c.slug = 'pain';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'body size', 'body-size'
FROM concepts c
WHERE c.slug = 'fat-politics';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'fat liberation', 'fat-liberation'
FROM concepts c
WHERE c.slug = 'fat-politics';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'body politics', 'body-politics'
FROM concepts c
WHERE c.slug = 'fat-politics';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'anti-fat bias', 'anti-fat-bias'
FROM concepts c
WHERE c.slug = 'fat-politics';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'self-determination', 'self-determination'
FROM concepts c
WHERE c.slug = 'bodily-autonomy';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'body rights', 'body-rights'
FROM concepts c
WHERE c.slug = 'bodily-autonomy';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'consent', 'consent'
FROM concepts c
WHERE c.slug = 'bodily-autonomy';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'agency', 'agency'
FROM concepts c
WHERE c.slug = 'bodily-autonomy';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'portrait', 'portrait'
FROM concepts c
WHERE c.slug = 'portraiture';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'self-portrait', 'self-portrait'
FROM concepts c
WHERE c.slug = 'portraiture';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'likeness', 'likeness'
FROM concepts c
WHERE c.slug = 'portraiture';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'figure', 'figure'
FROM concepts c
WHERE c.slug = 'portraiture';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'camouflage', 'camouflage'
FROM concepts c
WHERE c.slug = 'masking';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'passing', 'passing'
FROM concepts c
WHERE c.slug = 'masking';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'concealment', 'concealment'
FROM concepts c
WHERE c.slug = 'masking';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'social performance', 'social-performance'
FROM concepts c
WHERE c.slug = 'masking';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'lived body', 'lived-body'
FROM concepts c
WHERE c.slug = 'embodiment';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'body experience', 'body-experience'
FROM concepts c
WHERE c.slug = 'embodiment';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'corporeality', 'corporeality'
FROM concepts c
WHERE c.slug = 'embodiment';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'somatic experience', 'somatic-experience'
FROM concepts c
WHERE c.slug = 'embodiment';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'exposure', 'exposure'
FROM concepts c
WHERE c.slug = 'vulnerability';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'fragility', 'fragility'
FROM concepts c
WHERE c.slug = 'vulnerability';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'openness', 'openness'
FROM concepts c
WHERE c.slug = 'vulnerability';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'risk', 'risk'
FROM concepts c
WHERE c.slug = 'vulnerability';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'change', 'change'
FROM concepts c
WHERE c.slug = 'transformation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'becoming', 'becoming'
FROM concepts c
WHERE c.slug = 'transformation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'metamorphosis', 'metamorphosis'
FROM concepts c
WHERE c.slug = 'transformation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'transition', 'transition'
FROM concepts c
WHERE c.slug = 'transformation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'closeness', 'closeness'
FROM concepts c
WHERE c.slug = 'intimacy';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'care', 'care'
FROM concepts c
WHERE c.slug = 'intimacy';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'touch', 'touch'
FROM concepts c
WHERE c.slug = 'intimacy';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'private relation', 'private-relation'
FROM concepts c
WHERE c.slug = 'intimacy';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'performed self', 'performed-self'
FROM concepts c
WHERE c.slug = 'persona';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'public self', 'public-self'
FROM concepts c
WHERE c.slug = 'persona';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'character', 'character'
FROM concepts c
WHERE c.slug = 'persona';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'identity performance', 'identity-performance'
FROM concepts c
WHERE c.slug = 'persona';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'recognition', 'recognition'
FROM concepts c
WHERE c.slug = 'visibility';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'being seen', 'being-seen'
FROM concepts c
WHERE c.slug = 'visibility';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'exposure', 'exposure'
FROM concepts c
WHERE c.slug = 'visibility';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'public presence', 'public-presence'
FROM concepts c
WHERE c.slug = 'visibility';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'double', 'double'
FROM concepts c
WHERE c.slug = 'alter-ego';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'avatar', 'avatar'
FROM concepts c
WHERE c.slug = 'alter-ego';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'other self', 'other-self'
FROM concepts c
WHERE c.slug = 'alter-ego';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'character', 'character'
FROM concepts c
WHERE c.slug = 'alter-ego';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'depiction', 'depiction'
FROM concepts c
WHERE c.slug = 'representation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'image', 'image'
FROM concepts c
WHERE c.slug = 'representation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'portrayal', 'portrayal'
FROM concepts c
WHERE c.slug = 'representation';

INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)
SELECT c.id, 'visual representation', 'visual-representation'
FROM concepts c
WHERE c.slug = 'representation';
