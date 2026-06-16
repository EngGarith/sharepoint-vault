---
tags:
  - document-libraries
  - governance
date: 2026-06-16
aliases:
  - Document State Column
  - Documentation States
---

# Doc Control – Document State Metadata

SharePoint implementation of the three-state documentation model from the Owner/Operator Document Control Roadmap. This is the single most important metadata decision in the structure — every library in [[Doc Control – Plant Records Libraries]] uses the **Document Status** column defined here.

---

## The Three States

| State | Meaning | Known Limitations Required | Default |
|---|---|---|---|
| Uncontrolled | Multiple copies may exist; currency is unknown; changes propagate informally. Transitional — should not persist in the repository. | No | — |
| Controlled – Known Imperfect | Single authoritative version exists. Gaps or accuracy limitations are explicitly visible in the Known Limitations field. All future revisions are governed. | **Yes** | **Yes** |
| Reconciled / As-Built | Accuracy has been verified against field conditions. Known Limitations field should be blank or explicitly cleared. | No | — |

The default value is **Controlled – Known Imperfect**. This reflects the actual starting state of most documents entering the repository in Phase 1. Do not default to Reconciled / As-Built — that requires an explicit declaration.

---

## Column Configuration

**Column name:** `Document Status`
**Type:** Choice
**Allow fill-in choices:** No
**Display choices using:** Drop-Down Menu
**Default value:** Controlled – Known Imperfect

Choice values (in order):
1. Uncontrolled
2. Controlled – Known Imperfect
3. Reconciled / As-Built

---

## Known Limitations Column

**Column name:** `Known Limitations`
**Type:** Multiple lines of text (plain text)
**Required:** Conditionally — required when Document Status = Controlled – Known Imperfect

SharePoint does not natively enforce conditional required fields. Options:

**Option A (Phase 1 — governance, not enforcement):** Train document owners. Add column description: "Required when Document Status = Controlled – Known Imperfect. Leave blank only when status is Reconciled / As-Built." Rely on document owner discipline and periodic audits.

**Option B (Phase 2+ — Power Automate enforcement):** Trigger a flow when a file is modified. If Document Status = Controlled – Known Imperfect and Known Limitations is blank, send a notification to the document owner and the DC Admin flagging the incomplete record. See [[Doc Control – MOC Notification Flow]].

**Option C (Power Apps form):** Replace the default library form with a Power Apps customized form that enforces conditional validation client-side. Higher build cost; appropriate once the governance model is stable.

Phase 1 recommendation: **Option A**. Do not over-engineer enforcement before the governance culture is established.

---

## Column Formatting (JSON)

Apply JSON column formatting to the Document Status column to render color-coded badges. This provides immediate visual scanning in library views.

```json
{
  "$schema": "https://developer.microsoft.com/json-schemas/sp/v2/column-formatting.schema.json",
  "elmType": "div",
  "style": {
    "display": "inline-block",
    "padding": "2px 8px",
    "border-radius": "4px",
    "font-weight": "600",
    "font-size": "12px",
    "background-color": "=if(@currentField == 'Uncontrolled', '#fde8e8', if(@currentField == 'Controlled – Known Imperfect', '#fff4cc', '#d4edda'))",
    "color": "=if(@currentField == 'Uncontrolled', '#c0392b', if(@currentField == 'Controlled – Known Imperfect', '#856404', '#155724'))"
  },
  "txtContent": "@currentField"
}
```

Color scheme:
- Uncontrolled → red background, dark red text
- Controlled – Known Imperfect → amber background, dark amber text
- Reconciled / As-Built → green background, dark green text

---

## Document Authority Column

Companion column that makes ownership machine-readable alongside Document Status.

**Column name:** `Document Authority`
**Type:** Choice
**Allow fill-in choices:** No
**Default value:** Engineering [E]

Choice values:
1. Engineering [E]
2. Operations [O]
3. Engineering → Operations [E→O]
4. EHS / Process Safety [EHS]

This column drives:
- Permission audit — who should have contribute rights on this record
- Flow routing in [[Doc Control – MOC Notification Flow]] — notifying the right owner on revision
- Phase 2 register authority tracking in [[Doc Control – Registers and Indexes]]

For [E→O] documents (e.g., Safe Operating Limits, OEM Manual Index): Engineering uploads the initial authoritative version and sets Document Authority = Engineering → Operations [E→O]. At formal handover, the column is updated to Operations [O] and the Ops owner is named in Procedure Owner.

---

## Views Using Document Status

Recommended library views that surface the state model for day-to-day use:

| View Name | Filter | Purpose |
|---|---|---|
| Needs Action | Document Status = Uncontrolled | Identifies documents that have not been brought under control — should trend toward zero |
| Known Imperfect | Document Status = Controlled – Known Imperfect | Shows records in governance but with declared gaps |
| As-Built | Document Status = Reconciled / As-Built | Highest confidence records only |
| All Documents | No filter | Default view; shows full picture |

The **Needs Action** view is the most operationally important in Phase 1. Its item count should decrease over time as legacy documents are reviewed and classified. Stagnation in this view is an early warning that the governance process has stalled.
