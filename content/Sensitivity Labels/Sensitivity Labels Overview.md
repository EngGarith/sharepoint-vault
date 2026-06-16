---
tags: [sensitivity-labels, purview, sharepoint, overview]
date: 2026-05-19
---

# Sensitivity Labels Overview

Microsoft Purview sensitivity labels classify and protect content across Microsoft 365, including SharePoint sites and documents stored within them.

## Label Scope

Labels can be scoped to:
- **Files and emails** — protect individual documents and emails
- **Groups and sites** — control site-level settings (privacy, external sharing, device access)
- **Schema data** (Purview data map — out of scope here)

## How Labels Interact with SharePoint

| Label Setting | Effect on SharePoint |
|--------------|---------------------|
| Encryption | Documents encrypted with RMS; restricts who can open/edit regardless of SharePoint permissions |
| Site privacy | Sets M365 group/Team to Public or Private |
| External sharing | Overrides site-level external sharing setting (can only restrict, not expand) |
| Unmanaged device access | Blocks or limits browser-only access from non-Intune devices |
| Default sharing link type | Controls the default link type when sharing from a labeled site |

## Label Hierarchy (Taxonomy)

Labels are usually organized in a parent/child hierarchy:
```
Public
Internal
  Internal - General
  Internal - Confidential
Confidential
  Confidential - Finance
  Confidential - HR
Highly Confidential
```

## Key Notes

- [[Label Policies]] — How labels are published to users
- [[Applying Labels]] — Applying labels to sites and documents
- [[Auto-Labeling]] — Policy-based automatic classification

## Admin Location

Microsoft Purview compliance portal → **Information protection** → **Labels**

## Related

- [[Permissions Overview]] — Labels add protection on top of SharePoint permissions
- [[Governance Overview]] — Label taxonomy and usage policy
- [[Document Libraries Overview]] — Default library labels
