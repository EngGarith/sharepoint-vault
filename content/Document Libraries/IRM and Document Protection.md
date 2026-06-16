---
tags: [document-libraries, irm, protection, sharepoint, purview]
date: 2026-05-19
---

# IRM and Document Protection

## Information Rights Management (IRM)

IRM encrypts documents when they are downloaded from a library. The encryption is enforced at the file level via Azure Rights Management (Azure RMS), regardless of where the file is moved.

### Enabling IRM on a Library

Library Settings → **Information Rights Management** → **Restrict permissions on this library on download**

Settings include:
- IRM policy title and description (shown to users)
- Allow viewers to print
- Allow viewers to run script and screen reader for vision-impaired users
- Stop restricting after a specific date
- Allow group protection (allows re-sharing within a defined AD group)

### Prerequisites

- Azure RMS must be activated in the tenant (Microsoft Purview Admin Center → **Information protection** → **Azure Information Protection**)
- Users must have an RMS-compatible client

## Sensitivity Labels vs. IRM

| | Sensitivity Labels | IRM |
|--|-------------------|-----|
| Scope | Document (anywhere) | Download from a specific library |
| User experience | Visible classification label | Transparent encryption |
| Co-authoring | Supported (M365 apps) | Supported with modern RMS |
| Granularity | Per document | Per library |
| Recommended | Yes — preferred modern approach | Use where sensitivity labels are not yet rolled out |

## Best Practice

For new deployments, prefer [[Sensitivity Labels Overview]] encryption over library-level IRM. IRM is useful as a backstop for high-sensitivity libraries.

## Related

- [[Document Libraries Overview]]
- [[Sensitivity Labels Overview]]
- [[Permissions Overview]]
