---
tags:
  - hub-sites
  - governance
  - search
  - site-admin
date: 2026-06-16
aliases:
  - Document Control Hub
---

# Doc Control – Hub Site Configuration

Hub site configuration for the Document Control engagement. The hub is registered at day one — even though Phase 1 only has one associated site — so that search rollup and navigation inheritance are additive as the structure grows. See [[Doc Control – Site Architecture Overview]] for the full topology.

---

## Hub Site Identity

| Setting | Value |
|---|---|
| Site name | Document Control Hub |
| URL | `/sites/doc-control-hub` |
| Site template | Communication Site |
| Hub status | Registered as hub site |
| Hub admin | Document Control Admin account |

Use a **Communication Site** (not a Team Site) for the hub. The hub home page is a governance landing page — not a collaboration workspace. Team Sites are for the associated functional sites.

---

## Associated Sites

| Site | Phase | Association |
|---|---|---|
| Plant Records | 1 | Associated at hub registration |
| Projects & Handover | 3 | Associated when Phase 3 is activated |

To associate a site: Site Settings → Hub site information → select `Document Control Hub`. Only Hub Admin or Site Owner can associate.

---

## Hub Navigation

Hub navigation is inherited by all associated sites (appears as the top bar). Configure in: Hub site → Edit → Navigation.

Recommended Phase 1 navigation:

| Label | Target |
|---|---|
| Home | `/sites/doc-control-hub` |
| Plant Records | `/sites/plant-records` |
| MOC | `/sites/plant-records/Lists/MOC Register` |
| Search | Hub-scoped search results page |

Add **Projects & Handover** link when Phase 3 site is created.

Navigation inheritance is on by default for associated sites. If an associated site needs site-specific nav items, they appear below the hub nav bar.

---

## Hub Search Rollup

Hub search is the primary way Ops and Maintenance discover plant records across all associated sites. This is a core Phase 1 requirement.

Configuration:
- Search scope is automatically set to the hub site collection when users search from any associated site
- No additional result source configuration is needed in Phase 1
- Managed properties for key columns (Document Status, Document Type, Area/Unit) should be mapped after libraries are populated — see [[Search]] for managed property setup

Recommended hub home page web parts for Phase 1:
- **Highlighted Content** web part scoped to hub, filtered to `Document Status = Reconciled / As-Built` — surfaces the highest-confidence records
- **Highlighted Content** web part scoped to hub, filtered to `Document Status = Controlled – Known Imperfect` — makes known-imperfect records visible, not hidden
- **News** web part for Document Control announcements (new document classes added, phase transitions, governance changes)

---

## Hub Theme and Branding

Apply a consistent theme across hub and all associated sites:
- Hub site: set theme via **Change the look** → select or configure palette
- Associated sites: inherit hub theme automatically (if hub theme inheritance is enabled in tenant settings)

This is a low-priority cosmetic item — configure after governance is functional.

---

## Tenant-Level Prerequisites

Before registering the hub:

- [ ] Global Admin or SharePoint Admin has created the hub site (Communication Site)
- [ ] SharePoint Admin registers it as a hub site: SharePoint Admin Center → Active sites → select site → Hub → Register as hub site
- [ ] Hub admin account is added as Site Owner of the hub site
- [ ] Associated sites are created and site owners are confirmed
- [ ] Hub navigation placeholder links added (can link to sites before they have content)

---

## Phase 3 Expansion

When Projects & Handover site is created:
1. Associate it with Document Control Hub
2. Add "Projects" link to hub navigation
3. Add a Highlighted Content web part to hub home scoped to the Projects site showing active handover packages
4. Confirm hub search rollup picks up the new site (test by searching a known document from the new site)
