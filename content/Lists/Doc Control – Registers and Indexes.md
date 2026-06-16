---
tags:
  - lists
  - governance
date: 2026-06-16
aliases:
  - Document Control Registers
  - Plant Registers
---

# Doc Control – Registers and Indexes

SharePoint list specifications for Phase 2 authoritative plant registers and the Phase 1 MOC Register. Lists — not libraries — are used for tabular register data. Document libraries are for files. See [[Doc Control – Site Architecture Overview]] for phase context.

---

## MOC Register (Phase 1)

**Site:** Plant Records
**List type:** Custom list
**Authority:** [O] — Operations initiates; Engineering and EHS review
**Phase:** 1

### Columns

| Column | Type | Values / Notes |
|---|---|---|
| MOC Number | Single line of text | Manually assigned in Phase 1: MOC-YYYY-NNN (e.g., MOC-2026-001). Auto-numbering via Flow in Phase 2. |
| Title | Single line of text | Brief description of the change |
| Change Type | Choice | Management of Change; Temporary Change; Emergency Change |
| Initiator | Person | Person submitting the MOC |
| Area / Unit | Choice | Matches Area/Unit column in libraries |
| PSM Covered | Yes/No | Is the affected process PSM-covered? |
| Risk Level | Choice | Low; Medium; High |
| Status | Choice | Draft; Under Review; Approved; Implemented; Closed |
| Affected Documents | Multiple lines of text | List of document titles and library locations impacted. Phase 2: replace with a lookup or multi-value managed metadata field. |
| Engineering Reviewer | Person | — |
| EHS Reviewer | Person | Required when PSM Covered = Yes |
| Approval Date | Date | Date MOC was approved |
| Implementation Date | Date | Date change was physically implemented |
| Record Reconciliation Complete | Yes/No | Confirms all affected document records have been updated |
| Close Date | Date | Date MOC formally closed; requires Record Reconciliation Complete = Yes |
| Notes | Multiple lines of text | — |

### Views

| View | Filter / Sort |
|---|---|
| Open MOCs | Status ≠ Closed, sorted by Approval Date ascending |
| Awaiting Reconciliation | Status = Implemented AND Record Reconciliation Complete = No |
| By Area | Grouped by Area / Unit |
| All MOCs | Default |

**Record Reconciliation Complete** is the key field. An implemented MOC with unreconciled records is the primary mechanism by which the plant accumulates uncontrolled accuracy. The **Awaiting Reconciliation** view should trend to zero.

---

## Equipment Register (Phase 2)

**Site:** Plant Records
**List type:** Custom list
**Authority:** [E] Engineering Handover Deliverable
**Phase:** 2

### Columns

| Column | Type | Values / Notes |
|---|---|---|
| Equipment Tag | Single line of text | Primary identifier; indexed for lookup |
| Equipment Name | Single line of text | — |
| Equipment Type | Choice | Vessel; Heat Exchanger; Pump; Compressor; Tank; Column; Reactor; Filter; Agitator; Other |
| Area / Unit | Choice | — |
| Service / Fluid | Single line of text | — |
| P&ID Reference | Single line of text | Link to controlling P&ID drawing number |
| Design Pressure (barg) | Number | — |
| Design Temperature (°C) | Number | — |
| Material of Construction | Single line of text | — |
| Jurisdiction File Number | Single line of text | Pressure vessel registration number where applicable |
| Inspection Due Date | Date | — |
| Status | Choice | Active; Standby; Decommissioned; Removed |
| Notes | Multiple lines of text | — |

### Views

| View | Filter |
|---|---|
| Active Equipment | Status = Active |
| Inspection Due | Sorted by Inspection Due Date ascending |
| By Area | Grouped by Area / Unit |
| Decommissioned | Status = Decommissioned or Removed |

---

## Instrument Index (Phase 2)

**Site:** Plant Records
**List type:** Custom list
**Authority:** [E] Engineering Handover Deliverable
**Phase:** 2

### Columns

| Column | Type | Values / Notes |
|---|---|---|
| Tag Number | Single line of text | Primary identifier; indexed |
| Instrument Description | Single line of text | — |
| P&ID Reference | Single line of text | — |
| Loop Number | Single line of text | — |
| Area / Unit | Choice | — |
| Service | Single line of text | — |
| Calibration Range Low | Single line of text | Include units |
| Calibration Range High | Single line of text | Include units |
| Low Alarm Setpoint | Single line of text | Include units |
| High Alarm Setpoint | Single line of text | Include units |
| SIS Function | Yes/No | Is this instrument part of a Safety Instrumented System? |
| SIF Reference | Single line of text | SIF tag if SIS Function = Yes |
| Inspection / Calibration Due | Date | — |
| Status | Choice | Active; Spare; Decommissioned |

### Views

| View | Filter |
|---|---|
| SIS Instruments | SIS Function = Yes |
| Calibration Due | Sorted by Inspection / Calibration Due ascending |
| By Area | Grouped by Area / Unit |

---

## Line List (Phase 2)

**Site:** Plant Records
**List type:** Custom list
**Authority:** [E] Engineering Handover Deliverable
**Phase:** 2

### Columns

| Column | Type | Values / Notes |
|---|---|---|
| Line Number | Single line of text | Primary identifier; indexed |
| From | Single line of text | Source equipment tag or point |
| To | Single line of text | Destination equipment tag or point |
| Fluid Service | Single line of text | — |
| Area / Unit | Choice | — |
| P&ID Reference | Single line of text | — |
| Design Pressure (barg) | Number | — |
| Design Temperature (°C) | Number | — |
| Pipe Class | Single line of text | — |
| Insulation | Choice | None; Thermal; Personnel Protection; Heat Traced; Traced + Insulated |
| PSM Covered | Yes/No | — |
| Status | Choice | Active; Decommissioned |

### Views

| View | Filter |
|---|---|
| PSM Lines | PSM Covered = Yes |
| By Area | Grouped by Area / Unit |
| By Pipe Class | Grouped by Pipe Class |

---

## Brownfield Interface Register (Phase 2 — Projects & Handover Site)

**Site:** Projects & Handover (not Plant Records)
**List type:** Custom list
**Authority:** [E→O] — Engineered origin, operationally declared during change
**Phase:** 2
**Important:** This is a **project-authoritative, time-bounded artifact** — not an evergreen record. It is authoritative during the change, reconciled at closeout, and retained for traceability. It must not be maintained as a living register after the project closes.

### Columns

| Column | Type | Values / Notes |
|---|---|---|
| Interface ID | Single line of text | e.g., INT-2026-001 |
| Project Number | Single line of text | Links to Active Project Documents library |
| Description | Multiple lines of text | What is being tied in or modified |
| Tie-In Point | Single line of text | Physical tie-in location / tag reference |
| P&ID Reference | Single line of text | — |
| Area / Unit | Choice | — |
| Status | Choice | Active; Hold; Reconciled; Closed |
| Reconciled at Closeout | Yes/No | Confirms the tie-in has been reconciled into evergreen plant records |
| Reconciliation Notes | Multiple lines of text | What was updated; which P&IDs, drawings, or lists were revised |
| Close Date | Date | — |

The **Reconciled at Closeout** field is the handover gate. Project cannot be formally closed until all interface records are either Reconciled or explicitly carried forward with an open MOC.
