---
tags: [power-automate, flows, patterns, sharepoint]
date: 2026-05-19
---

# Common Flow Patterns

## 1. Approval Workflow

Trigger: item created or modified → Start and wait for an approval → Update item status based on outcome.

```
Trigger: When item is created
  ↓
Start and wait for an approval
  → Type: Approve/Reject - First to respond
  → Assigned to: [Manager column]
  ↓
Condition: Outcome == "Approve"
  Yes → Update item: Status = "Approved"
  No  → Update item: Status = "Rejected", send rejection email
```

> For multi-stage approvals, chain multiple "Start and wait for an approval" actions sequentially.

## 2. Notification on New Item

Trigger: When item is created → Send an email / Post a Teams message.

```
Trigger: When an item is created
  ↓
Send an email (V2)
  To: [Notify group email]
  Subject: New item: [Title]
  Body: [Link to item]
```

## 3. Copy Approved Documents to Archive Library

```
Trigger: When item is modified
  ↓
Condition: Status == "Approved"
  ↓
Copy file: source library → archive library
  ↓
Update item: Archived = Yes (prevent re-triggering)
```

## 4. Sync List Items to Another Site

```
Trigger: When item is created
  ↓
Create item in [Target site] [Target list]
  → Map columns manually
```

For bidirectional sync, add a second flow on the target list — use a "Sync source" column to prevent infinite loops.

## 5. Send Reminder for Expiring Items

```
Trigger: Recurrence (daily)
  ↓
Get items: filter ExpiryDate le [addDays(utcNow(), 7)]
  ↓
Apply to each item:
  Send email to [Owner column]
```

## 6. Populate SharePoint from a Form (Microsoft Forms)

```
Trigger: When a new response is submitted (Forms connector)
  ↓
Get response details
  ↓
Create item in SharePoint list
  → Map form fields to list columns
```

## Avoiding Infinite Loops

When updating the item that triggered the flow, use a guard column (e.g., `FlowProcessed = Yes`) and add a condition at the start to skip if already processed.

## Related

- [[Power Automate Overview]]
- [[Flow Governance and Best Practices]]
- [[Lists Overview]]
- [[Document Libraries Overview]]
