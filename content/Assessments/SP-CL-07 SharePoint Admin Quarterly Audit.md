---
tags: [checklist, assessment, governance, site-admin, hub-sites, search, permissions]
date: 2026-05-27
checklist-id: SP-CL-07
audience: SharePoint Admin
review-cycle: quarterly
status: active
aliases: [Admin Quarterly Audit, Tenant Health Check]
---

# SP-CL-07 — SharePoint Admin Quarterly Audit

**Purpose:** This checklist is the SharePoint administrator's own health check. It covers tenant-level settings, site inventory and lifecycle, hub architecture, search and Term Store health, and storage. It is designed to be run quarterly and takes a tenant-wide rather than site-specific view. Results over time build a picture of the environment's overall governance maturity.

**Audience:** SharePoint tenant administrators and site collection administrators.
**Estimated time:** 30–40 minutes.
**Cadence:** Quarterly. Record results in the Aggregate Score Tracker in [[Checklist Index]].

---

## How to Use This Checklist

Work through each section using the SharePoint Admin Center, Microsoft 365 Admin Center, and PowerShell as needed. Mark each item and tally scores. The Assessor Notes section has space for tenant-wide observations that do not fit neatly into individual items.

**Criticality key:** `[CRITICAL]` = 3 pts · `[STANDARD]` = 2 pts · `[BEST PRACTICE]` = 1 pt

---

## Section 1 — Tenant and Admin Center Health

- [ ] `[CRITICAL]` **Tenant-level external sharing** is set to the agreed organizational policy ceiling — it has not been elevated above the approved setting since the last audit. *(3 pts)*
- [ ] `[CRITICAL]` **Audit log** is confirmed enabled for SharePoint activity in the Microsoft Purview compliance portal. *(3 pts)*
- [ ] `[STANDARD]` The **SharePoint Admin Center message center** has been reviewed this quarter — no pending feature rollouts or policy changes have been missed. *(2 pts)*
- [ ] `[STANDARD]` The list of **SharePoint tenant administrators** has been reviewed and reflects only current, appropriate staff. *(2 pts)*
- [ ] `[BEST PRACTICE]` A **SharePoint health advisor** or Microsoft 365 health check report has been reviewed this quarter for any tenant-level alerts. *(1 pt)*

**Section 1 Max: 11 pts**

> **Remediation:** [[Governance Overview]] · [[External Sharing]] · [[Site Administration Overview]]

---

## Section 2 — Site Inventory and Lifecycle

- [ ] `[CRITICAL]` No **active sites exist without a current, assigned primary owner** — every site has at least one named owner who is still employed by the organization. *(3 pts)*
- [ ] `[STANDARD]` Sites inactive for more than **180 days** have been reviewed — each has a documented business justification for retention or has been flagged for archival/deletion. *(2 pts)*
- [ ] `[STANDARD]` The **site creation policy** (self-service vs. request-only) is enforced as per the governance standard and has not been inadvertently changed. *(2 pts)*
- [ ] `[STANDARD]` A **site lifecycle process** exists and is being followed — new sites are provisioned with a template, naming convention, and designated owner. *(2 pts)*
- [ ] `[BEST PRACTICE]` Sites are reviewed and their continued necessity confirmed as part of a **structured quarterly or annual cycle**, not only reactively. *(1 pt)*
- [ ] `[BEST PRACTICE]` A **site inventory spreadsheet or register** is maintained and has been updated this quarter. *(1 pt)*

**Section 2 Max: 11 pts**

> **Remediation:** [[Site Administration Overview]] · [[Governance Overview]] · [[Hub Sites Overview]]

---

## Section 3 — Hub Architecture

- [ ] `[STANDARD]` The **hub site hierarchy** reflects the organization's current structure — hubs have not been left associated to sites that have since changed function or been deleted. *(2 pts)*
- [ ] `[STANDARD]` All sites that should be associated with a hub **are associated**, and no sites are incorrectly associated with the wrong hub. *(2 pts)*
- [ ] `[STANDARD]` Hub site navigation is **current and accurate** — links in the hub navigation bar reflect active sites and have been reviewed in the last quarter. *(2 pts)*
- [ ] `[BEST PRACTICE]` The **tenant hub site limit** (currently 2,000 hub sites per tenant) is well within bounds and hub creation is governed to avoid proliferation. *(1 pt)*

**Section 3 Max: 7 pts**

> **Remediation:** [[Hub Sites Overview]] · [[Hub Site Association]] · [[Governance Overview]]

---

## Section 4 — Search and Term Store

- [ ] `[STANDARD]` The **Term Store** has been reviewed this quarter — obsolete or duplicate terms have been deprecated rather than left as active entries. *(2 pts)*
- [ ] `[STANDARD]` Any **custom managed properties** required for search refiners or query rules are mapped and verified as returning results in search. *(2 pts)*
- [ ] `[STANDARD]` **Search result sources and query rules** have been reviewed for accuracy — promoted results and Best Bets still point to valid, current content. *(2 pts)*
- [ ] `[BEST PRACTICE]` **Search usage analytics** have been reviewed to identify common zero-result queries or frequently searched terms that could be addressed with Best Bets or content improvements. *(1 pt)*

**Section 4 Max: 7 pts**

> **Remediation:** [[Term Store]] · [[Managed Properties and Crawled Properties]] · [[Result Sources and Query Rules]] · [[Search Overview]]

---

## Section 5 — Storage and Performance

- [ ] `[STANDARD]` No site collection has exceeded **80% of its storage quota** without a documented plan to archive, clean up, or increase the quota. *(2 pts)*
- [ ] `[STANDARD]` Any document library with more than **100,000 items** has been reviewed to confirm that indexed columns and filtered views are in place. *(2 pts)*
- [ ] `[STANDARD]` **Version history storage** has been assessed across high-volume libraries — libraries with thousands of frequently edited files have version limits set to prevent storage sprawl. *(2 pts)*
- [ ] `[BEST PRACTICE]` A **storage consumption report** has been run this quarter from the SharePoint Admin Center to identify the largest site collections. *(1 pt)*
- [ ] `[BEST PRACTICE]` Any Power Automate flows that perform **bulk operations** on SharePoint have been reviewed to confirm they are not triggering throttling or degrading search indexing performance. *(1 pt)*

**Section 5 Max: 8 pts**

> **Remediation:** [[Document Libraries Overview]] · [[Versioning]] · [[Site Administration Overview]] · [[Flow Governance and Best Practices]]

---

## Section Score Summary

| Section | Max Points | Actual Points | Score % | Rating |
|---------|-----------|---------------|---------|--------|
| 1 — Tenant and Admin Center Health | 11 | | | |
| 2 — Site Inventory and Lifecycle | 11 | | | |
| 3 — Hub Architecture | 7 | | | |
| 4 — Search and Term Store | 7 | | | |
| 5 — Storage and Performance | 8 | | | |
| **Overall** | **44** | | | |

**Traffic Light:** 🟢 ≥90% · 🟡 75–89% · 🟠 55–74% · 🔴 35–54% · 🔴 <35%

> **Override rule:** Sections 1 and 2 carry the highest systemic risk. A site with no owner is an orphaned liability. An elevated tenant sharing setting is an open door. Both demand immediate action regardless of overall score.

*Full scoring methodology: [[Checklist Index]]*

---

## Remediation Summary

| Item Description | Response | Remediation Action | Priority | Target Date |
|-----------------|----------|--------------------|----------|-------------|
| | | | | |

---

## Assessor Notes

**Audit date:**
**Completed by:**
**Tenant name / domain:**
**Approximate site count:**
**Approximate active user count:**
**Key findings this quarter:**
>
**Actions carried forward from last audit:**
>
**Changes made since last audit that affected this score:**
>
