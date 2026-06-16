---
tags: [index, governance, vault-meta]
date: 2026-05-27
aliases: [Color Legend, Graph Legend]
---

# Graph View Color Legend

The Obsidian Graph View for this vault uses color-coded nodes to make the domain structure of the knowledge base immediately readable at a glance. Each folder (and the home note) is assigned a distinct color with a logical basis — colors within the same family indicate related domains.

To open the Graph View: click the graph icon in the left sidebar, or use `Cmd+G` (Mac) / `Ctrl+G` (Windows).

---

## Color Map

| Color Name  | Hex       | Domain              | Graph Query                        |
| ----------- | --------- | ------------------- | ---------------------------------- |
| Bright Gold | `#FFD700` | Home / Index        | `file:"SharePoint Administration"` |
| Hot Pink    | `#FF4DAF` | Assessments         | `path:Assessments`                 |
| Dark Red    | `#B52525` | Governance          | `path:Governance`                  |
| Coral Red   | `#E03232` | Permissions         | `path:Permissions`                 |
| Purple      | `#9B4DCA` | Sensitivity Labels  | `path:"Sensitivity Labels"`        |
| Indigo      | `#4444D4` | Hub Sites           | `path:"Hub Sites"`                 |
| Slate Blue  | `#607BA0` | Site Administration | `path:"Site Administration"`       |
| Sky Blue    | `#3399E0` | Document Libraries  | `path:"Document Libraries"`        |
| Teal        | `#1AAAAA` | Lists               | `path:Lists`                       |
| Orange      | `#E08020` | Templates           | `path:Templates`                   |
| Amber       | `#D4A020` | Search              | `path:Search`                      |
| Green       | `#22C05E` | Power Automate      | `path:"Power Automate"`            |
| Gray        | `#909090` | Daily Notes         | `path:"Daily Notes"`               |

---

## Domain Color Logic

Colors are not arbitrary — they are grouped by domain family so that related topics cluster visually in both the graph and in memory.

### Red family — Security & Policy
The red spectrum covers the domains that govern *who can do what* and *under what rules*.

- **Dark Red** (`Governance`) — The deepest red, representing the overarching policy authority that sits above all other domains. Naming conventions, provisioning policies, and lifecycle rules live here.
- **Coral Red** (`Permissions`) — Brighter red, representing active, operational security controls: groups, inheritance, sharing settings, and access levels.
- **Purple** (`Sensitivity Labels`) — Purple bridges security and compliance. Microsoft Purview's own brand color family, representing classification, encryption, and data protection.

### Blue family — Architecture & Structure
The blue spectrum covers the domains that define *how the environment is built and administered*.

- **Indigo** (`Hub Sites`) — The deepest blue, representing the structural backbone of the tenant: the hub hierarchy that connects sites and scopes navigation and search.
- **Slate Blue** (`Site Administration`) — Mid-range blue for the operational management layer: site creation, settings, lifecycle, quotas.
- **Sky Blue** (`Document Libraries`) — Bright, accessible blue for the primary content store that most users interact with daily.

### Teal — Data & Lists
- **Teal** (`Lists`) — A sibling to Document Libraries but distinctly different: structured data rather than files. Teal sits between blue (libraries) and green (automation) in the spectrum, reflecting that lists often feed workflows.

### Warm neutrals — Content Architecture
- **Orange** (`Templates`) — Warm and structural. Templates are the reusable frameworks (site scripts, content types, list templates) that give the environment consistency and shape.
- **Amber** (`Search`) — Discovery and illumination. Amber/yellow evokes a searchlight or a finding — the Term Store, managed properties, result sources, and query rules that surface information.

### Green — Automation
- **Green** (`Power Automate`) — Green = active processes in motion. Flows, triggers, connectors, and automation patterns that make SharePoint work dynamically.

### Accent colors — Special nodes
- **Bright Gold** (`SharePoint Administration.md`) — The brightest node in the graph; the home note and vault entry point. Gold distinguishes the index from all topic clusters.
- **Hot Pink** (`Assessments`) — Deliberately distinct from every other domain. The assessment layer is a meta-layer that *observes and scores* all other domains — it should stand visually apart while still showing its connections radiating into every topic folder.

### Gray — Temporal content
- **Gray** (`Daily Notes`) — De-emphasized relative to reference content. Daily log entries are temporary and contextual; gray signals lower structural weight in the knowledge graph.

---

## Reading the Graph

**Clusters:** Notes in the same folder share a color and will tend to cluster together because they link to each other and to the same overview notes. The graph's layout algorithm places highly connected notes closer together.

**Hub nodes:** The largest, most connected nodes in the graph are the Overview notes (e.g. `Permissions Overview`, `Governance Overview`) and the `Checklist Index` — these act as hubs within each color cluster.

**Cross-domain links:** The `[[wikilinks]]` between topic areas are visible as edges crossing between color clusters. These cross-cluster connections are where the most valuable insight lives — they show how Governance connects to Permissions, how Sensitivity Labels connect to Document Libraries, and how the Assessments layer reaches into every domain simultaneously.

**The Assessments cluster** will appear as a densely connected pink node group with edges radiating outward into every other color cluster, reflecting the fact that each checklist links to relevant topic notes across the vault.

---

## Configuration

Color groups are defined in `.obsidian/graph.json` under the `colorGroups` array. Each group uses an Obsidian path or file query and a packed RGB integer value. Groups are evaluated in order — the first matching group wins.

To adjust a color: open `.obsidian/graph.json`, locate the relevant group, and replace the `rgb` value. The packed integer is calculated as `(R × 65536) + (G × 256) + B`.

---

## Related

- [[SharePoint Administration]] — vault home note
- [[Checklist Index]] — assessment suite index
