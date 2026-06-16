---
tags: [checklist, assessment, power-automate, governance]
date: 2026-05-27
checklist-id: SP-CL-06
audience: Power User / SharePoint Admin
review-cycle: annual
status: active
aliases: [Power Automate Checklist, Flow Governance Audit]
---

# SP-CL-06 — Power Automate Governance

**Purpose:** Power Automate flows that connect to SharePoint are one of the most common vectors for ungoverned automation risk — personal credentials accessing confidential data, flows running without error handling, and no succession plan when a flow owner leaves the organization. This checklist assesses the governance posture of flows built on or connected to SharePoint.

**Audience:** Power users who build flows, and SharePoint or Power Platform administrators who oversee them.
**Estimated time:** 20 minutes.
**Cadence:** Complete annually, or when auditing flows connected to a newly reviewed SharePoint site. Ideally run alongside SP-CL-02 or SP-CL-03.

---

## How to Use This Checklist

This checklist may cover a single flow or a set of flows associated with one SharePoint site. Note the flow name(s) in the Assessor Notes section. For each item, mark the response that best represents the state of the flow(s) being assessed.

**Criticality key:** `[CRITICAL]` = 3 pts · `[STANDARD]` = 2 pts · `[BEST PRACTICE]` = 1 pt

---

## Section 1 — Ownership and Naming

- [ ] `[CRITICAL]` All flows use a **service account or shared mailbox** as the flow connection owner — not a personal employee account that will become invalid when that person leaves. *(3 pts)*
- [ ] `[CRITICAL]` Every flow has at least one **co-owner** assigned, so it can be maintained if the primary owner is unavailable or leaves the organization. *(3 pts)*
- [ ] `[STANDARD]` Flows follow the organization's naming convention: `[Site] - [Trigger Event] - [Action]` (e.g. `Finance - Item Created - Send Approval`). *(2 pts)*
- [ ] `[STANDARD]` Each flow has a **description** explaining what it does, who requested it, and what SharePoint site or library it connects to. *(2 pts)*
- [ ] `[BEST PRACTICE]` Flows are stored in **Power Platform solutions** rather than as personal "My Flows", enabling Application Lifecycle Management (ALM) and easier transfer of ownership. *(1 pt)*

**Section 1 Max: 11 pts**

> **Remediation:** [[Flow Governance and Best Practices]] · [[Power Automate Overview]] · [[Governance Overview]]

---

## Section 2 — Connection Security and Credentials

- [ ] `[CRITICAL]` No flow accesses a **Confidential or Highly Confidential SharePoint library** using a personal user connection — only service account or application-level connections are used for sensitive content. *(3 pts)*
- [ ] `[STANDARD]` The service account or connection credential used by each flow has only the **minimum SharePoint permissions** required for the flow to function (principle of least privilege). *(2 pts)*
- [ ] `[STANDARD]` Connector credentials are reviewed when a **staff member who set them up leaves** the organization, to confirm flows are not running on abandoned accounts. *(2 pts)*
- [ ] `[STANDARD]` Flows do not embed **hardcoded credentials, tokens, or secrets** in action configurations — environment variables or Azure Key Vault references are used instead. *(2 pts)*
- [ ] `[BEST PRACTICE]` The connections used by each flow are documented, including the account type and the permission level granted. *(1 pt)*

**Section 2 Max: 10 pts**

> **Remediation:** [[Flow Governance and Best Practices]] · [[SharePoint HTTP Connector]] · [[Permissions Overview]]

---

## Section 3 — Error Handling and Resilience

- [ ] `[STANDARD]` Critical flows include a **"Run After" error scope** — at minimum, a failure notification sent to the flow owner or a shared mailbox when the flow fails. *(2 pts)*
- [ ] `[STANDARD]` Flows that create or update SharePoint items include logic to **avoid infinite loops** — for example, a guard column or condition that prevents the flow from triggering on its own updates. *(2 pts)*
- [ ] `[STANDARD]` Flows that process **large lists** use pagination (OData top/skip or `@odata.nextLink`) rather than assuming all items are returned in a single request (SharePoint returns max 100 items per page by default). *(2 pts)*
- [ ] `[BEST PRACTICE]` Flow run history is **monitored** — someone reviews failures at least weekly for any business-critical flow. *(1 pt)*
- [ ] `[BEST PRACTICE]` Flows have been tested against the **SharePoint throttling limits** (250,000 Power Platform actions per 24 hours per tenant) and are designed to stay well within them during peak usage. *(1 pt)*

**Section 3 Max: 8 pts**

> **Remediation:** [[Flow Governance and Best Practices]] · [[Common Flow Patterns]] · [[SharePoint HTTP Connector]]

---

## Section 4 — DLP and Compliance Alignment

- [ ] `[CRITICAL]` All flows comply with the organization's **Power Platform Data Loss Prevention (DLP) policies** — no flow bridges a connector classified as "Business" with one classified as "Non-business" or "Blocked". *(3 pts)*
- [ ] `[STANDARD]` Flows that send data **outside the organization** (e.g. to an external API, email, or Teams channel) have been reviewed and approved by the appropriate business or IT stakeholder. *(2 pts)*
- [ ] `[STANDARD]` Flows connected to SharePoint sites that hold **Confidential or Highly Confidential content** have been reviewed to confirm they do not inadvertently expose that content via a less-controlled connector. *(2 pts)*
- [ ] `[BEST PRACTICE]` A **flow inventory** exists documenting all flows associated with each SharePoint site, their purpose, owner, and last review date. *(1 pt)*
- [ ] `[BEST PRACTICE]` Flows are reviewed when the **SharePoint site's sensitivity label or external sharing policy changes**, to ensure the automation still complies with the updated policy. *(1 pt)*

**Section 4 Max: 9 pts**

> **Remediation:** [[Flow Governance and Best Practices]] · [[Governance Overview]] · [[Sensitivity Labels Overview]] · [[External Sharing]]

---

## Section Score Summary

| Section | Max Points | Actual Points | Score % | Rating |
|---------|-----------|---------------|---------|--------|
| 1 — Ownership and Naming | 11 | | | |
| 2 — Connection Security and Credentials | 10 | | | |
| 3 — Error Handling and Resilience | 8 | | | |
| 4 — DLP and Compliance Alignment | 9 | | | |
| **Overall** | **38** | | | |

**Traffic Light:** 🟢 ≥90% · 🟡 75–89% · 🟠 55–74% · 🔴 35–54% · 🔴 <35%

> **Override rule:** Any `[CRITICAL]` item marked No — particularly flows running on personal credentials with no co-owner — represents an operational continuity and security risk that should be remediated before the next staff turnover event.

*Full scoring methodology: [[Checklist Index]]*

---

## Remediation Summary

| Flow Name | Item | Response | Remediation Action | Target Date |
|-----------|------|----------|--------------------|-------------|
| | | | | |

---

## SharePoint Champion Signal

*Optional. If Power Automate and SharePoint automation is an area you enjoy and want to contribute to, let us know.*

**I would be interested in:** *(mark all that apply)*

- [ ] Building or reviewing automation solutions for other teams
- [ ] Helping develop flow templates or patterns for reuse
- [ ] Participating in Power Platform governance or DLP policy reviews
- [ ] Training colleagues on responsible and effective use of Power Automate
- [ ] None of the above

**Things I already do well in this area:** *(optional)*
>

**My name and team:** *(optional)*
> Name:
> Team / Department:
> Preferred contact: *(email / Teams / either)*

---

## Assessor Notes

**Flow name(s) assessed:**
**Associated SharePoint site(s):**
**Assessment date:**
**Completed by:**
**Reviewed by (admin):**
**Follow-up actions:**
>
