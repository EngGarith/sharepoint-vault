---
tags: [document-libraries, configuration, sharepoint]
date: 2026-05-19
---

# Library Configuration

Key settings for configuring a document library after creation.

## Library Settings (Quick Reference)

Library → ⚙ → **Library settings**

| Setting | Location | Notes |
|---------|----------|-------|
| Name and description | General settings | URL name cannot be changed post-creation |
| Versioning | Versioning settings | See [[Versioning]] |
| Content types | Advanced settings → enable management | See [[Content Types]] |
| Default open behavior | Advanced settings | Browser vs. desktop app |
| Offline client availability | Advanced settings | Allow/block sync via OneDrive client |
| IRM | Information Rights Management | See [[IRM and Document Protection]] |
| Column default values | Column default value settings | Per-folder defaults |

## Views

Views define how items are displayed (columns shown, sort order, filters, grouping).

Create a view: Library → **All Documents** dropdown → **Create new view**

| View Type | Description |
|-----------|-------------|
| Standard | Table / grid — most common |
| Datasheet | Inline editing like a spreadsheet |
| Calendar | Date-based items on a calendar |
| Gallery | Card-based visual layout |

## Quick Edit (Datasheet) Mode

Library → **Edit in grid view** — bulk-edit metadata without opening documents.

## Folders vs. Metadata

Prefer metadata columns over deep folder hierarchies. Folders cannot be searched across without explicit scoping, and they create permission complexity. Use views to simulate a folder-like browsing experience.

Exception: use folders when file count per "category" exceeds ~2,000 items — folders provide an extra indexing tier.

## Permissions on a Library

See [[Inheritance and Unique Permissions]] for when and how to break inheritance at the library level.

## Related

- [[Document Libraries Overview]]
- [[Versioning]]
- [[Columns and Metadata]]
- [[Content Types]]
