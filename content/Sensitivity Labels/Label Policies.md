---
tags: [sensitivity-labels, label-policies, purview, sharepoint]
date: 2026-05-19
---

# Label Policies

Label policies control which users see which labels and what default/mandatory label behavior applies.

## Policy Settings

| Setting | Purpose |
|---------|---------|
| Users and groups | Who the policy is published to |
| Default label | Pre-applied label for new files/emails/sites |
| Require justification to change/remove | Audit trail for downgrading classification |
| Require label before saving/sending | Mandatory labeling enforcement |
| Link to help page | Custom URL shown to users in the label picker |

## Creating a Label Policy

Purview compliance portal → **Information protection** → **Label policies** → **Publish labels**

1. Select labels to publish
2. Select users/groups or publish to all
3. Configure default and mandatory settings
4. Name and review → **Submit**

## Policy Processing Time

New/changed policies take **up to 24 hours** to propagate to all clients. Use `Set-Label` / `Set-LabelPolicy` PowerShell commands to verify propagation.

## PowerShell Reference

```powershell
# Connect to Security & Compliance PowerShell
Connect-IPPSSession

# List all label policies
Get-LabelPolicy

# View policy details
Get-LabelPolicy -Identity "Contoso Policy" | Format-List
```

## Mandatory Labeling Considerations

- Enabling mandatory labeling for all users can cause friction if users lack training — phase in with a default label first.
- Exclude service accounts and system mailboxes from mandatory policies.

## Related

- [[Sensitivity Labels Overview]]
- [[Applying Labels]]
- [[Auto-Labeling]]
