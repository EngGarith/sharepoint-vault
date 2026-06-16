---
tags: [lists, columns, design, sharepoint]
date: 2026-05-19
---

# List Design and Columns

## Column Types Reference

See [[Columns and Metadata]] for the full type reference — all column types available in document libraries are also available in lists.

## List-Specific Column Patterns

### Lookup Columns

Pull a value from another list on the same site. Useful for shared reference data (e.g., a "Departments" list looked up from an "Employees" list).

- Limit cascading lookups (lookup → lookup → lookup) — query performance degrades.
- Lookup columns across site collections are not supported — use Managed Metadata or a copied choice column instead.

### Calculated Columns

Formula-based read-only columns. Use SharePoint formula syntax (similar to Excel):
```
=[DueDate]-[CreatedDate]          → number of days
=IF([Status]="Complete","✓","✗")  → conditional display
=TEXT([StartDate],"yyyy-MM-dd")   → formatted date string
```

Calculated columns cannot reference other lists or use today's date dynamically (use Power Automate for date calculations instead).

### Column Validation

List Settings → column → **Column Validation** — formula must return TRUE for the value to be accepted:
```
=[EndDate]>=[StartDate]
```

List-level validation: List Settings → **Validation settings** — applies to the whole item on save.

## Organizing Columns with Column Groups

Site columns can be assigned to a named group for discoverability. Use group names like `Contoso - HR`, `Contoso - Finance` to differentiate from Microsoft's built-in groups.

## Indexing Columns

Index any column you sort or filter by in views with 5,000+ items:
List Settings → **Indexed columns** → **Create a new index**

## Related

- [[Lists Overview]]
- [[List Views]]
- [[Content Types]]
- [[Term Store]]
