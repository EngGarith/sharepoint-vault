---
tags: [sensitivity-labels, auto-labeling, purview, sharepoint]
date: 2026-05-19
---

# Auto-Labeling

Auto-labeling policies automatically classify and optionally protect SharePoint content based on sensitive information types or trainable classifiers — without user intervention.

## Two Modes

| Mode | Where | How |
|------|-------|-----|
| Client-side (Office apps) | Word, Excel, Outlook | Suggests or auto-applies label as user works |
| Service-side (Purview policy) | SharePoint, OneDrive, Exchange at rest | Scans existing and new content; applies label silently |

## Service-Side Auto-Labeling Policy (SharePoint)

Purview compliance portal → **Information protection** → **Auto-labeling**

### Steps
1. **Create policy** → choose label to apply
2. Define conditions (sensitive info types, e.g., Credit Card Numbers, NI numbers, or a trainable classifier)
3. Select locations — specific SharePoint sites or all SharePoint
4. Run in **Simulation mode** first to estimate impact
5. Review simulation results → turn policy **On**

## Simulation Mode

Always run in simulation before enabling. The simulation report shows:
- Number of items that would be labeled
- Which items match the conditions

## Considerations

- Service-side policies can label **millions** of existing files — test scope carefully.
- Items with a user-applied label at the same or higher sensitivity will not be overwritten by default.
- Processing can take hours to days depending on volume.

## Related

- [[Sensitivity Labels Overview]]
- [[Label Policies]]
- [[Applying Labels]]
