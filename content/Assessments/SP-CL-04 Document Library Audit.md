---
tags: [checklist, assessment, document-libraries, governance]
date: 2026-05-27
checklist-id: SP-CL-04
audience: Site Owner / Power User
review-cycle: annual
status: active
aliases: [Document Library Checklist, Library Audit]
---

# SP-CL-04 — Document Library Audit

**Purpose:** Document libraries are where most SharePoint work happens, yet they are frequently left at default settings that undermine resilience, discoverability, and compliance. This checklist audits a single document library against best-practice configuration standards. Complete one instance per library for any library deemed business-critical or heavily used.

**Audience:** Site owners and power users responsible for document library management.
**Estimated time:** 20 minutes per library.
**Cadence:** Complete annually, or when a library is first created or significantly restructured.

---

## How to Use This Checklist

Mark each item against the library you are assessing. Tally section scores in the Summary table. If assessing multiple libraries, complete a separate copy for each.

**Criticality key:** `[CRITICAL]` = 3 pts · `[STANDARD]` = 2 pts · `[BEST PRACTICE]` = 1 pt

---

## Section 1 — Library Setup and Configuration

- [ ] `[STANDARD]` The library has a **clear, descriptive name** that follows the organization's naming convention (no "Documents", "Shared Documents", or numbered suffixes). *(2 pts)*
- [ ] `[STANDARD]` The library has a **description** that explains its purpose and intended content. *(2 pts)*
- [ ] `[STANDARD]` The library is located in the **correct site** for its content — it is not a workaround placed in an unrelated site for convenience. *(2 pts)*
- [ ] `[STANDARD]` Items in the library number **fewer than 5,000** in any single view, or indexed columns and filtered views are in place to manage the view threshold. *(2 pts)*
- [ ] `[BEST PRACTICE]` The library has been reviewed to confirm it is **not a duplicate** of another library holding the same content type on the same or related site. *(1 pt)*

**Section 1 Max: 9 pts**

> **Remediation:** [[Document Libraries Overview]] · [[Library Configuration]] · [[Governance Overview]]

---

## Section 2 — Versioning and Recovery

- [ ] `[CRITICAL]` **Major version history is enabled** on this library. *(3 pts)*
- [ ] `[STANDARD]` The major version limit is set to a reasonable value — **500 major versions** is recommended unless storage constraints apply. *(2 pts)*
- [ ] `[STANDARD]` If **minor versions (drafts)** are enabled, they are limited to 10 minor versions per major version to control storage. *(2 pts)*
- [ ] `[STANDARD]` **Content approval** is configured if this library holds published or formally approved documents (policies, procedures, contracts). *(2 pts)*
- [ ] `[BEST PRACTICE]` At least one member of the team knows how to **restore a previous version** of a document in this library. *(1 pt)*

**Section 2 Max: 10 pts**

> **Remediation:** [[Versioning]] · [[Document Libraries Overview]]

---

## Section 3 — Metadata and Discoverability

- [ ] `[STANDARD]` The library uses **metadata columns** (site columns or list columns) to classify content rather than relying on folder hierarchies alone. *(2 pts)*
- [ ] `[STANDARD]` Column names are **meaningful and consistent** with those used on related libraries across the site or hub. *(2 pts)*
- [ ] `[STANDARD]` **Columns used in filtering or sorting** are indexed, especially in libraries approaching or exceeding 5,000 items. *(2 pts)*
- [ ] `[BEST PRACTICE]` A **default view** is configured that shows the most relevant columns for this library's primary users. *(1 pt)*
- [ ] `[BEST PRACTICE]` **Managed metadata columns** from the Term Store are used for classification fields that should be consistent across the tenant (e.g. Department, Project, Document Type). *(1 pt)*

**Section 3 Max: 8 pts**

> **Remediation:** [[Columns and Metadata]] · [[Library Configuration]] · [[Term Store]] · [[Search Overview]]

---

## Section 4 — Content Types and Governance

- [ ] `[STANDARD]` If the library holds more than one document type with different metadata requirements, **content types** are in use rather than a single flat column set. *(2 pts)*
- [ ] `[STANDARD]` Content types applied to this library originate from the **Content Type Hub** (tenant-level) or the site content type gallery — not created as one-off local types. *(2 pts)*
- [ ] `[STANDARD]` A **sensitivity label** or IRM policy appropriate to the content's classification has been applied or considered for this library. *(2 pts)*
- [ ] `[BEST PRACTICE]` A **document template** is attached to the primary content type so new documents are created with the correct format and metadata fields pre-populated. *(1 pt)*
- [ ] `[BEST PRACTICE]` The library's **default sensitivity label** is set so that new documents inherit the appropriate label without manual intervention. *(1 pt)*

**Section 4 Max: 8 pts**

> **Remediation:** [[Content Types]] · [[Templates Overview]] · [[Sensitivity Labels Overview]] · [[Applying Labels]] · [[IRM and Document Protection]]

---

## Section Score Summary

| Section | Max Points | Actual Points | Score % | Rating |
|---------|-----------|---------------|---------|--------|
| 1 — Library Setup and Configuration | 9 | | | |
| 2 — Versioning and Recovery | 10 | | | |
| 3 — Metadata and Discoverability | 8 | | | |
| 4 — Content Types and Governance | 8 | | | |
| **Overall** | **35** | | | |

**Traffic Light:** 🟢 ≥90% · 🟡 75–89% · 🟠 55–74% · 🔴 35–54% · 🔴 <35%

> **Override rule:** If versioning is not enabled (Section 2, item 1), flag this immediately. Unversioned libraries cannot recover from accidental deletions or overwrites.

*Full scoring methodology: [[Checklist Index]]*

---

## Remediation Summary

| Item Description | Response | Remediation Action | Target Date |
|-----------------|----------|--------------------|-------------|
| | | | |

---

## SharePoint Champion Signal

*Optional. If document library design and governance is an area you enjoy or excel in, let us know.*

**I would be interested in:** *(mark all that apply)*

- [ ] Helping design or review document library structures for other teams
- [ ] Developing library templates or content types for reuse across the organization
- [ ] Training colleagues on metadata and library best practices
- [ ] Being involved in a content architecture working group
- [ ] None of the above

**Things I already do well in this area:** *(optional)*
>

**My name and team:** *(optional)*
> Name:
> Team / Department:
> Preferred contact: *(email / Teams / either)*

---

## Assessor Notes

**Library name:**
**Site URL:**
**Item count (approx.):**
**Assessment date:**
**Completed by:**
**Reviewed by (admin):**
**Follow-up actions:**
>
