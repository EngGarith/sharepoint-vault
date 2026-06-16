---
tags: [search, term-store, managed-metadata, sharepoint]
date: 2026-05-19
---

# Term Store

The Term Store (Managed Metadata Service) is SharePoint's controlled vocabulary system. It stores hierarchical taxonomies (term sets and terms) that are used as metadata column values across sites, libraries, and lists.

## Structure

```
Term Store
  └── Group (org unit — e.g., "Corporate Taxonomy")
        └── Term Set (a taxonomy — e.g., "Department")
              └── Term (a value — e.g., "Finance")
                    └── Child Term (e.g., "Group Finance")
```

## Accessing the Term Store

SharePoint Admin Center → **Content services** → **Term store**

Or legacy: any site → Site Settings → **Term store management**

## Key Concepts

| Concept | Description |
|---------|-------------|
| Term group | Top-level container; a group of related term sets |
| Term set | A flat or hierarchical list of allowed values for a Managed Metadata column |
| Term | A single value in a term set; can have synonyms (labels) and translations |
| Managed Metadata column | A library/list column that draws its allowed values from a term set |
| Default label | The primary display name of a term |
| Other labels (synonyms) | Alternate names — search matches on these too |

## Creating a Term Set

1. Term Store admin page → select a group (or create a new group)
2. Right-click the group → **Create term set**
3. Name the term set → enter terms one per line or use the UI to add individually
4. Set **Submission policy**: Closed (only admins can add terms) or Open (users can suggest)

## Adding a Managed Metadata Column to a Library

Library Settings → **Create column** → type: **Managed Metadata** → select the term set

## Term Synonyms and Search

Synonyms are indexed — searching for any label of a term returns results tagged with that term. This is powerful for multilingual or acronym-heavy taxonomies.

## Exporting / Importing Term Sets

Term Store admin → select a term set → **Export** (downloads `.csv`)
For bulk import: prepare a CSV in the required format → **Import term set** on a group.

## Related

- [[Search Overview]]
- [[Managed Properties and Crawled Properties]]
- [[Content Types]]
- [[Document Libraries Overview]]
