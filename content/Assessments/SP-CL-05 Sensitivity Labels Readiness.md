---
tags: [checklist, assessment, sensitivity-labels, governance]
date: 2026-05-27
checklist-id: SP-CL-05
audience: Site Owner / Compliance / Security
review-cycle: annual
status: active
aliases: [Sensitivity Labels Checklist, Labels Readiness Assessment]
---

# SP-CL-05 — Sensitivity Labels Readiness

**Purpose:** Sensitivity labels are the compliance and access-control layer that connects SharePoint to Microsoft Purview's broader data protection framework. This checklist assesses whether a site and its content are correctly classified, labeled, and governed in line with the organization's label taxonomy and policy requirements. It is most valuable for sites handling Confidential or Highly Confidential content.

**Audience:** Site owners, compliance staff, and security administrators.
**Estimated time:** 20 minutes.
**Cadence:** Complete annually, or when a new site is provisioned, a label policy changes, or a site's data classification changes.

---

## How to Use This Checklist

Mark each item against the site being assessed. For questions about specific label definitions or policies, refer to [[Sensitivity Labels Overview]] and [[Label Policies]].

**Criticality key:** `[CRITICAL]` = 3 pts · `[STANDARD]` = 2 pts · `[BEST PRACTICE]` = 1 pt

---

## Section 1 — Label Taxonomy Understanding

- [ ] `[CRITICAL]` I can correctly identify the **sensitivity classification** of the content held on this site from the organization's label taxonomy (e.g. Public / Internal / Confidential / Highly Confidential). *(3 pts)*
- [ ] `[STANDARD]` I understand what **each sensitivity label means** in terms of access restrictions, sharing controls, and encryption that it enforces. *(2 pts)*
- [ ] `[STANDARD]` I know which label **requires justification** when a user tries to lower the sensitivity classification of a document. *(2 pts)*
- [ ] `[BEST PRACTICE]` I know where to find the organization's published **label guidance** so I can answer questions from my team. *(1 pt)*

**Section 1 Max: 8 pts**

> **Remediation:** [[Sensitivity Labels Overview]] · [[Label Policies]] · [[Governance Overview]]

---

## Section 2 — Site-Level Label Application

- [ ] `[CRITICAL]` A **site-level sensitivity label** appropriate to this site's content classification has been applied in SharePoint Admin Center or via PowerShell. *(3 pts)*
- [ ] `[CRITICAL]` The site's sensitivity label **restricts external sharing** in line with the label's policy — for example, a Confidential label prevents "Anyone" link sharing. *(3 pts)*
- [ ] `[STANDARD]` The site-level label's **privacy setting** (Public / Private) is correctly configured for this site type. *(2 pts)*
- [ ] `[STANDARD]` The label applied at the site level has **not been manually overridden** to a lower classification than the content stored in the site warrants. *(2 pts)*
- [ ] `[BEST PRACTICE]` The site-level label was applied at **site creation** rather than added retroactively after content was already stored. *(1 pt)*

**Section 2 Max: 11 pts**

> **Remediation:** [[Applying Labels]] · [[Label Policies]] · [[Sensitivity Labels Overview]] · [[External Sharing]]

---

## Section 3 — Document-Level Label Application

- [ ] `[CRITICAL]` No **Highly Confidential documents** are stored without a document-level sensitivity label that enforces encryption, preventing access by unauthorized parties even if the file is exfiltrated. *(3 pts)*
- [ ] `[STANDARD]` Users on this site know which **document-level sensitivity label** to apply to the different types of content they create. *(2 pts)*
- [ ] `[STANDARD]` A **default library-level sensitivity label** is configured on libraries holding Confidential or Highly Confidential content, so new documents are labeled automatically on upload or creation. *(2 pts)*
- [ ] `[BEST PRACTICE]` Users understand that a document's label **does not automatically change** when a file is moved between sites with different site-level labels — they must update the document label manually or rely on auto-labeling policy. *(1 pt)*
- [ ] `[BEST PRACTICE]` A spot-check of recent uploads has been performed to confirm that documents are **consistently labeled** at the correct level. *(1 pt)*

**Section 3 Max: 9 pts**

> **Remediation:** [[Applying Labels]] · [[Auto-Labeling]] · [[Sensitivity Labels Overview]]

---

## Section 4 — Policy and Auto-Labeling

- [ ] `[STANDARD]` An **auto-labeling policy** has been configured or evaluated for this site to catch unlabeled documents containing sensitive information types (e.g. credit card numbers, national IDs, health data). *(2 pts)*
- [ ] `[STANDARD]` Any auto-labeling policy affecting this site has been **run in Simulation mode** before being activated, to validate expected behavior. *(2 pts)*
- [ ] `[BEST PRACTICE]` The auto-labeling policy scope is **correctly targeted** — it covers the content locations that need it without being overly broad. *(1 pt)*
- [ ] `[BEST PRACTICE]` Users on this site have been informed that **auto-labeling is active** and understand what it does and does not do (it labels, it does not encrypt by itself unless the label policy requires it). *(1 pt)*

**Section 4 Max: 6 pts**

> **Remediation:** [[Auto-Labeling]] · [[Label Policies]] · [[Sensitivity Labels Overview]]

---

## Section Score Summary

| Section | Max Points | Actual Points | Score % | Rating |
|---------|-----------|---------------|---------|--------|
| 1 — Label Taxonomy Understanding | 8 | | | |
| 2 — Site-Level Label Application | 11 | | | |
| 3 — Document-Level Label Application | 9 | | | |
| 4 — Policy and Auto-Labeling | 6 | | | |
| **Overall** | **34** | | | |

**Traffic Light:** 🟢 ≥90% · 🟡 75–89% · 🟠 55–74% · 🔴 35–54% · 🔴 <35%

> **Override rule:** If either CRITICAL item in Sections 2 or 3 is marked No — no site-level label applied, or Highly Confidential documents are unencrypted — escalate to the compliance or security team immediately.

*Full scoring methodology: [[Checklist Index]]*

---

## Remediation Summary

| Item Description | Response | Remediation Action | Priority | Target Date |
|-----------------|----------|--------------------|----------|-------------|
| | | | | |

---

## SharePoint Champion Signal

*Optional. If sensitivity labels, data classification, or information protection is an area of interest, let us know.*

**I would be interested in:** *(mark all that apply)*

- [ ] Learning more about Microsoft Purview and sensitivity label administration
- [ ] Helping other teams understand and apply labels correctly
- [ ] Participating in label taxonomy or policy design reviews
- [ ] Being a compliance champion for my team or department
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
**Current site-level label:**
**Content classification:**
**Assessment date:**
**Completed by:**
**Reviewed by (compliance / admin):**
**Follow-up actions:**
>
