---
tags: [site-administration, sharepoint, overview]
date: 2026-05-19
---

# Site Administration Overview

Day-to-day management of SharePoint sites: creation, settings, storage, and lifecycle.

## Site Types

| Type                   | Template                      | Use Case                            |
| ---------------------- | ----------------------------- | ----------------------------------- |
| Team site (M365 group) | `GROUP#0`                     | Collaborative project or team       |
| Team site (no group)   | `STS#3`                       | Intranet section, no Teams required |
| Communication site     | `SITEPAGEPUBLISHING#0`        | Department portal, news, broadcast  |
| Hub site               | Registered on top of any site | Aggregation and navigation anchor   |

## Creating a Site

SharePoint Admin Center → **Sites** → **Active sites** → **+ Create**

Or via PnP PowerShell:
```powershell
New-PnPSite -Type TeamSite -Title "Finance Team" -Alias "finance-team"
New-PnPSite -Type CommunicationSite -Title "Finance Portal" -Url "https://tenant.sharepoint.com/sites/finance"
```

## Key Site Settings

Site Settings (gear icon → Site settings) — available settings vary by site type:

| Setting | Purpose |
|---------|---------|
| Title, description, logo | Branding |
| Regional settings | Language, time zone, calendar |
| Site features | Enable/disable features (e.g., Publishing, Metadata Navigation) |
| Site collection features | Site-collection-level features |
| Delete this site | Sends to Recycle Bin (180-day retention) |

## Storage Quota

SharePoint Admin Center → site → **Storage** tab.
Tenant pool is shared; per-site quotas are optional (useful for large sites).

## Site Admins vs. Site Owners

| Role                            | Access                                                     |
| ------------------------------- | ---------------------------------------------------------- |
| Site collection administrator   | Full control + access to site settings hidden from owners  |
| Site owner (Full Control group) | Manage content and permissions, but not all admin settings |

Set site collection admins: SharePoint Admin Center → site → **Membership** tab → **Site collection admins**.

## Site Lifecycle

1. **Active** — in use
2. **Inactive (no activity)** — SharePoint may send an "inactive site" notification after 180+ days
3. **Deleted** — site in the SharePoint Recycle Bin (93-day retention before permanent deletion)
4. **Permanently deleted** — recoverable from the admin deleted sites list for up to 93 days

Restore a deleted site: SharePoint Admin Center → **Sites** → **Deleted sites**.

## Related

- [[Governance Overview]]
- [[Hub Sites Overview]]
- [[Permissions Overview]]
- [[Templates Overview]]
