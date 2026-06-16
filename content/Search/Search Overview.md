---
tags: [search, sharepoint, overview]
date: 2026-05-19
---

# Search Overview

SharePoint Search indexes all content in sites users have access to and surfaces it via the search bar, result pages, and search web parts.

## Architecture Components

| Component | Purpose |
|-----------|---------|
| Content sources | What gets crawled (SharePoint sites by default; external via connectors) |
| Crawl | Automatic process that indexes new/changed content |
| Managed properties | Searchable/refinable metadata fields mapped from crawled properties |
| Result sources | Scoped queries against the index (e.g., "only this site") |
| Query rules | Promote results or add blocks for specific queries |
| Search schema | The full set of managed + crawled property mappings |

## Search Entry Points

- **Microsoft Search bar** (top of SharePoint/M365 apps) — modern, AI-enhanced
- **Classic SharePoint Search** — `/_layouts/15/search.aspx` — still available on classic sites
- **Search web parts** — modern pages: Search Results, Search Box, Filters web parts

## Managed Properties

Managed properties are the indexed, queryable fields. They are mapped from **crawled properties** (raw metadata extracted during crawl).

See [[Managed Properties and Crawled Properties]] for detail.

## Term Store and Managed Metadata

The Term Store provides controlled vocabulary (taxonomy) used as metadata on lists and libraries. Term Store columns are mapped to managed properties and become refiners in search.

See [[Term Store]] for setup and administration.

## Result Sources

Scoped queries that power search web parts on specific pages or sites. See [[Result Sources and Query Rules]].

## Search Analytics

SharePoint Admin Center → **Search** → **Search insights** — top queries, abandoned queries, no-results queries.

## Related

- [[Term Store]]
- [[Managed Properties and Crawled Properties]]
- [[Result Sources and Query Rules]]
- [[Document Libraries Overview]] — metadata on documents drives search quality
- [[Content Types]] — content types surface as search refiners
