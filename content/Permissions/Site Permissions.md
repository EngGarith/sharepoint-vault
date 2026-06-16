---
tags: [permissions, site-permissions, sharepoint]
date: 2026-05-19
---

# Site Permissions

Managing who has access to a SharePoint site.

## Accessing Site Permissions

- **Modern sites:** Site → ⚙ → **Site permissions** (right panel)
- **Classic admin:** Site Settings → **People and Groups** or **Site Permissions**

## Adding a User or Group

1. Open **Site Permissions**
2. Click **Share site** or **Invite people**
3. Search for a user or AAD group
4. Select the permission level (Owner / Member / Visitor or a custom level)
5. Optionally uncheck "Send email" if notification is not needed

## Best Practice: Use AAD Groups, Not Individual Users

Assign Azure AD (Microsoft 365) groups to SharePoint groups rather than adding individual users. This means membership changes are managed in AAD/Entra ID without touching SharePoint.

```
AAD Group "Marketing Team" → added to "Marketing Site Members" SharePoint group → assigned Edit permission level
```

## Viewing Current Permissions

Site Settings → **Site Permissions** → **Check Permissions** — enter a name to see all permissions a user has, including group memberships.

## Removing Access

- Remove from the SharePoint group, or
- Remove from the AAD group if managing via AAD groups

## Related

- [[Permissions Overview]]
- [[Permission Levels]]
- [[Inheritance and Unique Permissions]]
- [[External Sharing]]
