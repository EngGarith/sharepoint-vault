---
tags: [assessment, checklist, governance, index]
date: 2026-05-27
aliases: [Assessment Index, Checklist Suite, Health Check Index]
---

# SharePoint Assessment Checklist Suite

This suite of checklists enables the organization to discover the current state of its SharePoint environment through structured, self-directed assessment. Each checklist is designed for a specific audience and domain. Together they serve three purposes:

1. **Educate** — each checklist teaches what "good" looks like in that domain, so completing it is itself a learning exercise.
2. **Score** — every item is weighted; section and overall scores produce a traffic-light health rating that can be tracked over time.
3. **Identify champions** — each checklist includes an optional block for individuals to signal interest in deeper SharePoint involvement.

---

## Checklist Directory

| ID | Title | Audience | Est. Time | Wave | Status |
|----|-------|----------|-----------|------|--------|
| SP-CL-01 | [[SP-CL-01 End User Essentials]] | End User | 10–15 min | 1 | Active |
| SP-CL-02 | [[SP-CL-02 Site Owner Self-Assessment]] | Site Owner / Steward | 15–20 min | 1 | Active |
| SP-CL-03 | [[SP-CL-03 Permissions Health Check]] | Site Owner / Admin | 20–25 min | 1 | Active |
| SP-CL-04 | [[SP-CL-04 Document Library Audit]] | Site Owner / Power User | 20 min | 2 | Active |
| SP-CL-05 | [[SP-CL-05 Sensitivity Labels Readiness]] | Site Owner / Compliance | 20 min | 2 | Active |
| SP-CL-06 | [[SP-CL-06 Power Automate Governance]] | Power User / Admin | 20 min | 3 | Active |
| SP-CL-07 | [[SP-CL-07 SharePoint Admin Quarterly Audit]] | SharePoint Admin | 30 min | 3 | Active |
| SP-CL-08 | [[SP-CL-08 Compliance and Data Lifecycle]] | Compliance / Security | 25 min | 3 | Active |

**Wave 1** — deploy first for broadest reach and highest-risk signal.
**Wave 2** — deploy after Wave 1 data is collected and reviewed.
**Wave 3** — specialist checklists for admins and compliance stakeholders.

---

## Scoring Guide

### Criticality Weights

| Badge | Meaning | Points |
|-------|---------|--------|
| `[CRITICAL]` | Active risk if absent — data exposure, compliance breach, or operational failure | 3 |
| `[STANDARD]` | Expected baseline for any well-run SharePoint environment | 2 |
| `[BEST PRACTICE]` | Maturity indicator; absence is a gap, not an immediate risk | 1 |

### Response Values

| Response | Multiplier | Notes |
|----------|-----------|-------|
| Yes | 1.0 | Fully in place |
| Partial | 0.5 | In place for some areas but not all |
| No | 0.0 | Not in place |
| N/A | Excluded | Item does not apply; remove from denominator |

### Calculating Scores

**Section Score:**
```
Section % = (sum of actual points in section) / (sum of max points for non-N/A items) × 100
```

**Overall Health Score:**
```
Overall % = (sum of all section actual points) / (sum of all section max points) × 100
```

### Traffic Light Ratings

| Overall % | Rating | Meaning |
|-----------|--------|---------|
| 90–100 | 🟢 Green | Strong — maintain current practices |
| 75–89 | 🟡 Amber-Green | Good — minor improvements recommended |
| 55–74 | 🟠 Amber | Developing — targeted remediation needed |
| 35–54 | 🔴 Red-Amber | At Risk — significant gaps present |
| 0–34 | 🔴 Red | Critical — immediate action required |

> **Override rule:** If any `[CRITICAL]` item is marked **No**, escalate to the SharePoint admin immediately, regardless of the overall score.

---

## How to Run an Assessment Cycle

1. **Select your wave** — start with Wave 1 checklists for the broadest coverage.
2. **Identify your audience** — distribute the right checklist to the right people. Site owners complete SP-CL-02; all staff complete SP-CL-01.
3. **Distribute** — share as a PDF export or replicate in Microsoft Forms (see Deployment Notes below).
4. **Collect responses** — aim for a representative sample per department or site type.
5. **Score** — enter Actual Points into each checklist's Section Score Summary table.
6. **Record aggregate scores** in the table below.
7. **Identify critical gaps** — any CRITICAL item failing across multiple sites indicates a systemic issue; prioritize remediation.
8. **Extract champion signals** — review Champion Signal blocks and update the Champion Register below.
9. **Plan improvements** — use section scores to sequence remediation work; address Red sections first.
10. **Repeat** — run Wave 1 checklists annually; SP-CL-07 runs quarterly.

### Deployment Notes

The Obsidian notes are the master specification and admin working copy. For distribution to staff outside Obsidian:
- **PDF** — export from Obsidian (File → Export as PDF or print to PDF) for email or paper distribution.
- **Microsoft Forms** — mirror the checklist structure in a Form; route responses to a SharePoint list so the health data lives in SharePoint itself.

---

## Aggregate Score Tracker

Use this table to record scores across sites, departments, or assessment cycles over time.

| Date | Checklist | Site / Scope | Assessor | Overall % | Rating | Key Gap |
|------|-----------|-------------|----------|-----------|--------|---------|
| | | | | | | |

---

## Champion Register

Populated from Champion Signal blocks returned with completed checklists.

| Date | Name | Team | Checklist | Interests | Contacted | Status |
|------|------|------|-----------|-----------|-----------|--------|
| | | | | | ☐ | |

---

## Related

- [[SharePoint Administration]] — vault home note
- [[Governance Overview]] — governance pillars that these checklists assess
- [[Permissions Overview]] — permissions concepts assessed in SP-CL-02 and SP-CL-03
- [[Sensitivity Labels Overview]] — label concepts assessed in SP-CL-05
- [[Site Administration Overview]] — site settings assessed in SP-CL-02 and SP-CL-07
