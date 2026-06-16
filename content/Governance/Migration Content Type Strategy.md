---
tags: [governance, migration, content-types, metadata, sharegate]
date: 2026-06-15
aliases: [Migration CT Strategy, File Migration Content Type Design]
---

# Migration Content Type Strategy

This document defines the end-to-end process for applying structured metadata and content types to files in transit from source systems (network drives, cloud storage, and other repositories) into SharePoint using ShareGate. The process runs as four sequential stages.

---

## Process Overview

```
Source Files
    │
    ▼
[Stage 1] Source Metadata Evaluation
    │  Inventory existing metadata per source type
    │  Score completeness; map to SP column equivalents
    ▼
[Stage 2] Content-Based Metadata Suggestion
    │  Analyze file content to infer missing metadata
    │  Propose additional columns per document pattern
    ▼
[Stage 3] Content Type Discovery & Matching
    │  Query CT Hub + target site galleries
    │  Match file patterns to existing CTs; identify gaps
    ▼
[Stage 4] Content Type Provisioning & ShareGate Configuration
       Create / modify CTs at correct scope
       Configure ShareGate mapping profiles
       Migrate with metadata applied in transit
```

---

## Stage 1 — Source Metadata Evaluation

### Objective
Understand what metadata already exists on source files so it can be preserved, transformed, or discarded during migration.

### Metadata by Source Type

| Source                              | Native Metadata Available                                                         | Notes                                                                                        |
| ----------------------------------- | --------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| Windows File Share (SMB)            | Date created, date modified, author (last saved), file extension, folder path     | No custom columns; folder hierarchy is the only taxonomy                                     |
| SharePoint Online (legacy site)     | All list columns, content type, created/modified by, version history              | Most rich — can carry over directly                                                          |
| SharePoint On-Prem                  | Same as SPO; check managed metadata vs local term store                           | Term store may not match tenant term store                                                   |
| OneDrive (personal/team)            | Core file properties; any custom columns set manually                             | Custom columns rare unless synced from SP library                                            |
| Google Drive / Box / Dropbox        | Owner, created date, last modified, labels (if used)                              | Use ShareGate's cloud connector; label taxonomy differs                                      |
| Network share → ShareGate discovery | Date created, date modified, size, path, extension, ShareGate-assigned categories | ShareGate can extract Office document properties (author, title, subject, keywords, company) |

### ShareGate Pre-Migration Analysis

Run a ShareGate **inventory report** before configuring any migration:

1. In ShareGate Desktop → **Migrate** → **Report** tab → select source
2. Export the **File Inventory** report (`.xlsx`) — captures path, size, type, dates, Office document properties
3. Use the **Duplicate Detection** report to identify redundant content early
4. Use the **Permissions** report if the source is SharePoint On-Prem

### Metadata Completeness Scorecard

For each source, complete the [[Migration Metadata Audit Template]] and score each metadata dimension:

| Dimension | Weight | Score (0–3) | Notes |
|-----------|--------|-------------|-------|
| Document owner / author | High | | |
| Department / business unit | High | | |
| Document type / category | High | | |
| Date created / published | Medium | | |
| Retention / record status | High | | |
| Project or matter reference | Medium | | |
| Sensitivity / classification | High | | |
| Approval / review status | Low | | |

Score key: 0 = absent, 1 = derivable from folder path only, 2 = present in file properties, 3 = present as structured metadata.

**Any dimension scored 0–1 moves to Stage 2 for content-based suggestion.**

---

## Stage 2 — Content-Based Metadata Suggestion

### Objective
Infer missing metadata from file content so that SharePoint columns can be populated at time of migration rather than after.

### Analysis Approaches

#### Option A — Microsoft Syntex (recommended for volume > 500 files)
- Configure a **Document Understanding model** in Syntex on a staging library
- Train classifiers for document types (Policy, Contract, Report, Procedure, etc.)
- Configure extractors to pull key values: department, project code, effective date, author name
- Syntex applies columns as files land in the staging library; ShareGate then migrates from staging to destination

#### Option B — PowerShell + Office Open XML (medium volumes)
- Extract `.docx`/`.xlsx` document properties via `[System.IO.Packaging.Package]` or the `PnP.PowerShell` `Get-PnPFile` pipeline
- Search document text for keyword patterns to infer category (regex on title page, header, subject field)
- Output a CSV mapping `SourcePath → SuggestedMetadata` for import into ShareGate's metadata mapping file

#### Option C — Manual content sampling (< 100 files or high-value exceptions)
- Open each file, review first page, assign metadata in a tracking spreadsheet
- Useful for contract or legal documents where accuracy outweighs volume

### Suggested Metadata Taxonomy

Align inferred metadata to these SharePoint column targets:

| Inferred Dimension | Suggested SP Column Type | Term Set (if managed metadata) |
|-------------------|--------------------------|-------------------------------|
| Document type | Managed Metadata | Document Types |
| Department / BU | Managed Metadata | Departments |
| Project / matter code | Single line of text | — |
| Effective date | Date | — |
| Retention category | Choice or Managed Metadata | Retention Schedule |
| Sensitivity tier | Choice | Confidential / Internal / Public |
| Record status | Choice | Draft / Approved / Archived |

Document the proposed term sets in [[Term Store]] before provisioning content types.

---

## Stage 3 — Content Type Discovery & Matching

### Objective
Before creating anything new, determine whether a suitable content type already exists at tenant, hub, or site level.

### Discovery Queries

#### Check the Content Type Hub
```
SharePoint Admin Center → Content services → Content type gallery
```
Filter by parent type = `Document`. Export the list to a working spreadsheet.

#### Check target site collections (PowerShell)
```powershell
Connect-PnPOnline -Url "https://tenant.sharepoint.com/sites/target-site" -Interactive
Get-PnPContentType | Select-Object Name, Id, Group, Description | Export-Csv ct-inventory.csv
```

Run against each destination site collection involved in the migration.

#### Check what columns each CT already carries
```powershell
$ct = Get-PnPContentType -Identity "Policy Document"
Get-PnPContentTypeField -ContentType $ct | Select-Object InternalName, Title, TypeAsString
```

### Matching Decision Matrix

For each identified document pattern from Stages 1–2, evaluate against discovered CTs:

| Condition | Action |
|-----------|--------|
| Existing CT covers ≥ 80% of required columns AND is published at right scope | **Use as-is** — map in ShareGate |
| Existing CT is close but missing 1–3 columns | **Modify existing CT** — add columns, republish |
| No existing CT matches the document pattern | **Create new CT** — go to Stage 4 |
| Existing CT exists but is scoped too low (library-local only) | **Re-scope** — recreate at site or hub level |

### Gap Analysis Output

Produce a CT Gap Register before proceeding:

| Document Pattern | Matched CT | Match % | Action | Owner | Target Scope |
|-----------------|-----------|---------|--------|-------|-------------|
| HR Policy | Policy Document | 90% | Use as-is | | CT Hub |
| Capital Project Brief | — | 0% | Create new | | Site Collection |
| Vendor Contract | Contract - General | 70% | Modify — add VendorCode column | | CT Hub |

---

## Stage 4 — Content Type Provisioning & ShareGate Configuration

### Objective
Ensure every document pattern has a correctly scoped, fully columned content type before the migration job runs.

### Scoping Decision Model

```
Does the CT need to appear on 3+ site collections?
    YES → Provision in the Content Type Hub → publish
    NO  →
        Does the CT need to appear on multiple libraries in one site?
            YES → Provision at site collection level
            NO  → Provision at library level (least preferred — not reusable)
```

For most migrations, default to **Content Type Hub** unless the document type is unique to a single department site.

### Creating or Modifying a Content Type

#### New CT (Content Type Hub)

1. Navigate to the Content Type Hub site → **Site Settings** → **Site content types** → **Create**
2. Parent: `Document` (for file-based types)
3. Group: use consistent naming — `[Org] - [Function]` e.g. `Contoso - Finance`
4. Add **site columns** — never create new columns directly on the CT; always use site columns for reusability
5. Site columns group naming: match CT group convention
6. Attach a default document template if applicable
7. **Manage publishing** → Publish → allow 24 h propagation or trigger manually

#### Modifying an Existing Published CT

1. Open the CT in the Content Type Hub gallery
2. Add the required site columns (create site columns first if they don't exist)
3. Save → **Manage publishing** → **Republish**
4. Verify propagation to subscriber sites before running migration

See [[Content Types]] for detailed step-by-step procedures.

### ShareGate Migration Profile Configuration

#### Step 1 — Map metadata columns
In ShareGate Desktop → **Migrate** → open the migration task → **Properties Mapping**:
- Map source file properties to destination SP columns
- Use the **Transform** option to reformat date strings, trim whitespace, or split concatenated values
- For managed metadata columns: map source text values to term labels (ShareGate resolves to GUIDs at write time)

#### Step 2 — Map content types
In the same task → **Content Type Mapping**:
- Map source CT name (or `Document` default) → destination CT name
- If source has no CT, use a **default CT mapping** rule based on file extension or folder path pattern

#### Step 3 — Apply metadata from external CSV (Stage 2 output)
For files where metadata was inferred in Stage 2 via PowerShell or Syntex export:
- ShareGate supports a **metadata mapping file** (CSV/Excel) keyed on source path
- Import via **Advanced Settings** → **Use metadata file**
- Columns in the CSV must match destination internal column names exactly

#### Step 4 — Run a pilot migration
- Select a representative 50–100 file sample per document pattern
- Migrate to a staging library
- Verify: correct CT applied, all columns populated, no blank required fields
- Review in **ShareGate Migration Report** → filter by errors/warnings

#### Step 5 — Production migration
- Schedule during low-usage windows (ShareGate throttling respects Microsoft limits)
- Enable **Incremental migration** for long-running jobs (re-runs only changed files)
- Post-migration: run ShareGate **Comparison Report** to confirm source/destination parity

---

## Governance Checkpoints

| Gate | Who Approves | Criteria |
|------|-------------|----------|
| Metadata taxonomy sign-off | Information Architecture owner | All suggested columns align to approved term sets |
| CT Gap Register review | SharePoint CoE | Gap analysis complete; all actions assigned |
| CT Provisioning complete | SharePoint admin | All CTs published and verified in subscriber sites |
| Pilot migration sign-off | Business stakeholders per source | Columns populated correctly on sample |
| Production migration go/no-go | Migration lead | Pilot pass rate ≥ 95%; no data loss in comparison report |

---

## Related Notes

- [[Content Types]] — Content type creation and publishing reference
- [[Term Store]] — Term set provisioning for managed metadata columns
- [[Columns and Metadata]] — Site column types and configuration
- [[Governance Overview]] — Naming conventions and provisioning policies
- [[Migration Metadata Audit Template]] — Per-source audit worksheet
