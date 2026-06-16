---
tags:
  - power-automate
  - governance
date: 2026-06-16
aliases:
  - Document Control Flows
  - MOC Notification
---

# Doc Control – MOC Notification Flow

Three Power Automate cloud flows supporting the Plant Records document control governance cycle. All flows use the SharePoint connector and standard Office 365 Outlook connector for notifications. See [[Doc Control – Plant Records Libraries]] for the column references and [[Doc Control – Registers and Indexes]] for the MOC Register structure.

---

## Flow 1: Document Revision — MOC Reference Check

**Trigger:** When a file is modified in any Plant Records library (five libraries; one flow per library, or use a Site trigger with a condition).

**Purpose:** Ensure that every revision to a governed document carries a valid MOC reference. Catches informal changes that bypass the MOC process.

### Logic

```
Trigger: SharePoint – When a file is modified
  Site: Plant Records
  Library: [each library — or use site-level trigger]

Condition: MOC Reference column is empty
  AND Document Status ≠ 'Uncontrolled'

If true:
  → Send email to [Procedure Owner or EHS Owner or document modified-by]
      Subject: "MOC Reference Required – [File Name]"
      Body:  "A revision was saved to [File Name] in [Library] without an
              MOC reference. If this change was made under an approved MOC,
              add the MOC number to the document record. If no MOC exists,
              initiate one before this revision is considered controlled."
  → Send email to DC-PlantRecords-Owners
      Subject: "Alert: Revision without MOC – [File Name]"
      Body:  "[File Name] was revised by [Modified By] with no MOC reference.
              Review required."
```

### Notes

- Do not block the save — the flow runs post-modification. Blocking writes requires a custom form (Power Apps) and adds friction before governance culture is established.
- In Phase 1, this is a notification-only flow. Escalation to management is a Phase 2 addition.
- MOC Reference check applies to [E] and [EHS] libraries. For [O] (Operating Procedures), the check is on major revision only — minor wording corrections do not require MOC. Add a condition checking the version number if needed.

---

## Flow 2: Known Limitations Required — Status Check

**Trigger:** When a file is modified in any Plant Records library.

**Purpose:** Enforce (via notification) that the Known Limitations field is populated whenever Document Status = Controlled – Known Imperfect. See [[Doc Control – Document State Metadata]] for the full column specification.

### Logic

```
Trigger: SharePoint – When a file is modified
  Site: Plant Records
  Library: [each library]

Get file properties (to read Document Status and Known Limitations)

Condition: Document Status equals 'Controlled – Known Imperfect'
  AND Known Limitations is empty

If true:
  → Send email to [Modified By]
      Subject: "Known Limitations Required – [File Name]"
      Body:  "[File Name] has been saved with status 'Controlled – Known Imperfect'
              but no Known Limitations were recorded. Please update the document
              properties to describe the known gaps or accuracy limitations.
              This is required for the record to be considered properly governed."
```

### Notes

- Only fires when both conditions are true. A blank Known Limitations on a Reconciled / As-Built document is correct — do not notify.
- Low noise in practice: most documents entering Phase 1 will have Known Limitations pre-populated by the uploading engineer.

---

## Flow 3: Review Due — Scheduled Reminder

**Trigger:** Scheduled — runs daily at 07:00.

**Purpose:** Alert document owners when records are approaching their Next Review Due date. Prevents silent expiry of review obligations.

### Logic

```
Trigger: Recurrence – every 1 day at 07:00

For each library in Plant Records:
  Get items: SharePoint – Get files (properties only)
    Filter: Next Review Due <= [Today + 30 days]
             AND Next Review Due >= [Today]
             AND Document Status ≠ 'Uncontrolled'

  For each file:
    Condition: Procedure Owner or EHS Owner is not empty
      → Send email to [owner column value]
          Subject: "Document Review Due in [X] days – [File Name]"
          Body:  "[File Name] in [Library] is due for review by [Next Review Due].
                  Please review for currency and update Document Status and Next
                  Review Due date upon completion."
```

### Configuration Notes

- Run the flow against each library separately (five flows) or use the SharePoint REST API via HTTP connector to query all libraries in one call. Five separate flows is simpler to maintain in Phase 1.
- 30-day lookahead is the default. Adjust to 60 days for [EHS] library given regulatory permit lead times.
- If Procedure Owner and EHS Owner columns are blank, route to DC-PlantRecords-Owners as fallback.
- Do not send reminders for Uncontrolled documents — those are surfaced by the Needs Action view, not by review reminders.

---

## Flow 4: MOC Closed — Reconciliation Gate (Phase 2)

**Trigger:** When a MOC Register list item is modified with Status = Closed.

**Purpose:** Prevent MOC closure without Record Reconciliation Complete = Yes.

### Logic

```
Trigger: SharePoint – When an item is modified
  Site: Plant Records
  List: MOC Register

Condition: Status equals 'Closed'
  AND Record Reconciliation Complete equals 'No'

If true:
  → Set Status back to 'Implemented' (SP – Update item)
  → Send email to [Initiator] and DC-PlantRecords-Owners
      Subject: "MOC Cannot Be Closed – Reconciliation Incomplete [MOC Number]"
      Body:  "[MOC Number] cannot be closed until Record Reconciliation Complete
              is confirmed. Update all affected document records and mark
              reconciliation complete before closing this MOC."
```

### Notes

- This flow enforces a hard gate that the Manual governance in Phase 1 relies on training to enforce. Introduce in Phase 2 when the MOC process has bedded in.
- Reverting Status via Flow requires care — the flow itself will re-trigger on the update. Add a condition at the top: `if triggerOutputs body/Status is 'Closed' AND triggerOutputs body/RecordReconciliationComplete is 'No'` — otherwise the revert triggers the flow again endlessly. Use a flow-run context variable or set Status to a distinct intermediate value.

---

## Deployment Order

1. **Flow 2** (Known Limitations check) — simplest; low volume; good first test of the library column setup
2. **Flow 1** (MOC Reference check) — deploy once MOC Register list is live and engineers have been briefed
3. **Flow 3** (Review Due reminder) — deploy once Next Review Due dates have been populated across the document set
4. **Flow 4** (MOC Closure gate) — deploy at Phase 2 activation after governance culture is established

---

## Connection Requirements

- SharePoint connection: service account with Contribute access to Plant Records site (do not use a named user's credentials — use a dedicated Document Control service account)
- Outlook connection: same service account for sending notifications, or use a shared mailbox (`doccontrol@[domain]`)
- All flows run in the Document Control service account's Power Automate environment

See [[Flow Governance and Best Practices]] for environment and connection ownership standards.
