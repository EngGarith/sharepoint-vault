---
tags: [checklist, assessment, governance, sensitivity-labels, permissions]
date: 2026-05-27
checklist-id: SP-CL-08
audience: Compliance / Security / SharePoint Admin
review-cycle: annual
status: active
aliases: [Compliance Checklist, Data Lifecycle Assessment]
---

# SP-CL-08 — Compliance and Data Lifecycle

**Purpose:** This checklist addresses the regulatory and compliance dimensions of SharePoint governance: retention policy coverage, audit readiness, sensitivity classification, data loss prevention, and eDiscovery preparedness. It is designed for compliance officers, information security staff, and administrators who need to verify that SharePoint's settings align with the organization's legal, regulatory, and data protection obligations.

**Audience:** Compliance staff, information security administrators, and SharePoint administrators with compliance responsibilities.
**Estimated time:** 25 minutes.
**Cadence:** Annually, or following a regulatory change, a compliance audit, or a data incident involving SharePoint content.

---

## How to Use This Checklist

This checklist takes a tenant-wide perspective. Where items relate to specific sites or libraries, note those in the Assessor Notes. Cross-reference with SP-CL-05 (Sensitivity Labels Readiness) for document-level label depth.

**Criticality key:** `[CRITICAL]` = 3 pts · `[STANDARD]` = 2 pts · `[BEST PRACTICE]` = 1 pt

---

## Section 1 — Retention Policy Coverage

- [ ] `[CRITICAL]` **Retention policies** configured in Microsoft Purview cover all SharePoint site locations that hold content subject to regulatory or organizational retention requirements. *(3 pts)*
- [ ] `[CRITICAL]` No retention policy has been **accidentally scoped too broadly** (e.g. applying a legal hold to all sites when only specific document types require it), which could prevent routine deletion and cause storage issues. *(3 pts)*
- [ ] `[STANDARD]` Retention policies are documented — for each policy, there is a record of what it covers, the retention period, and the regulatory or business justification. *(2 pts)*
- [ ] `[STANDARD]` Retention **disposition review** is configured for content reaching the end of its retention period — items are not silently auto-deleted without an opportunity to review. *(2 pts)*
- [ ] `[BEST PRACTICE]` Retention labels (item-level) are used for content with **varying retention needs within the same library**, rather than relying solely on site-level retention policies. *(1 pt)*

**Section 1 Max: 11 pts**

> **Remediation:** [[Governance Overview]] · [[Sensitivity Labels Overview]] · [[Document Libraries Overview]]

---

## Section 2 — Sensitivity Classification and Data Protection

- [ ] `[CRITICAL]` Every SharePoint site that holds **Personally Identifiable Information (PII)** or other regulated data (financial records, health data, legal documents) has a site-level sensitivity label applied. *(3 pts)*
- [ ] `[CRITICAL]` No **Highly Confidential content** is accessible from a SharePoint site that permits external sharing or "Anyone" link access. *(3 pts)*
- [ ] `[STANDARD]` The organization's sensitivity label taxonomy is **formally approved and published** — all staff can access the current label definitions and know which label to apply to which content. *(2 pts)*
- [ ] `[STANDARD]` **Mandatory labeling** is enforced via label policy for all users who create or upload documents to sites handling Confidential content or above. *(2 pts)*
- [ ] `[BEST PRACTICE]` A **label usage report** from Microsoft Purview has been reviewed in the last quarter to confirm labels are being applied at the expected rates. *(1 pt)*

**Section 2 Max: 11 pts**

> **Remediation:** [[Sensitivity Labels Overview]] · [[Label Policies]] · [[Applying Labels]] · [[Auto-Labeling]] · [[External Sharing]]

---

## Section 3 — Audit and eDiscovery Readiness

- [ ] `[CRITICAL]` **Unified audit logging** is enabled tenant-wide in the Microsoft Purview compliance portal, capturing SharePoint file access, sharing, and permission change events. *(3 pts)*
- [ ] `[STANDARD]` Audit logs are being **retained for the period required** by the organization's policy or applicable regulation (Microsoft 365 E3 retains for 90 days; E5 for one year; extended retention requires an add-on). *(2 pts)*
- [ ] `[STANDARD]` At least one administrator has performed an **audit log search** in the last 12 months and confirmed they can retrieve SharePoint activity records as expected. *(2 pts)*
- [ ] `[BEST PRACTICE]` The organization has a defined and tested process for responding to an **eDiscovery request** that includes SharePoint content — roles, tools (Purview Content Search / eDiscovery cases), and timelines are documented. *(1 pt)*
- [ ] `[BEST PRACTICE]` **Legal hold** capability has been tested — at least one test hold has been placed and confirmed to preserve content in place without affecting end users. *(1 pt)*

**Section 3 Max: 9 pts**

> **Remediation:** [[Governance Overview]] · [[Sensitivity Labels Overview]] · [[External Sharing]]

---

## Section 4 — External Sharing and Data Loss Prevention

- [ ] `[CRITICAL]` **Data Loss Prevention (DLP) policies** in Microsoft Purview cover SharePoint locations and are active (not in simulation mode) for any content types that carry regulatory risk (e.g. credit card numbers, national ID numbers, health data). *(3 pts)*
- [ ] `[CRITICAL]` DLP policy matches are **monitored** — alerts are routed to a compliance mailbox or a Teams channel that is actively reviewed, not silently logged. *(3 pts)*
- [ ] `[STANDARD]` The **tenant-level external sharing setting** is reviewed quarterly to confirm it has not been elevated above the approved policy ceiling. *(2 pts)*
- [ ] `[STANDARD]` **Conditional Access policies** or device compliance requirements are enforced for access to SharePoint sites holding Highly Confidential content, where technically supported. *(2 pts)*
- [ ] `[BEST PRACTICE]` A record of **DLP policy exceptions or overrides** granted in the last 12 months has been reviewed and each exception has a documented business justification. *(1 pt)*

**Section 4 Max: 11 pts**

> **Remediation:** [[External Sharing]] · [[Sensitivity Labels Overview]] · [[Governance Overview]] · [[Flow Governance and Best Practices]]

---

## Section Score Summary

| Section | Max Points | Actual Points | Score % | Rating |
|---------|-----------|---------------|---------|--------|
| 1 — Retention Policy Coverage | 11 | | | |
| 2 — Sensitivity Classification and Data Protection | 11 | | | |
| 3 — Audit and eDiscovery Readiness | 9 | | | |
| 4 — External Sharing and Data Loss Prevention | 11 | | | |
| **Overall** | **42** | | | |

**Traffic Light:** 🟢 ≥90% · 🟡 75–89% · 🟠 55–74% · 🔴 35–54% · 🔴 <35%

> **Override rule:** Any CRITICAL item marked No in Sections 3 or 4 — particularly audit logging disabled or DLP policies in simulation only — represents a significant compliance gap that should be escalated to the Chief Information Security Officer or equivalent before the next external audit.

*Full scoring methodology: [[Checklist Index]]*

---

## Remediation Summary

| Item Description | Response | Remediation Action | Regulatory Reference | Target Date |
|-----------------|----------|--------------------|----------------------|-------------|
| | | | | |

---

## Assessor Notes

**Audit date:**
**Completed by (name, role):**
**Applicable regulations or frameworks:** *(e.g. GDPR, ISO 27001, SOC 2, HIPAA)*
**Recent compliance events:** *(incidents, audits, regulatory changes since last assessment)*
**Key findings:**
>
**Escalations required:**
>
**Follow-up actions:**
>
