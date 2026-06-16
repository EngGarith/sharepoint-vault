---
tags: [permissions, sharepoint, overview]
date: 2026-05-19
---

# Permissions Overview

SharePoint uses a layered permission model: tenant-level policies set the ceiling, site-level groups enforce the norm, and inheritance can be broken at the library, list, folder, or item level.

## Key Concepts

- **Permission Levels** — Named collections of granular permissions (e.g., Full Control, Edit, Read). See [[Permission Levels]].
- **SharePoint Groups** — Containers that hold users/AAD groups and are assigned a permission level on a site.
- **Inheritance** — Child objects (libraries, folders, items) inherit permissions from their parent by default. Breaking inheritance creates a unique permission set.
- **External Sharing** — Controlled at the tenant and site level; configured via the SharePoint Admin Center or PowerShell.

## Standard Site Groups

| Group | Default Level | Purpose |
|-------|--------------|---------|
| `<Site> Owners` | Full Control | Administrators of the site |
| `<Site> Members` | Edit | Contributors who can add/edit content |
| `<Site> Visitors` | Read | Read-only consumers |

## Key Notes

- [[Site Permissions]] — How to manage users and groups on a site
- [[Permission Levels]] — Built-in levels and how to create custom ones
- [[Inheritance and Unique Permissions]] — When and how to break inheritance
- [[External Sharing]] — Tenant and site sharing settings

## Related Topics

- [[Governance Overview]] — Policies around who can grant permissions
- [[Sensitivity Labels Overview]] — Labels can restrict who can access content regardless of SharePoint permissions
