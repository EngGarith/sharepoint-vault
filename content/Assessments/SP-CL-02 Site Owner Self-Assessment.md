---
tags: [checklist, assessment, governance, permissions, document-libraries, site-admin]
date: 2026-05-27
checklist-id: SP-CL-02
audience: Site Owner / Site Steward
review-cycle: annual
status: active
aliases: [Site Owner Checklist, Site Health Check]
---

# SP-CL-02 — Site Owner Self-Assessment

**Purpose:** This checklist helps site owners evaluate whether their SharePoint site is configured, maintained, and governed to a good standard. It covers ownership, permissions, content structure, sensitivity labeling, and lifecycle hygiene. Completing it honestly gives you and the SharePoint admin team a clear picture of where your site stands and what needs attention.

**Audience:** Site owners and designated site stewards.
**Estimated time:** 15–20 minutes.
**Cadence:** Complete annually, or after any major change to site membership or purpose.

---

## How to Use This Checklist

Mark each item with your honest assessment by replacing `[ ]` with `[x]` for the response that applies, or circle the response on a printed copy.

- **Yes** — fully in place
- **Partial** — in place for some libraries, lists, or users but not all
- **No** — not in place
- **N/A** — not applicable to this site

Tally your section scores in the Summary table at the bottom. Use the traffic light guide from [[Checklist Index]] to interpret your overall score. Share results with your SharePoint administrator.

**Criticality key:** `[CRITICAL]` = 3 pts · `[STANDARD]` = 2 pts · `[BEST PRACTICE]` = 1 pt

---

## Section 1 — Ownership & Membership

- [ ] `[CRITICAL]` This site has at least **two named owners** who are currently active employees. *(3 pts)*
- [ ] `[CRITICAL]` My secondary owner can act on the site without me if I am unavailable. *(3 pts)*
- [ ] `[STANDARD]` Site membership (Owners, Members, Visitors groups) reflects only current staff with a legitimate business need. *(2 pts)*
- [ ] `[STANDARD]` Permissions are assigned to **Azure AD / Microsoft 365 groups** rather than individual users where possible. *(2 pts)*
- [ ] `[STANDARD]` I have reviewed site membership within the **last 90 days**. *(2 pts)*
- [ ] `[BEST PRACTICE]` Departed staff have been removed from site membership promptly when they left the organization. *(1 pt)*

**Section 1 Max: 13 pts**

> **Remediation:** [[Site Permissions]] · [[Permissions Overview]] · [[Inheritance and Unique Permissions]]

---

## Section 2 — Permissions & External Sharing

- [ ] `[CRITICAL]` External sharing for this site is set to the **most restrictive level** appropriate for its content classification. *(3 pts)*
- [ ] `[CRITICAL]` No content has been shared via **"Anyone" (anonymous) links** unless the site is explicitly designated as public. *(3 pts)*
- [ ] `[STANDARD]` No libraries or lists have **unique (broken inheritance) permissions** that I cannot explain the reason for. *(2 pts)*
- [ ] `[STANDARD]` I understand the difference between **Owners, Members, and Visitors** and have applied them correctly on this site. *(2 pts)*
- [ ] `[BEST PRACTICE]` Access requests are routed to me for approval rather than being auto-approved. *(1 pt)*
- [ ] `[BEST PRACTICE]` I have run a **Check Permissions** review on at least one sensitive library in the last 6 months. *(1 pt)*

**Section 2 Max: 12 pts**

> **Remediation:** [[External Sharing]] · [[Inheritance and Unique Permissions]] · [[Permission Levels]] · [[Permissions Overview]]

---

## Section 3 — Content Structure & Metadata

- [ ] `[STANDARD]` Document libraries on this site have **versioning enabled** with a major version limit set (recommended: 500 major versions). *(2 pts)*
- [ ] `[STANDARD]` Files are stored in **named document libraries**, not in the root Site Assets library or site root. *(2 pts)*
- [ ] `[STANDARD]` Libraries use **metadata columns** rather than deep folder hierarchies to organize content. *(2 pts)*
- [ ] `[STANDARD]` Column names and library names follow the organization's **naming conventions**. *(2 pts)*
- [ ] `[BEST PRACTICE]` At least one useful **custom view** exists in major libraries to help users find content quickly. *(1 pt)*
- [ ] `[BEST PRACTICE]` Content types are used where documents have a consistent schema (e.g. contracts, policies, invoices). *(1 pt)*

**Section 3 Max: 10 pts**

> **Remediation:** [[Document Libraries Overview]] · [[Versioning]] · [[Columns and Metadata]] · [[Library Configuration]] · [[Content Types]]

---

## Section 4 — Sensitivity & Classification

- [ ] `[CRITICAL]` I know the **sensitivity classification** of the content held on this site (e.g. Public / Internal / Confidential / Highly Confidential). *(3 pts)*
- [ ] `[STANDARD]` A **sensitivity label** appropriate to the site's classification has been applied at the site level. *(2 pts)*
- [ ] `[STANDARD]` Users storing documents on this site know which **document-level sensitivity label** to apply to their files. *(2 pts)*
- [ ] `[BEST PRACTICE]` Libraries containing Confidential or Highly Confidential documents have a **default sensitivity label** configured so new files are labeled automatically. *(1 pt)*

**Section 4 Max: 8 pts**

> **Remediation:** [[Sensitivity Labels Overview]] · [[Applying Labels]] · [[Label Policies]] · [[Governance Overview]]

---

## Section 5 — Site Lifecycle & Hygiene

- [ ] `[STANDARD]` The site's **purpose is documented** in its description or a pinned page, so someone unfamiliar with it could understand its function without asking. *(2 pts)*
- [ ] `[STANDARD]` The site is **actively used** — content has been added or modified in the last 90 days, or I can explain why it is dormant. *(2 pts)*
- [ ] `[STANDARD]` If this site is **associated with a hub**, that association is correct and intentional. *(2 pts)*
- [ ] `[BEST PRACTICE]` Outdated or superseded content has been **archived or deleted** rather than left to accumulate. *(1 pt)*
- [ ] `[BEST PRACTICE]` I know the process for **requesting site deletion or archival** when this site is no longer needed. *(1 pt)*

**Section 5 Max: 8 pts**

> **Remediation:** [[Site Administration Overview]] · [[Governance Overview]] · [[Hub Sites Overview]] · [[Hub Site Association]]

---

## Section Score Summary

| Section | Max Points | Actual Points | Score % | Rating |
|---------|-----------|---------------|---------|--------|
| 1 — Ownership & Membership | 13 | | | |
| 2 — Permissions & External Sharing | 12 | | | |
| 3 — Content Structure & Metadata | 10 | | | |
| 4 — Sensitivity & Classification | 8 | | | |
| 5 — Site Lifecycle & Hygiene | 8 | | | |
| **Overall** | **51** | | | |

**Traffic Light:** 🟢 ≥90% · 🟡 75–89% · 🟠 55–74% · 🔴 35–54% · 🔴 <35%

> **Override rule:** If any `[CRITICAL]` item is marked No, notify your SharePoint administrator immediately regardless of your overall score.

*Full scoring methodology: [[Checklist Index]]*

---

## Remediation Summary

List any items marked No or Partial and note the intended action:

| Item Description | Response | Remediation Action | Target Date |
|-----------------|----------|--------------------|-------------|
| | | | |

---

## SharePoint Champion Signal

*This section is entirely optional. If SharePoint is a tool you use regularly and enjoy working with, we would love to know.*

**I would be interested in:** *(mark all that apply)*

- [ ] Learning more advanced SharePoint features
- [ ] Helping colleagues use SharePoint more effectively
- [ ] Being involved in testing new SharePoint features or settings before they go live
- [ ] Joining a SharePoint user group or champions network
- [ ] Reviewing or contributing to SharePoint governance standards
- [ ] None of the above

**Things I already do well in SharePoint:** *(optional)*
>

**My name and team:** *(optional — only complete if you are comfortable being contacted)*
> Name:
> Team / Department:
> Preferred contact: *(email / Teams / either)*

*Champion signal responses are used only to connect you with opportunities — never to assess your performance.*

---

## Assessor Notes

**Site name:**
**Site URL:**
**Site type:** *(Team Site / Communication Site / Hub Site)*
**Assessment date:**
**Completed by:**
**Reviewed by (admin):**
**Follow-up actions:**
>
