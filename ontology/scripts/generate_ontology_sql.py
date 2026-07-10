import csv
from pathlib import Path

SOURCE = Path("./ontology/source/concepts.csv")
OUT_DIR = Path("./ontology/generated")

OUT_DIR.mkdir(parents=True, exist_ok=True)

def q(value):
    """SQL quote a string safely enough for generated SQLite seed files."""
    if value is None:
        return "NULL"
    value = str(value).strip()
    if value == "":
        return "NULL"
    return "'" + value.replace("'", "''") + "'"

def slugify_alias(alias):
    return (
        alias.strip()
        .lower()
        .replace("&", "and")
        .replace("/", "-")
        .replace(" ", "-")
        .replace("_", "-")
    )

rows = []
with SOURCE.open(newline="", encoding="utf-8") as f:
    reader = csv.DictReader(f)
    for row in reader:
        rows.append({k: (v or "").strip() for k, v in row.items()})

# 004 concepts
concepts_sql = [
    "PRAGMA foreign_keys = ON;",
    "",
    "-- Generated from ./ontology/source/concepts.csv",
    "",
]

for row in rows:
    concepts_sql.append(
        "INSERT OR IGNORE INTO concepts (name, slug, description)\n"
        f"VALUES ({q(row['name'])}, {q(row['slug'])}, {q(row['description'])});\n"
    )

(OUT_DIR / "004_concepts_generated.sql").write_text("\n".join(concepts_sql), encoding="utf-8")

# 005 links
links_sql = [
    "PRAGMA foreign_keys = ON;",
    "",
    "-- Generated from ./ontology/source/concepts.csv",
    "",
]

display_counter = {}
for row in rows:
    subset = row["subset_slug"]
    display_counter[subset] = display_counter.get(subset, 0) + 1
    order = display_counter[subset]

    links_sql.append(
        "INSERT OR IGNORE INTO concept_subset_links (concept_id, subset_id, display_order, is_primary)\n"
        f"SELECT c.id, s.id, {order}, 1\n"
        "FROM concepts c\n"
        "JOIN concept_subsets s ON s.slug = "
        f"{q(row['subset_slug'])}\n"
        f"WHERE c.slug = {q(row['slug'])};\n"
    )

(OUT_DIR / "005_concept_links_generated.sql").write_text("\n".join(links_sql), encoding="utf-8")

# 006 aliases
aliases_sql = [
    "PRAGMA foreign_keys = ON;",
    "",
    "-- Generated from ./ontology/source/concepts.csv",
    "",
]

for row in rows:
    aliases = [a.strip() for a in row.get("aliases", "").split("|") if a.strip()]
    for alias in aliases:
        aliases_sql.append(
            "INSERT OR IGNORE INTO concept_aliases (concept_id, alias, slug)\n"
            "SELECT c.id, "
            f"{q(alias)}, {q(slugify_alias(alias))}\n"
            "FROM concepts c\n"
            f"WHERE c.slug = {q(row['slug'])};\n"
        )

(OUT_DIR / "006_concept_aliases_generated.sql").write_text("\n".join(aliases_sql), encoding="utf-8")

# 007 relationships
relationships_sql = [
    "PRAGMA foreign_keys = ON;",
    "",
    "-- Generated from ./ontology/source/concepts.csv",
    "",
]

for row in rows:
    related = [r.strip() for r in row.get("related_slugs", "").split("|") if r.strip()]
    for target_slug in related:
        relationships_sql.append(
            "INSERT OR IGNORE INTO concept_relationships "
            "(source_concept_id, target_concept_id, relationship_type, weight, note)\n"
            "SELECT source.id, target.id, 'related', 1.0, NULL\n"
            "FROM concepts source\n"
            "JOIN concepts target ON target.slug = "
            f"{q(target_slug)}\n"
            f"WHERE source.slug = {q(row['slug'])};\n"
        )

(OUT_DIR / "007_concept_relationships_generated.sql").write_text("\n".join(relationships_sql), encoding="utf-8")

print(f"Generated SQL from {len(rows)} concept rows.")
print("Wrote:")
print(" - ontology/generated/004_concepts_generated.sql")
print(" - ontology/generated/005_concept_links_generated.sql")
print(" - ontology/generated/006_concept_aliases_generated.sql")
print(" - ontology/generated/007_concept_relationships_generated.sql")
