---
tags: [document-libraries, sharepoint, overview]
date: 2026-05-19
---
# Document Libraries Overview

A document library is a SharePoint list specialized for storing files, with built-in versioning, check-in/check-out, and co-authoring capabilities.

## Key Features

| Feature | Description |
|---------|-------------|
| Versioning | Major and minor version history |
| Check-in / Check-out | Lock a file for editing |
| Content types | Multiple document schemas in one library |
| Metadata columns | Additional fields that classify documents |
| Views | Custom filters, sorts, and groupings |
| IRM | Information Rights Management — encrypt on download |
| Default sensitivity label | Auto-apply a label to new documents |

## Key Notes

- [[Library Configuration]] — Settings, column setup, views
- [[Versioning]] — Major/minor versions, limits, and retention
- [[Columns and Metadata]] — Column types and best practices
- [[IRM and Document Protection]] — Rights management setup

## Creating a Document Library

Site Contents → **+ New** → **Document library**
- Name (becomes part of the URL — choose carefully)
- Optionally enable versioning at creation

## URL Considerations

The library's internal name (URL segment) is set at creation and cannot be changed without breaking existing links. Use short, hyphen-separated names: `project-docs`, `contracts`, `hr-policies`.

## Limits (Microsoft)

| Limit | Value |
|-------|-------|
| Items per library | 30 million |
| Items per view without index | 5,000 (list view threshold) |
| Max file size | 250 GB |
| Path length | 400 characters |

## Related

- [[Content Types]]
- [[Templates Overview]]
- [[Search Overview]]
- [[Power Automate Overview]]
