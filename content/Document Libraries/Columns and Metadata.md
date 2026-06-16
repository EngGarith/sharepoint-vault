---
tags: [document-libraries, columns, metadata, sharepoint]
date: 2026-05-19
---

# Columns and Metadata

Columns add structured metadata to documents, enabling classification, filtering, search refinement, and automation triggers.

## Column Types

| Type | Use Case |
|------|----------|
| Single line of text | Short labels, reference codes |
| Multiple lines of text | Descriptions, notes |
| Choice | Predefined dropdown options |
| Number | Quantities, scores |
| Currency | Financial values |
| Date and Time | Dates, due dates |
| Person or Group | Assign to a user/group |
| Yes/No | Boolean flag |
| Hyperlink or Picture | Links |
| Managed Metadata | Term Store taxonomy values |
| Lookup | Value from another list in the same site |
| Calculated | Formula-derived value (read-only) |

## Site Columns vs. List Columns

| | Site Column | List/Library Column |
|--|------------|-------------------|
| Scope | Site collection | One list/library only |
| Reuse | Add to any list/library in the site | Cannot be shared |
| Search | Consistent managed property mapping | Inconsistent without extra mapping |
| Recommended? | Yes — for any column used in 2+ places | Only for truly one-off columns |

## Creating a Site Column

Site Settings → **Site columns** → **Create**

## Adding a Column to a Library

Library → **+ Add column** → select type → configure settings

Or: Library Settings → **Columns** → **Add from existing site columns**

## Column Indexing

For libraries approaching the 5,000-item threshold, index the columns used in filters and sorts:
Library Settings → **Indexed columns** → **Create a new index**

## Required and Default Values

- Mark columns **Required** only when data is truly mandatory at upload time — too many required fields obstruct bulk upload.
- Set **Default values** for columns like Department, Year, or Status to reduce manual entry.

## Related

- [[Document Libraries Overview]]
- [[Content Types]]
- [[Search Overview]]
- [[Term Store]]
