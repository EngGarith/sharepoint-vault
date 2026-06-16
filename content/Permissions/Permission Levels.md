---
tags: [permissions, permission-levels, sharepoint]
date: 2026-05-19
---

# Permission Levels

Permission levels are named bundles of granular permissions assigned to a SharePoint group or user on a specific site.

## Built-In Permission Levels

| Level | Description |
|-------|-------------|
| Full Control | All permissions — site owners only |
| Design | Can create lists/libraries, approve items, edit pages |
| Edit | Can add, edit, delete items and documents |
| Contribute | Can add and edit items but not delete |
| Read | View-only access |
| Limited Access | System-managed; used when inheritance is broken on a sub-item |
| View Only | View without download (useful for IRM scenarios) |

## Creating a Custom Permission Level

1. **Site Settings** → **Site Permissions** → **Permission Levels**
2. Click **Add a Permission Level**
3. Name the level and select the granular permissions
4. Save

> Custom levels are site-scoped — they exist only on the site collection where they are created.

## Common Granular Permissions

- `Manage Lists` — create, delete, manage settings for lists and libraries
- `Add Items`, `Edit Items`, `Delete Items`
- `Approve Items` — publish draft/pending-approval items
- `Open Items` — view source of items with server-side file handlers
- `Manage Permissions` — assign permissions to users/groups
- `View Application Pages` — access site administration pages

## Related

- [[Permissions Overview]]
- [[Site Permissions]]
- [[Inheritance and Unique Permissions]]
