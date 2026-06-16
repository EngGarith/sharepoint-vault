---
tags: [document-libraries, versioning, sharepoint]
date: 2026-05-19
---

# Versioning

SharePoint versioning tracks every save to a document, enabling rollback and audit history.

## Version Types

| Type | Label | Visibility |
|------|-------|-----------|
| Major version | 1.0, 2.0, 3.0 | All users with Read access |
| Minor version (draft) | 1.1, 1.2 | Only contributors and above (by default) |

## Configuring Versioning

Library Settings → **Versioning settings**

| Setting | Options |
|---------|---------|
| Version history | Off / Major versions only / Major and minor versions |
| Major version limit | Number (blank = unlimited) |
| Minor version limit | Number (per major) |
| Require content approval | Yes / No — items in Pending/Draft until approved |
| Who sees draft items | Only editors / Any user who can read / Only approvers |
| Require check-out | Yes / No |

## Recommended Settings

For active document libraries:
- **Major and minor versions** enabled
- Major version limit: **500** (prevents storage bloat)
- Minor version limit: **10** per major
- Require check-out: **No** (co-authoring is preferred)

For policy/reference libraries where only approved content should be visible:
- Require content approval: **Yes**
- Who sees drafts: **Only approvers and contributors**

## Restoring a Version

Open document → **Version history** → hover over a version → **Restore**

## Deleting Version History

Version history → select versions → **Delete**
Bulk deletion via PowerShell:
```powershell
$file = Get-PnPFile -Url "/sites/site/library/file.docx" -AsListItem
$file.File.Versions | ForEach-Object { $_.DeleteObject() }
Invoke-PnPQuery
```

## Related

- [[Document Libraries Overview]]
- [[Library Configuration]]
