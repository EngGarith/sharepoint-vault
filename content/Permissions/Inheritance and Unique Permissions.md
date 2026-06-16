---
tags: [permissions, inheritance, sharepoint]
date: 2026-05-19
---

# Inheritance and Unique Permissions

By default, all libraries, lists, folders, and items on a site **inherit** the site's permission set. Breaking inheritance creates a **unique permission set** on that object.

## Breaking Inheritance

Navigate to the object (library, folder, item) → **Manage Access** or Library Settings → **Permissions for this document library** → **Stop Inheriting Permissions**.

A copy of the parent's permissions is taken at the moment of breaking. You then modify the copy independently.

## Restoring Inheritance

**Permissions page** → **Delete Unique Permissions** — this discards the unique set and re-attaches to the parent. Any permissions added after breaking inheritance are lost.

## When to Break Inheritance

| Use Case | Recommendation |
|----------|---------------|
| Restrict a confidential library | Break at library level, add only the permitted group |
| Sensitive folder within a shared library | Break at folder level — use sparingly, complex to audit |
| Single confidential document | Break at item level — avoid if possible; very hard to manage at scale |

## Auditing Unique Permissions

Run a permission report via the SharePoint Admin Center or PowerShell:
```powershell
# PnP PowerShell — list all lists with unique permissions on a site
Get-PnPList | Where-Object { $_.HasUniqueRoleAssignments }
```

## Cautions

- Too many unique permission sets significantly increase permission-check overhead and complicate auditing.
- Use sensitivity labels or IRM as an alternative to granular item-level permissions where possible (see [[Sensitivity Labels Overview]]).
- Document every intentional break in [[Governance Overview]].

## Related

- [[Permissions Overview]]
- [[Permission Levels]]
- [[Site Permissions]]
