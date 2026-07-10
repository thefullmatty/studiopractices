export default {
  async fetch(request, env) {
    const url = new URL(request.url);

    // API: list all active concepts
    if (url.pathname === "/api/concepts") {
      const { results } = await env.DB
        .prepare(`
          SELECT
            c.id,
            c.name,
            c.slug,
            c.description,
            s.name AS subset_name,
            s.slug AS subset_slug,
            cs.name AS set_name,
            cs.slug AS set_slug
          FROM concepts c
          JOIN concept_subset_links l ON l.concept_id = c.id
          JOIN concept_subsets s ON s.id = l.subset_id
          JOIN concept_sets cs ON cs.id = s.set_id
          WHERE c.active = 1
          ORDER BY cs.display_order, s.display_order, l.display_order, c.name
        `)
        .all();

      return Response.json(results);
    }

    // API: list concepts for one subset, e.g. /api/concepts/observe-and-document
    if (url.pathname.startsWith("/api/concepts/")) {
      const subsetSlug = url.pathname.replace("/api/concepts/", "");

      const { results } = await env.DB
        .prepare(`
          SELECT
            c.id,
            c.name,
            c.slug,
            c.description,
            s.name AS subset_name,
            s.slug AS subset_slug,
            cs.name AS set_name,
            cs.slug AS set_slug
          FROM concepts c
          JOIN concept_subset_links l ON l.concept_id = c.id
          JOIN concept_subsets s ON s.id = l.subset_id
          JOIN concept_sets cs ON cs.id = s.set_id
          WHERE c.active = 1
            AND s.slug = ?
          ORDER BY l.display_order, c.name
        `)
        .bind(subsetSlug)
        .all();

      return Response.json(results);
    }

    // Health check
    if (url.pathname === "/api/health") {
      return Response.json({
        ok: true,
        message: "Studio Practices Worker is running.",
        database: "studio_practice_project"
      });
    }

    // Let Cloudflare serve static assets for everything else
    return env.ASSETS.fetch(request);
  }
};
