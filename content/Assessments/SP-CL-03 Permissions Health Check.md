---
tags: [checklist, assessment, permissions, governance]
date: 2026-05-27
checklist-id: SP-CL-03
audience: Site Owner / SharePoint Admin
review-cycle: annual
status: active
aliases: [Permissions Checklist, Access Control Audit]
---

# SP-CL-03 — Permissions Health Check

**Purpose:** Permissions misconfiguration is the most common cause of unintended data exposure in SharePoint. This checklist provides a structured review of permission group structure, inheritance, external sharing controls, and access audit practices for a single site. It should be completed by the site owner or SharePoint administrator for any site handling sensitive or business-critical content.

**Audience:** Site owners and SharePoint administrators.
**Estimated time:** 20–25 minutes.
**Cadence:** Complete annually for all sites; immediately following any significant membership change or security incident.

---

## How to Use This Checklist

Mark each item with your honest assessment. Tally section scores in the Summary table. Any `[CRITICAL]` item marked No should be flagged for immediate remediation regardless of the overall score.

**Criticality key:** `[CRITICAL]` = 3 pts · `[STANDARD]` = 2 pts · `[BEST PRACTICE]` = 1 pt

---

## Section 1 — Permission Group Structure

- [ ] `[CRITICAL]` The site uses the **standard SharePoint group model** — Owners, Members, and Visitors — with appropriate membership in each group. *(3 pts)*
- [ ] `[STANDARD]` Permissions are granted via **Azure AD / M365 security groups or M365 groups**, not individual user accounts, wherever possible. *(2 pts)*
- [ ] `[STANDARD]` The **Owners group** contains at least two current employees who are aware of their responsibilities. *(2 pts)*
- [ ] `[STANDARD]` No user has **Full Control** assigned directly as an individual permission that bypasses the site's standard group structure. *(2 pts)*
- [ ] `[BEST PRACTICE]` A record exists documenting **why each AAD group or individual** has been granted access to this site. *(1 pt)*

**Section 1 Max: 10 pts**

> **Remediation:** [[Permissions Overview]] · [[Site Permissions]] · [[Permission Levels]]

---

## Section 2 — Inheritance and Unique Permissions

- [ ] `[CRITICAL]` Every instance of **broken inheritance** (unique permissions on a library, list, folder, or item) can be explained with a documented business reason. *(3 pts)*
- [ ] `[CRITICAL]` No folder or item has unique permissions that were set accidentally and have **never been reviewed**. *(3 pts)*
- [ ] `[STANDARD]` The **number of unique permission scopes** across this site has been assessed — deep or numerous breaks in inheritance are avoided where possible. *(2 pts)*
- [ ] `[STANDARD]` When inheritance was broken on any object, **only the necessary permission difference** was applied — the object was not granted broader access than the parent. *(2 pts)*
- [ ] `[BEST PRACTICE]` A **PowerShell or admin-center review** of all unique permission scopes on this site has been run in the last 12 months. *(1 pt)*
- [ ] `[BEST PRACTICE]` A **sensitivity label** is used as the primary access control on highly confidential content rather than relying on SharePoint item-level permissions. *(1 pt)*

**Section 2 Max: 12 pts**

> **Remediation:** [[Inheritance and Unique Permissions]] · [[Permissions Overview]] · [[Sensitivity Labels Overview]]

---

## Section 3 — External Sharing Controls

- [ ] `[CRITICAL]` The site's external sharing setting is set to the **most restrictive level** appropriate for the content classification of this site. *(3 pts)*
- [ ] `[CRITICAL]` No **"Anyone" (anonymous) links** have been created on this site unless the site is explicitly classified as public and approved for anonymous sharing. *(3 pts)*
- [ ] `[CRITICAL]` The site's external sharing setting does **not exceed the tenant-level ceiling** — i.e. the site has not been elevated above the organizational policy. *(3 pts)*
- [ ] `[STANDARD]` Any active **guest user accounts** on this site have been reviewed for continued necessity within the last 90 days. *(2 pts)*
- [ ] `[STANDARD]` **Sharing link expiry** is configured for externally shared content where expiry is supported and appropriate. *(2 pts)*
- [ ] `[BEST PRACTICE]` A log or note exists documenting which external users have access to this site and the business justification for that access. *(1 pt)*

**Section 3 Max: 14 pts**

> **Remediation:** [[External Sharing]] · [[Permissions Overview]] · [[Governance Overview]]

---

## Section 4 — Access Reviews and Auditing

- [ ] `[STANDARD]` A **formal access review** has been conducted on this site within the last 12 months, with stale accounts removed. *(2 pts)*
- [ ] `[STANDARD]` The site owner or admin knows how to use **SharePoint Admin Center** or PowerShell to view all members and their permission levels. *(2 pts)*
- [ ] `[STANDARD]` The process for **offboarding a user** who has access to this site is understood — accounts are removed promptly when staff depart. *(2 pts)*
- [ ] `[BEST PRACTICE]` Audit log search in the **Microsoft Purview compliance portal** has been used to review sharing activity on this site at least once. *(1 pt)*
- [ ] `[BEST PRACTICE]` Access request notifications are **routed to a monitored mailbox or Teams channel**, not to an unmonitored personal inbox. *(1 pt)*

**Section 4 Max: 8 pts**

> **Remediation:** [[Site Permissions]] · [[External Sharing]] · [[Governance Overview]]

---

## Section Score Summary

| Section | Max Points | Actual Points | Score % | Rating |
|---------|-----------|---------------|---------|--------|
| 1 — Permission Group Structure | 10 | | | |
| 2 — Inheritance and Unique Permissions | 12 | | | |
| 3 — External Sharing Controls | 14 | | | |
| 4 — Access Reviews and Auditing | 8 | | | |
| **Overall** | **44** | | | |

**Traffic Light:** 🟢 ≥90% · 🟡 75–89% · 🟠 55–74% · 🔴 35–54% · 🔴 <35%

> **Override rule:** Any `[CRITICAL]` item marked No should be escalated to the SharePoint administrator immediately. Sections 2 and 3 carry the highest risk; a failure there outweighs a good overall score.

*Full scoring methodology: [[Checklist Index]]*

---

## Remediation Summary

| Item Description | Response | Remediation Action | Priority | Target Date |
|-----------------|----------|--------------------|----------|-------------|
| | | | | |

---

## SharePoint Champion Signal

*Optional. If you have skills or interest in SharePoint permissions and governance, we would welcome your involvement.*

**I would be interested in:** *(mark all that apply)*

- [ ] Helping audit permissions on other sites across the organization
- [ ] Developing or reviewing permissions governance standards
- [ ] Training colleagues on safe sharing and access practices
- [ ] Being part of a SharePoint admin or stewards group
- [ ] None of the above

**Things I already do well in this area:** *(optional)*
>

**My name and team:** *(optional)*
> Name:
> Team / Department:
> Preferred contact: *(email / Teams / either)*

---

## Assessor Notes

**Site name:**
**Site URL:**
**Content classification:** *(Public / Internal / Confidential / Highly Confidential)*
**Assessment date:**
**Completed by:**
**Reviewed by (admin):**
**Critical items requiring immediate action:**
>
**Follow-up actions:**
>
