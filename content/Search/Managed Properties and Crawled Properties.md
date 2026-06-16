---
tags: [search, managed-properties, crawled-properties, sharepoint]
date: 2026-05-19
---

# Managed Properties and Crawled Properties

## Crawled Properties

Raw metadata extracted from items during a crawl. Naming convention: `ows_<ColumnInternalName>` for SharePoint columns.

Example: a library column named "Project Code" becomes crawled property `ows_ProjectCode`.

## Managed Properties

Processed, queryable fields mapped from crawled properties. These are what you reference in KQL queries and result sources.

### Property Attributes

| Attribute | Description |
|-----------|-------------|
| Searchable | Full-text search on this property |
| Queryable | Can be used in KQL: `PropertyName:value` |
| Retrievable | Returned in search result items |
| Refinable | Available as a filter/refiner panel option |
| Sortable | Can sort results by this property |
| Alias | Alternate name for the managed property |

## Mapping a Custom Column to a Managed Property

When you add a new column to a library, SharePoint auto-creates a crawled property. You must then map it to a managed property (or create a new one) for it to be searchable/refinable.

SharePoint Admin Center → **Search** → **Search schema** → **Managed properties** → find or create the property → **Mappings to crawled properties** → add `ows_<YourColumnName>`

> After mapping, trigger a full recrawl or wait for the next scheduled crawl before the property is available.

## Naming Convention for Custom Managed Properties

Use a consistent prefix to distinguish custom properties from built-in ones:
```
Contoso_ProjectCode
Contoso_Department
```

## Useful Built-In Managed Properties

| Property | Description |
|----------|-------------|
| `Title` | Item/document title |
| `Author` | Created by |
| `ModifiedBy` | Last modified by |
| `ContentType` | Content type name |
| `SiteName` | Site URL |
| `Path` | Full URL to the item |
| `LastModifiedTime` | Date last modified |
| `owstaxIdMetadataAllTagsInfo` | All managed metadata tags |

## KQL Example

```
ContentType:"Contract" AND Contoso_Department:"Finance"
```

## Related

- [[Search Overview]]
- [[Term Store]]
- [[Result Sources and Query Rules]]
