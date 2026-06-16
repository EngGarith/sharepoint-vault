---
tags: [permissions, external-sharing, sharepoint, governance]
date: 2026-05-19
---

# External Sharing

Controls how SharePoint content is shared with people outside the organization.

## Sharing Hierarchy

Tenant setting ≥ Site setting (site can only be more restrictive, never more permissive than the tenant).

## Tenant-Level Settings

SharePoint Admin Center → **Policies** → **Sharing**

| Option | Description |
|--------|-------------|
| Anyone | Shareable links with no sign-in required ("anonymous links") |
| New and existing guests | Guests must authenticate; new external users must accept invite |
| Existing guests only | Only users already in the AAD tenant's guest directory |
| Only people in your organization | No external sharing |

## Site-Level Settings

SharePoint Admin Center → **Sites** → **Active sites** → select site → **Policies** tab → **External sharing**

Or via PowerShell:
```powershell
Set-SPOSite -Identity https://tenant.sharepoint.com/sites/sitename -SharingCapability ExternalUserSharingOnly
```

## Link Types

| Link Type | Who Can Use | When to Use |
|-----------|------------|-------------|
| Anyone link | Anyone with the link | Public resources only |
| People in your organization | Internal only | Default for internal collaboration |
| Specific people | Named users/groups | Precise external sharing |

## Expiry and Link Settings

- Set default link expiry for "Anyone" links in tenant settings
- Set link permissions to View-only to prevent download
- Use **Access requests** to route external share requests for approval

## Related

- [[Permissions Overview]]
- [[Governance Overview]]
- [[Sensitivity Labels Overview]]
