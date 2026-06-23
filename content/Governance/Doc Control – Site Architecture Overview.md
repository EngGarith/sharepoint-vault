---
tags:
  - governance
  - hub-sites
  - document-libraries
  - site-admin
date: 2026-06-16
aliases:
  - Document Control Architecture
---

# Doc Control – Site Architecture Overview

Master reference for the SharePoint site structure supporting the Owner/Operator Document Control Roadmap engagement. All design decisions here are explicitly scoped to a lean organization in Phase 1 (Minimal Viable Evergreen); complexity is deferred until governance capacity exists to support it.

See [[Doc Control – Document State Metadata]], [[Doc Control – Plant Records Libraries]], [[Doc Control – Hub Site Configuration]], [[Doc Control – Permission Model]], [[Doc Control – Registers and Indexes]], and [[Doc Control – MOC Notification Flow]] for implementation detail on each layer.

---

## Site Topology

```
Document Control Hub  (Hub Site)
│
├── Plant Records  ←  Phase 1 — Single Authoritative Repository
│   ├── Library: Process Safety & Technical Intent  [E]
│   ├── Library: Physical Plant Definition  [E]
│   ├── Library: Electrical & Instrumentation  [E]
│   ├── Library: Operating Procedures & Maintenance  [O]
│   ├── Library: EHS & Emergency Response  [EHS]
│   └── List:    MOC Register  [O]
│
└── Projects & Handover  ←  Phase 3 — Formal Turnover
    ├── Library: Active Project Documents
    ├── Library: Handover Packages
    └── List:    Brownfield Interface Register  [E→O]
```

Phase 2 registers (Equipment Register, Instrument Index, Line List) live in the **Plant Records** site as SharePoint lists — not in a separate site. See [[Doc Control – Registers and Indexes]].

---

## Phase Activation Map

| SharePoint Artifact | Phase | Activation Trigger |
|---|---|---|
| Document Control Hub site | 0 | Executive sponsor named; hub registered |
| Plant Records site | 0 | Same as hub — scaffold immediately |
| Process Safety & Technical Intent library | 1 | P&IDs and PSI documents in scope |
| Physical Plant Definition library | 1 | Plot plans, GAs in scope |
| Electrical & Instrumentation library | 1 | Single lines, C&E, control narratives in scope |
| Operating Procedures & Maintenance library | 1 | Procedures written or transferred in |
| EHS & Emergency Response library | 1 | ERP and permit records transferred in |
| MOC Register list | 1 | MOC process activated |
| Equipment Register list | 2 | Equipment list authority asserted |
| Instrument Index list | 2 | Instrument index authority asserted |
| Line List list | 2 | Line list authority asserted |
| Projects & Handover site | 3 | Formal turnover process adopted |
| Brownfield Interface Register list | 2 | First brownfield project under control |

---

## Key Design Decisions

**Single site for Phase 1 (not multiple sites)**
A lean organization with no existing document control function cannot govern multiple sites in Phase 1. One Plant Records site with library-level permission breaks is the correct scope. Premature site sprawl creates orphaned content faster than it creates governance.

**Libraries, not folders, for document categories**
Each document category (Process Safety, Physical Plant, E&I, etc.) is a separate library — not a folder within one library. This allows distinct permission models, content types, and views per category, which directly maps to the [E/O/EHS] ownership model. See [[Doc Control – Permission Model]].

**Hub site registered immediately**
Even though Phase 1 is a single site, register the hub at day one. This ensures search rollup and navigation are additive as new sites associate — no retroactive restructuring required.

**MOC as a list in Plant Records (Phase 1), not a separate site**
A separate MOC site would add permission complexity and navigation friction before the organization has governance muscle. The MOC Register list in Plant Records keeps change and records co-located. Promote to a dedicated site in Phase 3 or 4 if volume demands.

**Phase 2 registers stay in Plant Records, not a separate site**
Equipment Register, Instrument Index, and Line List are authoritative registers that feed directly into everyday plant records lookups. Keeping them in Plant Records avoids cross-site lookups and keeps Ops in one place.

---

## Document Ownership Model — SharePoint Mapping

| Code  | Owner                    | SharePoint Implementation                                                                                                     |
| ----- | ------------------------ | ----------------------------------------------------------------------------------------------------------------------------- |
| [E]   | Engineering              | Contribute rights on [E] libraries; DC-Engineering SP group                                                                   |
| [O]   | Operations               | Contribute rights on [O] libraries; DC-Operations SP group                                                                    |
| [E→O] | Engineered → Operational | Engineering uploads initial record; ownership transferred via Document Authority column update; Operations governs thereafter |
| [EHS] | EHS / Process Safety     | Contribute rights on [EHS] library; DC-EHS SP group                                                                           |

The **Document Authority** column (single-line choice) appears on every library record and makes ownership machine-readable for reporting, flow routing, and audit. See [[Doc Control – Plant Records Libraries]].

---

## Naming Conventions

| Object | Pattern | Example |
|---|---|---|
| Hub site URL | `/sites/doc-control-hub` | — |
| Plant Records site URL | `/sites/plant-records` | — |
| Projects site URL | `/sites/projects-handover` | — |
| SP group names | `DC-[Site]-[Role]` | `DC-PlantRecords-Engineering` |
| Library names | Spell out in full; no abbreviations | `Process Safety & Technical Intent` |
| Document titles | `[Area]-[DocType]-[Tag/Number]-Rev[X]` | `U100-PID-001-RevA` |

---

## What This Structure Does Not Cover (By Design)

- Contractor submittal governance — Phase 3
- Lifecycle metadata optimization — Phase 4
- Records retention automation — Phase 4
- Integration with CMMS or DMS platforms — out of scope for initial engagement
