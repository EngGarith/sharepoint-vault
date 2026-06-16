---
tags: [hub-sites, sharepoint, overview]
date: 2026-05-19
---

# Hub Sites Overview

A hub site is a SharePoint site registered as a hub — it becomes an anchor that associated sites inherit navigation and branding from, and whose content can be rolled up in search and news web parts.

## Benefits of Hub Sites

| Benefit | Description |
|---------|-------------|
| Consistent navigation | Hub navigation bar appears on all associated sites |
| Shared theme/branding | Hub theme propagates to associated sites |
| Search rollup | Searching from a hub site returns results from all associated sites |
| News rollup | News web part on hub can show news from all associated sites |
| Targeted content | Audience targeting for news and highlighted content |

## Hub Hierarchy

Hubs can be organized in a hierarchy:
```
Organization Hub (top-level)
  ├── Finance Hub
  │     ├── Finance Team Site
  │     └── Finance Projects Site
  └── HR Hub
        ├── HR Policies Site
        └── HR Projects Site
```

## Registering a Site as a Hub

SharePoint Admin Center → **Sites** → **Active sites** → select site → **Hub** → **Register as hub site**

Or PowerShell:
```powershell
Register-PnPHubSite -Site https://tenant.sharepoint.com/sites/finance-hub
```

## Hub Site Association

### Associating a Site to a Hub

SharePoint Admin Center → select site → **Hub** → **Associate with a hub** → select hub

Or in the site itself: ⚙ → **Site information** → **Hub site association**

Or PowerShell:
```powershell
Add-PnPHubSiteAssociation -Site https://tenant.sharepoint.com/sites/finance-team -HubSite https://tenant.sharepoint.com/sites/finance-hub
```

See [[Hub Site Association]] for detailed steps and considerations.

## Hub Navigation

Hub navigation is managed from the hub site:
Hub site → **Edit** (on the navigation bar at the top)

Navigation is inherited — associated sites display it automatically. Associated sites can add their own local navigation below the hub bar.

## Hub Site Search

Searching from within an associated site searches only that site.
Searching from the **hub site** searches across all associated sites.

This scoping is automatic — no additional configuration needed.

## Permissions

Hub site permissions are independent of associated site permissions. Being a member of the hub site does not grant access to associated sites.

The **Hub visitors** group controls who can see the hub navigation bar on associated sites.

## Related

- [[Hub Site Association]]
- [[Search Overview]]
- [[Site Administration Overview]]
- [[Governance Overview]]
