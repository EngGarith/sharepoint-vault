---
tags: [power-automate, flows, sharepoint, overview]
date: 2026-05-19
---

# Power Automate Overview

Power Automate (formerly Microsoft Flow) enables automated workflows triggered by SharePoint events or schedules, connecting SharePoint to the broader Microsoft 365 ecosystem and third-party services.

## Flow Types

| Type | Description |
|------|-------------|
| Automated cloud flow | Triggered by an event (new item, file change, approval) |
| Instant cloud flow | Manually triggered from a button in SharePoint or the app |
| Scheduled cloud flow | Runs on a recurrence (hourly, daily, etc.) |
| Desktop flow | RPA — automates desktop/web UI interactions |

## Key SharePoint Triggers

| Trigger | Fires When |
|---------|-----------|
| When an item is created | New list item added |
| When an item is modified | Any field on an item changes |
| When an item is created or modified | Either of the above |
| When a file is created (properties only) | New file in a library |
| When a file is modified (properties only) | File or metadata updated |
| When a file is created or modified (properties only) | Either of the above |
| For a selected item | User clicks "Automate" button on a list item |
| For a selected file | User clicks "Automate" button on a file |

## Common SharePoint Actions

- Get item / Get items
- Create item / Update item / Delete item
- Get file properties / Update file properties
- Create file / Get file content
- Move/copy file or folder
- Send HTTP request to SharePoint (raw REST API calls)

## Key Notes

- [[Common Flow Patterns]] — Approval workflows, notifications, data sync
- [[Flow Governance and Best Practices]] — Ownership, naming, DLP policies
- [[SharePoint HTTP Connector]] — Advanced REST calls within flows

## Building a Basic Flow

1. SharePoint list/library → **Automate** → **Power Automate** → **Create a flow** (or go to make.powerautomate.com)
2. Select a trigger
3. Add actions
4. Test with a real item before enabling for production

## Related

- [[Lists Overview]]
- [[Document Libraries Overview]]
- [[Governance Overview]]
