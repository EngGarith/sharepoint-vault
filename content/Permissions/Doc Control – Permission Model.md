---
tags:
  - permissions
  - governance
date: 2026-06-16
aliases:
  - Document Control Permissions
---

# Doc Control – Permission Model

SharePoint permission structure for the Document Control engagement. The model maps directly to the [E/O/EHS] document authority codes — each ownership type has a corresponding group with contribute rights on its libraries and read-only access elsewhere. See [[Doc Control – Site Architecture Overview]] for the full structure context.

---

## Design Principles

- **Minimum necessary access** — no blanket contribute rights across all libraries
- **Library-level permission breaks** — each library inherits from the site but is then adjusted per ownership group
- **Groups over individuals** — all access granted through SP groups; no direct user assignments
- **Version history visible to all** — read access includes version history; do not restrict it

---

## SharePoint Groups

### Hub Site Groups

| Group | Permission Level | Purpose |
|---|---|---|
| DC-Hub-Owners | Full Control | Hub site administration; hub registration management |
| DC-Hub-Members | Edit | Hub home page content (news, web parts) |
| DC-Hub-Visitors | Read | All plant personnel — default landing page access |

### Plant Records Site Groups

| Group | Permission Level | Purpose |
|---|---|---|
| DC-PlantRecords-Owners | Full Control | Document Control admin; site settings; column and content type management |
| DC-Engineering | Contribute | Contribute on [E] libraries; Read on [O] and [EHS] libraries |
| DC-Operations | Contribute | Contribute on [O] libraries; Read on [E] and [EHS] libraries |
| DC-EHS | Contribute | Contribute on [EHS] library; Read on [E] and [O] libraries |
| DC-PlantRecords-ReadAll | Read | All libraries — plant personnel, contractors with plant access |
| DC-ExternalReview | Read | Scoped access for auditors or project reviewers — site-level Read; may be further restricted at library level |

---

## Library Permission Matrix

Break inheritance on each library and assign groups as follows:

| Library | DC-Engineering | DC-Operations | DC-EHS | DC-PlantRecords-Owners | ReadAll | ExternalReview |
|---|---|---|---|---|---|---|
| Process Safety & Technical Intent | **Contribute** | Read | Read | Full Control | Read | Read |
| Physical Plant Definition | **Contribute** | Read | Read | Full Control | Read | Read |
| Electrical & Instrumentation | **Contribute** | Read | Read | Full Control | Read | Read |
| Operating Procedures & Maintenance | Read | **Contribute** | Read | Full Control | Read | Read |
| EHS & Emergency Response | Read | Read | **Contribute** | Full Control | Read | Read |
| MOC Register (List) | Contribute (review) | **Contribute** (initiate) | Contribute (review) | Full Control | Read | Read |

**Breaking inheritance on a library:**
Library Settings → Permissions for this document library → Stop Inheriting Permissions → then assign groups explicitly.

---

## MOC Register — Additional Permission Note

The MOC Register list needs all three functional groups (Engineering, Operations, EHS) to be able to create and edit items, since MOC events touch all three domains. All three groups get Contribute on this list. DC-PlantRecords-Owners hold Full Control.

Version history on the MOC Register list should be enabled (Settings → Versioning → Create a version each time you edit an item) to preserve the audit trail of status changes and approvals.

---

## Check-Out and Contribution Controls

**Require check-out before editing:** Yes — on all [E] libraries and the EHS library.

This is enforced at library settings level: Library Settings → Versioning Settings → Require documents to be checked out before they can be edited → Yes.

Rationale: [E] and [EHS] records are the most governance-critical. Check-out prevents two people editing simultaneously and creates a clear single-editor record for each revision.

For the [O] library (Operating Procedures & Maintenance), check-out is **recommended** but may be set to optional in Phase 1 if Operations finds it creates adoption friction. Revisit in Phase 2.

---

## External and Guest Access

**Default:** No external sharing on Plant Records or Hub site in Phase 1.

If external reviewers (auditors, regulators, EPC contractors) need access:
1. Add user to **DC-ExternalReview** group — site-level Read
2. If library-specific restriction is needed, remove from ReadAll and grant library-level access explicitly
3. All external access must be time-bounded — set expiry on the guest link or review group membership quarterly

Do not use anonymous sharing links for any plant records. See [[External Sharing]] for tenant-level sharing controls.

---

## Group Membership Governance

- Group membership is owned by **DC-PlantRecords-Owners** (Document Control Admin)
- No self-service group join
- Review membership: quarterly in Phase 1; semi-annually in Phase 2+
- Joiners: add to appropriate functional group when onboarded to Document Control responsibility
- Leavers: remove from all DC groups immediately on role change or departure — plant records access should not persist beyond role

---

## Phase 3 Addition: Projects & Handover Site

When the Projects & Handover site is created:

| Group | Permission | Scope |
|---|---|---|
| DC-Projects-Owners | Full Control | Projects site |
| DC-Engineering | Contribute | Active Project Documents library |
| DC-PlantRecords-Owners | Read | Handover Packages library (receives completed packages) |
| DC-PlantRecords-ReadAll | Read | Handover Packages library |

Projects site should also be associated with the hub — hub search rollup will then include handover packages in plant-wide search.
