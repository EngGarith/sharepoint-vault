---
tags: [search, result-sources, query-rules, sharepoint]
date: 2026-05-19
---

# Result Sources and Query Rules

## Result Sources

A result source defines **where** and **what** to search — a scoped query applied before the user's search terms.

### Built-In Result Sources

| Name | Scope |
|------|-------|
| Local SharePoint Results | All SharePoint content accessible to the user |
| Documents | Files only |
| Local People Results | People directory |
| Conversations | Yammer/Teams conversations |

### Creating a Custom Result Source

SharePoint Admin Center → **Search** → **Manage result sources** → **New Result Source**

1. Name and protocol (SharePoint, OpenSearch, Exchange)
2. Set query transform — e.g., restrict to a specific site: `{searchTerms} Path:https://tenant.sharepoint.com/sites/finance`
3. Set credentials if needed
4. Save

Result sources created at the tenant level are available to all sites; site-level result sources are local.

## Query Rules

Query rules fire when a query matches specified conditions and can:
- **Promote results** (Best Bets) — pin a specific result to the top
- **Add result blocks** — insert a secondary set of results from a different source
- **Change ranking** — boost or demote results

### Creating a Query Rule

SharePoint Admin Center → **Search** → **Manage query rules** → **New Query Rule**

1. Define the condition (query matches, query contains an action term, result type matches)
2. Define the action (promoted result URL and title, result block, or change ranking)
3. Set publishing window (date range for seasonal promotions)

### Example: HR Policy Best Bet

Condition: Query contains "parental leave"
Action: Promoted result → `https://tenant.sharepoint.com/sites/HR/SitePages/Parental-Leave-Policy.aspx`

## Related

- [[Search Overview]]
- [[Managed Properties and Crawled Properties]]
