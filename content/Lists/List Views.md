---
tags: [lists, views, sharepoint]
date: 2026-05-19
---

# List Views

Views control which columns are displayed, in what order items appear, and what filtering/grouping is applied.

## View Types

| Type | Description |
|------|-------------|
| Standard | Table/grid — default |
| Datasheet | Inline editable grid (like Excel) |
| Calendar | Date-based items on a calendar grid |
| Gallery | Card-based tiles |
| Gantt | Timeline bars (date start/end required) |
| Board | Kanban-style lanes based on a choice column |

## Creating a View

List → **All Items** dropdown → **Create new view**

Settings:
- **Columns** — select and order displayed columns
- **Sort** — up to two sort columns
- **Filter** — conditions on column values
- **Group by** — group items by a column (up to 2 levels)
- **Totals** — count, sum, average on numeric columns
- **Limit** — items per page (default 30, max 1000)
- **Audience** — Public (all users) or Personal (only creator)

## Column Formatting

Individual columns can be formatted with JSON to apply conditional colors, icons, or custom display:

Column header → ⋯ → **Column settings** → **Format this column**

```json
{
  "elmType": "div",
  "style": {
    "color": { "operator": "?", "operands": [ {"operator": "==", "operands": ["[$Status]", "Overdue"]}, "red", "inherit"] }
  },
  "txtContent": "[$Status]"
}
```

## View Formatting (Row Formatting)

Format entire rows based on conditions:
List → **Format current view** → **Manage rules** or edit JSON directly.

## Addressing the 5,000-Item Threshold

Views that return more than 5,000 items without an indexed filter column will be blocked. Mitigations:
1. Add a filter on an indexed column to keep results under 5,000
2. Add column indexes (see [[List Design and Columns]])
3. Use date-range filters to paginate large datasets

## Related

- [[Lists Overview]]
- [[List Design and Columns]]
- [[Power Automate Overview]]
