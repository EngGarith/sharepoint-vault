---
tags: [governance, sharepoint, overview]
date: 2026-05-19
---

# Governance Overview

SharePoint governance defines who can do what, when, and under what conditions. Good governance prevents sprawl, protects data, and makes the environment maintainable.

## Governance Pillars

| Pillar | Description |
|--------|-------------|
| Provisioning | Who can create sites, how, and with what template |
| Naming conventions | Consistent naming for sites, lists, columns |
| Permissions | Who administers access, acceptable sharing policies |
| External sharing | When and how content can be shared outside the org |
| Content lifecycle | Retention, archival, and deletion policies |
| Sensitivity and classification | Label taxonomy and mandatory classification rules |
| Flow and app governance | Who can build and own automations |

## Site Provisioning Policy

Decisions to document here:
- Can users self-service create sites? (Tenant setting: SharePoint Admin Center → **Settings** → **Site creation**)
- Is there an approval/request process?
- Which template is applied by default?
- Who is notified on site creation?

## Naming Conventions

| Object | Convention | Example |
|--------|-----------|---------|
| Site URL | `hyphenated-lowercase` | `finance-team`, `hr-policies` |
| Site display name | Title case | `Finance Team`, `HR Policies` |
| Library names | Title case, no spaces preferred | `ContractDocuments`, `HR Policies` |
| Column internal names | PascalCase, no spaces | `ProjectCode`, `ReviewDate` |
| Site columns group | `OrgName - Category` | `Contoso - HR` |
| Power Automate flows | `[Site] - [Trigger] - [Action]` | `Finance - Item Created - Approval` |

## External Sharing Rules

Document the agreed sharing policy per site classification:
- Public sites: Anyone links permitted
- Internal sites: Org-wide links only
- Confidential sites: No external sharing
- Highly Confidential: No sharing, sensitivity label encryption enforced

See [[External Sharing]] for configuration.

## Orphaned Sites and Flows

Schedule a quarterly review:
- Sites with no owners (SharePoint Admin Center → sort by "Primary admin" → look for blanks)
- Flows owned by departed staff (Power Platform Admin Center → **Resources** → **Flows**)

## Retention Policies

Retention is configured in Microsoft Purview, not SharePoint. Purview Admin Center → **Data lifecycle management** → **Retention policies**.
SharePoint locations can be included in retention policies to auto-delete or preserve content.

## Related

- [[Permissions Overview]]
- [[Sensitivity Labels Overview]]
- [[External Sharing]]
- [[Flow Governance and Best Practices]]
- [[Site Administration Overview]]
