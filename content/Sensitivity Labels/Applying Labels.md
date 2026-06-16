---
tags: [sensitivity-labels, applying-labels, sharepoint, purview]
date: 2026-05-19
---

# Applying Labels

## Applying a Label to a SharePoint Site

1. SharePoint Admin Center → **Sites** → **Active sites**
2. Select the site → **Edit** (pencil icon) on the **Sensitivity** column
3. Choose a label → **Save**

Or at site creation time in the site creation wizard (if the label is published to the creator).

> Applying a label to a site does not retroactively label existing documents in that site. It only controls the site-level settings defined in the label (privacy, sharing, device access).

## Applying a Label to a Document

**In SharePoint (browser):**
1. Select the document → **⋯** → **Details**
2. **Sensitivity** field → select a label

**In Office apps (Word, Excel, etc.):**
- **Home** ribbon → **Sensitivity** button → select a label

**In the Purview File activity page:**
- Retroactively applying labels to many documents should be done via [[Auto-Labeling]] policies.

## Default Library Label

A library can be configured to apply a default sensitivity label to all new documents:
Library Settings → **Default sensitivity labels** → select a label

## Setting a Default Site Label via PowerShell

```powershell
# PnP PowerShell
Set-PnPSite -Identity https://tenant.sharepoint.com/sites/sitename -SensitivityLabel "<label-GUID>"
```

## Inheritance Behavior

- Documents do not automatically inherit the site's label.
- If a user manually labels a document at a higher classification than the site, the document label takes precedence for encryption purposes.

## Related

- [[Sensitivity Labels Overview]]
- [[Label Policies]]
- [[Auto-Labeling]]
- [[Document Libraries Overview]]
