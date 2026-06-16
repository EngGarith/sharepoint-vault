---
tags: [power-automate, governance, flows, sharepoint]
date: 2026-05-19
---

# Flow Governance and Best Practices

## Naming Conventions

Use a consistent naming pattern so flows are discoverable in the Power Platform Admin Center:

```
[Site/Team] - [Trigger] - [Action]
e.g. "Finance - Item Created - Approval Workflow"
     "HR - Daily - Expiry Reminder"
```

## Ownership

- Every flow must have a named **owner** who is a current employee.
- Use a **service account** or **shared mailbox** as the connection account for flows that must survive staff turnover — flows run under the connection owner's credentials.
- Add at least one **co-owner** for every business-critical flow.

## DLP (Data Loss Prevention) Policies

Power Platform Admin Center → **Policies** → **Data policies**

DLP policies group connectors into **Business**, **Non-business**, and **Blocked** buckets. Connectors in different buckets cannot be used in the same flow.

Ensure SharePoint and the other connectors needed by your flows are in the same bucket.

## Error Handling

- Configure **Run After** on failure branches to send alerts when a flow fails.
- Use the **Scope** action to group steps and add a catch block:

```
Scope: Try
  [main actions]
Scope: Catch (run after: failed, skipped, timed out)
  Send email: Flow failed — [workflow URL]
```

## Throttling and Limits

| Limit | Value |
|-------|-------|
| Actions per 24h (per licensed flow) | 250,000 (Flow plan) |
| Concurrent runs | 10–50 depending on plan |
| Get items max without pagination | 100 (use `$top` and pagination) |
| HTTP request timeout | 120 seconds |

Use **pagination** in "Get items" for lists with >100 items:
Settings on the Get items action → **Pagination** → **On** → set threshold.

## Solution-Based Flows (Recommended)

Store flows in **Solutions** (Power Platform solutions) rather than in "My flows":
- Portable between environments
- Supports ALM (dev → test → production pipeline)
- Owned by the solution, not an individual

## Related

- [[Power Automate Overview]]
- [[Common Flow Patterns]]
- [[Governance Overview]]
