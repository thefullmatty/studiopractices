import re
import csv
from pathlib import Path

SOURCE = Path("./ontology/studio_practices_concepts_schema_and_seed.sql")
OUT = Path("./ontology/source/concepts_from_old_seed.csv")

text = SOURCE.read_text(encoding="utf-8")

# Capture blocks like:
# INSERT OR IGNORE INTO concepts (name, slug) VALUES ('body', 'body');
# ... JOIN concept_subsets s ON s.slug = 'body-and-identity'
# ... JOIN concept_sets cs ... cs.slug = 'theme'
pattern = re.compile(
    r"INSERT OR IGNORE INTO concepts\s*\(name,\s*slug\)\s*VALUES\s*\('((?:''|[^'])*)',\s*'((?:''|[^'])*)'\);\s*"
    r"INSERT OR IGNORE INTO concept_subset_links.*?"
    r"JOIN concept_subsets s ON s\.slug = '((?:''|[^'])*)'.*?"
    r"JOIN concept_sets cs ON cs\.id = s\.set_id AND cs\.slug = '((?:''|[^'])*)'",
    re.DOTALL
)

rows = []
seen = set()

for match in pattern.finditer(text):
    name, slug, subset_slug, set_slug = match.groups()
    name = name.replace("''", "'")
    slug = slug.replace("''", "'")
    subset_slug = subset_slug.replace("''", "'")
    set_slug = set_slug.replace("''", "'")

    key = (set_slug, subset_slug, slug)
    if key in seen:
        continue
    seen.add(key)

    rows.append({
        "set_slug": set_slug,
        "subset_slug": subset_slug,
        "name": name,
        "slug": slug,
        "description": "",
        "aliases": "",
        "related_slugs": ""
    })

OUT.parent.mkdir(parents=True, exist_ok=True)

with OUT.open("w", newline="", encoding="utf-8") as f:
    writer = csv.DictWriter(
        f,
        fieldnames=[
            "set_slug",
            "subset_slug",
            "name",
            "slug",
            "description",
            "aliases",
            "related_slugs"
        ]
    )
    writer.writeheader()
    writer.writerows(rows)

print(f"Extracted {len(rows)} concept rows.")
print(f"Wrote {OUT}")
