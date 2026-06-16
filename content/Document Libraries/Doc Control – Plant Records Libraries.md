---
tags:
  - document-libraries
  - governance
  - site-admin
date: 2026-06-16
aliases:
  - Plant Records Libraries
---

# Doc Control – Plant Records Libraries

Library-by-library specification for the Plant Records site — the single authoritative repository activated in Phase 1. All libraries share a common metadata baseline ([[Doc Control – Document State Metadata]]) and sit within the same site to allow single-site permissions with library-level breaks ([[Doc Control – Permission Model]]).

For the full site context see [[Doc Control – Site Architecture Overview]].

---

## Common Settings (All Libraries)

| Setting | Value | Rationale |
|---|---|---|
| Versioning | Major versions only | Minor versions add noise in Phase 1; promotes disciplined check-in |
| Require check-out | Yes | Prevents concurrent edits overwriting each other |
| Content approval | No | Approval workflow is through MOC, not library approval |
| Require check-in comment | Yes | Brief comment creates an audit trail without formal workflow |
| Draft item security | N/A (major only) | — |
| Default view | All Documents, sorted by Area/Unit then Document Type | — |

---

## Shared Columns (Applied to All Libraries)

These columns are site columns, created once at the Plant Records site level and added to each library.

| Column Name | Type | Values / Notes |
|---|---|---|
| Document Status | Choice | Uncontrolled; Controlled – Known Imperfect; Reconciled / As-Built. Default: Controlled – Known Imperfect. See [[Doc Control – Document State Metadata]] |
| Document Authority | Choice | Engineering [E]; Operations [O]; Engineering → Operations [E→O]; EHS / Process Safety [EHS] |
| Area / Unit | Choice or Managed Metadata | Defined per facility; e.g., Unit 100, Unit 200, Utilities, Site-Wide |
| Revision | Single line of text | Free text; e.g., Rev.0, Rev.A, Rev.B. Not auto-calculated |
| Known Limitations | Multiple lines of text | Required when Document Status = Controlled – Known Imperfect. Describe gaps explicitly |
| Review Date | Date | Date of last formal review |
| Next Review Due | Date | Set manually or by Power Automate. Trigger for [[Doc Control – MOC Notification Flow]] |
| MOC Reference | Single line of text | MOC number from MOC Register if this revision was triggered by a change |

---

## Library 1: Process Safety & Technical Intent

**Authority:** [E] Engineering Handover Deliverable
**Phase:** 1
**Purpose:** PSM-critical process definition records. The most tightly governed library — no revision without MOC reference.

### Additional Columns

| Column Name | Type | Values |
|---|---|---|
| Document Type | Choice | PFD; P&ID; Heat & Material Balance; Process Description / Basis of Operation; Safe Operating Limits; Relief System Basis; Chemical Hazard Data; HAZOP / PHA Report; LOPA; PSI Index |
| PSM Covered | Yes/No | Default: Yes |
| Process Safety Time Reference | Yes/No | Flags documents that contain PST assumptions (requires MOC review if changed) |

### Views

- **PSI Index** — filtered to PSM Covered = Yes, grouped by Document Type
- **Pending Reconciliation** — filtered to Document Status = Controlled – Known Imperfect
- **All Documents** — default

### Content Type
`PSI Document` — inherits from Document; adds the columns above.

---

## Library 2: Physical Plant Definition

**Authority:** [E] Engineering Handover Deliverable
**Phase:** 1
**Purpose:** Physical layout and equipment records. Primary reference for brownfield work, emergency response, and maintenance planning.

### Additional Columns

| Column Name | Type | Values |
|---|---|---|
| Document Type | Choice | Plot Plan; General Arrangement; Equipment Layout; Equipment Datasheet; Pressure Vessel Record / Jurisdictional File |
| Drawing Number | Single line of text | Originating drawing number from EPC or internal system |

### Views

- **By Area** — grouped by Area / Unit
- **Pending Reconciliation** — filtered to Document Status = Controlled – Known Imperfect

### Content Type
`Plant Drawing` — inherits from Document.

---

## Library 3: Electrical & Instrumentation

**Authority:** [E] Engineering Handover Deliverable
**Phase:** 1
**Purpose:** Electrical and control system records, including SIS documentation where applicable.

### Additional Columns

| Column Name | Type | Values |
|---|---|---|
| Document Type | Choice | Single Line Diagram; Load List; Area Classification Drawing; Instrument Loop Diagram; Control Narrative; Cause & Effect Diagram; SIS Documentation |
| Discipline | Choice | Electrical; Instrumentation; Control Systems; Safety Instrumented Systems |
| Tag / Reference | Single line of text | Primary tag or drawing number (e.g., loop number, SLD reference) |

### Views

- **By Discipline** — grouped by Discipline
- **Control Systems** — filtered to Discipline = Control Systems or Safety Instrumented Systems
- **Pending Reconciliation** — filtered to Document Status = Controlled – Known Imperfect

### Content Type
`E&I Document` — inherits from Document.

---

## Library 4: Operating Procedures & Maintenance

**Authority:** [O] Operations-Owned Record
**Phase:** 1 (operating procedures); Phase 1–2 (maintenance strategies and inspection plans)
**Purpose:** How the plant is run and maintained day-to-day. Operations owns revision authority.

### Additional Columns

| Column Name | Type | Values |
|---|---|---|
| Document Type | Choice | Normal Operating Procedure; Startup Procedure; Shutdown Procedure; Emergency Procedure; Preventive Maintenance Strategy; Inspection Plan; Critical Spare Parts List; OEM Manual Index |
| Procedure Owner | Person | Named Operations owner responsible for currency |
| PSM Covered | Yes/No | Emergency and abnormal procedures for PSM processes: Yes |

### Views

- **Emergency Procedures** — filtered to Document Type = Emergency Procedure, sorted by Area / Unit
- **PSM Procedures** — filtered to PSM Covered = Yes
- **Review Due** — sorted by Next Review Due ascending
- **All Documents** — default

### Content Type
`Operating Procedure` — inherits from Document.

---

## Library 5: EHS & Emergency Response

**Authority:** [EHS] EHS / Process Safety–Owned Record
**Phase:** 1
**Purpose:** Regulatory compliance records, risk memory, and emergency response. Governed by EHS for audit readiness — Operations trains to them, EHS keeps them current.

### Additional Columns

| Column Name | Type | Values |
|---|---|---|
| Record Type | Choice | Environmental Permit; Compliance Record; Emissions Calculation; Emergency Response Plan; Fire Protection Documentation; HAZOP Action Register; Revalidation Record |
| Regulatory Driver | Single line of text | e.g., 29 CFR 1910.119; 40 CFR Part 68; State permit number |
| EHS Owner | Person | Named EHS owner |
| Expiry / Next Review Date | Date | For permits and time-bound obligations |

### Views

- **Permits and Obligations** — filtered to Record Type = Environmental Permit or Compliance Record, sorted by Expiry / Next Review Date
- **PSM Records** — filtered to Regulatory Driver contains "1910.119"
- **Action Register** — filtered to Record Type = HAZOP Action Register

### Content Type
`EHS Record` — inherits from Document.

---

## MOC Register (List, not Library)

**Authority:** [O] — Operations initiates; Engineering and EHS review
**Phase:** 1
**Purpose:** Single tracking list for all Management of Change events. Not a document library — no file attachments by default; link to affected documents via MOC Reference column in libraries.

See [[Lists/Doc Control – Registers and Indexes]] for the full MOC Register column specification.

---

## Versioning Note

Major versions are numbered 1.0, 2.0, 3.0 in SharePoint. Map these to the facility's revision scheme in the **Revision** column (Rev.A, Rev.B, etc.) rather than relying on SharePoint's version number as the official revision identifier. This keeps document identity independent of the SharePoint platform.
