---
tags: [power-automate, flows, http, rest-api, sharepoint]
date: 2026-05-19
---

# SharePoint HTTP Connector

The "Send an HTTP request to SharePoint" action in Power Automate allows raw REST API calls against SharePoint — useful for operations not covered by the standard SharePoint connector actions.

## Action Settings

| Field | Value |
|-------|-------|
| Site Address | The SharePoint site URL |
| Method | GET / POST / PATCH / DELETE |
| Uri | The REST endpoint (relative to site, e.g., `/_api/web/lists`) |
| Headers | Usually: `Accept: application/json;odata=verbose` and `Content-Type: application/json;odata=verbose` |
| Body | JSON payload for POST/PATCH operations |

## Common REST Endpoints

### Get all lists on a site
```
GET /_api/web/lists
```

### Get items from a list with filter
```
GET /_api/web/lists/getbytitle('MyList')/items?$filter=Status eq 'Active'&$select=Id,Title,Status
```

### Create a list item
```
POST /_api/web/lists/getbytitle('MyList')/items
Body:
{
  "__metadata": { "type": "SP.Data.MyListListItem" },
  "Title": "New Item",
  "Status": "Pending"
}
```

### Update a list item
```
PATCH /_api/web/lists/getbytitle('MyList')/items(42)
Headers: IF-MATCH: * , X-HTTP-Method: MERGE
Body: { "__metadata": { "type": "SP.Data.MyListListItem" }, "Status": "Complete" }
```

### Get the list item entity type name (needed for POST body)
```
GET /_api/web/lists/getbytitle('MyList')?$select=ListItemEntityTypeFullName
```

## Parsing the Response

Use "Parse JSON" action with a schema generated from a sample response. The items array is at:
`body/d/results` (verbose) or `body/value` (minimalmetadata/nometadata).

## Related

- [[Power Automate Overview]]
- [[Common Flow Patterns]]
