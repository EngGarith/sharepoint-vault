---
tags: [lists, sharepoint, overview]
date: 2026-05-19
---

# Lists Overview

A SharePoint list is a structured table of rows (items) and columns (fields), used to track data — tasks, contacts, issue registers, approvals, inventories, and more.

## Lists vs. Document Libraries

| | List | Document Library |
|--|------|-----------------|
| Primary content | Structured data items | Files/documents |
| Base type | `GenericList` (100) | `DocumentLibrary` (101) |
| Attachments | Yes (per item) | N/A — the file is the content |
| Versioning | Per item (columns only) | Per file + metadata |

## Key Notes

- [[List Design and Columns]] — Column types, calculated columns, validation
- [[List Views]] — Filtering, sorting, grouping, and formatting
- [[List Forms and Power Apps]] — Customizing item forms

## Creating a List

Site Contents → **+ New** → **List**
Or **+ New** → **From existing list** to copy the schema.

## List Templates (Microsoft)

The modern list creation wizard offers built-in templates:
- Issue tracker, Employee onboarding, Event itinerary, Asset manager, Recruitment tracker, etc.

## Limits

| Limit | Value |
|-------|-------|
| Items per list | 30 million |
| Items per view without index | 5,000 (list view threshold) |
| Columns per list | 600 (effective usable ~300) |
| Attachment size | 250 MB per attachment |

## List Permissions

Lists inherit site permissions by default. Break inheritance for confidential lists — see [[Inheritance and Unique Permissions]].

## Related

- [[Document Libraries Overview]]
- [[Content Types]]
- [[Power Automate Overview]]
- [[Search Overview]]
