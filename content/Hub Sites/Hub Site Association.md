---
tags: [hub-sites, hub-association, sharepoint]
date: 2026-05-19
---

# Hub Site Association

## Associating a Site to a Hub

### Via SharePoint Admin Center (Global Admin / SharePoint Admin)

1. SharePoint Admin Center → **Sites** → **Active sites**
2. Select the site to associate
3. **Hub** column → click the current value (or **None**)
4. **Associate with a hub** → select the hub → **Save**

### Via the Site Itself (Site Owner)

If the tenant allows site owners to associate their own sites:

⚙ (Site settings) → **Site information** → **Hub site association** → choose hub → **Save**

> Tenant admins can restrict hub association to admins only in SharePoint Admin Center → **Settings** → **Hub site association**.

### Via PowerShell

```powershell
# Associate
Add-PnPHubSiteAssociation -Site https://tenant.sharepoint.com/sites/targetsite -HubSite https://tenant.sharepoint.com/sites/myhub

# Disassociate
Remove-PnPHubSiteAssociation -Site https://tenant.sharepoint.com/sites/targetsite
```

## What Happens After Association

- Hub navigation bar appears at the top of the associated site within minutes
- Hub theme (if set) propagates to the associated site
- The site's content is included in hub-scoped search
- News posted on the associated site can appear on the hub's news web part

## What Does NOT Happen

- Permissions are NOT shared — site permissions remain independent
- Existing navigation on the associated site is NOT removed; it sits below the hub navigation
- Content is NOT moved; it stays in the associated site

## Checking Which Sites Are Associated to a Hub

```powershell
Get-PnPHubSiteChild -Identity https://tenant.sharepoint.com/sites/myhub
```

## Limits

A hub can have up to **2,000 associated sites**.
A site can be associated to only **one** hub at a time.

## Related

- [[Hub Sites Overview]]
- [[Site Administration Overview]]
