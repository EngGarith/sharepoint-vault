---
tags:
  - templates
  - governance
  - document-libraries
date: 2026-06-22
aliases:
  - Design Input Template
  - Doc Control Intake Form
---

# Document Control Design Input Template

*This form collects your group's requirements for the document control system. Your responses are used directly to configure SharePoint — the libraries, permissions, metadata columns, search settings, and any automated workflows built for your area.*

*You do not need to know how SharePoint works to fill this out. Describe how documents work in your area: how they're created, stored, found, owned, and managed. An honest description of how things work today is just as useful as a vision for the future. Leave any section blank if it does not apply.*

*A designer will review your responses, translate them into system configuration decisions, and follow up with questions before anything is built.*

---

## 1. About You

| Field | Your Answer |
|-------|-------------|
| Your name | |
| Department / team | |
| Your role | |
| People in your group who will use the system | |
| Groups or teams you're also speaking for | |
| Scope of this response | Single site / Multiple sites (list them) / Enterprise-wide |
| Date completed | |

---

## 2. Your Documents

*List the main types of documents your group creates, maintains, or relies on. A "document type" is a category that consistently serves the same purpose — for example: Operating Procedure, P&ID, Equipment Inspection Report.*

*If your documents follow a hierarchy — for example, enterprise-wide corporate procedures that apply to all sites, site-specific procedures that apply only at your location, and unit-specific procedures that govern a single process or piece of equipment — describe each level separately. This hierarchy directly shapes how the system is structured.*

| Document Type | Approx. Count | Primary Format | Scope | Criticality | Managed in Another System Today? |
|---------------|:------------:|----------------|-------|:-----------:|----------------------------------|
| | | PDF / Word / Drawing / Spreadsheet / Other | Enterprise-wide / Site-specific / Unit-specific | Routine / Important / Regulatory-Compliance / Safety-Critical | No / Yes — system: |
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |

**Anything else about your documents worth noting?**

&nbsp;

---

## 3. Where Documents Live Today

*Rather than a checklist, map what each current system or location actually holds. This tells us what needs to move, what can stay, and where integration is needed instead of migration.*

| Current System / Location | Document Types Stored There | Notes |
|--------------------------|----------------------------|-------|
| | | |
| | | |
| | | |
| | | |
| | | |

*Common examples: shared network drive, corporate intranet, email/Outlook, SAP, EHS management system, engineering DMS, existing SharePoint, OneDrive, paper/physical.*

**What works well about how documents are stored today?**

&nbsp;

**What causes friction, confusion, or risk with the current setup?**

&nbsp;

---

## 4. Ownership and Authority

*Every controlled document needs a named owner — the role responsible for its accuracy and for authorizing changes. This determines how SharePoint groups and approval processes are configured. Focus on roles rather than individual names.*

*If some of your documents are owned at the corporate or enterprise level (e.g., a corporate procedure published to all sites), describe the corporate owner role rather than a local one.*

| Document Type | Who Creates It | Who Authorizes / Approves It | Who Owns It Ongoing | Corporate or Site Owned? |
|---------------|---------------|------------------------------|---------------------|:------------------------:|
| | | | | Corporate / Site / Unit |
| | | | | Corporate / Site / Unit |
| | | | | Corporate / Site / Unit |
| | | | | Corporate / Site / Unit |
| | | | | Corporate / Site / Unit |

**What happens today when the person who created or owns a document leaves or changes roles?**

&nbsp;

**What should happen in the future?**

&nbsp;

**Are there documents that require sign-off from more than one person before they can be used or released?** If yes, describe the approval chain.

&nbsp;

---

## 5. Who Needs Access

*SharePoint permissions are configured at the group level. Knowing who reads, edits, and approves documents — and whether anyone outside the organization needs access — determines the permission structure.*

| Access Level | Who Needs It (role or team name) | Notes |
|--------------|----------------------------------|-------|
| Read only (view) | | |
| Edit / contribute | | |
| Approve / authorize | | |
| Restricted — no access | | |

**Are there documents within your group that only certain people should see — not the whole group?** If yes, describe.

&nbsp;

**Does anyone outside the organization — contractors, vendors, auditors, regulators — ever need access to your documents?** If yes, which document types and for what purpose?

&nbsp;

---

## 6. How Documents Change

*Understanding how revisions happen today — and how they should work — determines whether the system uses simple versioning, a formal approval workflow, or integration with your change management process.*

**How are changes to existing documents handled today?** *(Select all that apply)*

- [ ] Informal — someone edits the file directly; no record of what changed or why
- [ ] Email chain — changes are agreed via email before the file is updated
- [ ] Revision numbering — a new version is saved with an updated revision (e.g., Rev B)
- [ ] Formal sign-off — the updated version requires approval before it becomes active
- [ ] Management of Change (MOC) — changes go through a formal MOC process
- [ ] Other: ___________________________

**How should changes be handled in the future?** *(Describe the ideal process, even if it doesn't exist today)*

&nbsp;

**Do any of your documents have a scheduled review cycle** — reviewed at a set interval regardless of whether a change occurred? If yes, which types and how often?

&nbsp;

**Are any of your documents subject to mandatory regulatory review or renewal cycles** — for example, safety analyses with required revalidation intervals, permits that must be resubmitted, or training records with certification expiry dates? If yes, which types and what are the intervals?

&nbsp;

**What should happen to an old version once a new one is active?**

- [ ] Remain visible but clearly marked as superseded
- [ ] Moved to an archive location
- [ ] Deleted
- [ ] Other: ___________________________

---

## 7. Finding Documents

*How people search for documents determines what labels, filters, and search configuration the system needs. The goal is that someone who doesn't know a file's name can still find the right document quickly.*

**How do people in your group find a document today?** *(Select all that apply)*

- [ ] They already know the folder path or location
- [ ] They search by filename
- [ ] They ask a colleague
- [ ] They search within a specific system — which system: ___________________________
- [ ] They look it up by a tag number, equipment ID, or reference code
- [ ] Other: ___________________________

**If someone needed to find a document without knowing its name, what would they search by?**  
*(Examples: equipment tag, site or unit, document type, regulatory category, project number, revision level, date range)*

&nbsp;

**When you're looking at a list of documents, what column headings or labels are most useful for telling them apart?**

&nbsp;

---

## 8. Connections to Other Systems

*Documents rarely exist in isolation. Some systems hold documents as their primary record; others reference or consume them. Knowing the difference determines whether SharePoint replaces a system, integrates with it, or simply links to it.*

**Are any of your document types currently managed as the primary record in a specialist system** — for example, an EHS incident platform, a maintenance system, or an engineering drawing tool? If yes, describe: this determines whether we migrate content, build an integration, or leave it in place.

| Specialist System | Document Types It Owns as Primary Record | Integration or Migration? |
|------------------|------------------------------------------|:------------------------:|
| | | Migrate / Integrate / Leave in place |
| | | Migrate / Integrate / Leave in place |
| | | Migrate / Integrate / Leave in place |

**Do your documents reference or depend on records in other operational systems?**

| Other System | How It Relates to Your Documents |
|--------------|----------------------------------|
| | |
| | |

**Are there documents owned by another group that your group relies on daily?**  
*(For example: Engineering owns the P&IDs but Operations references them constantly.)*

&nbsp;

**Are there documents your group owns that other groups depend on?**

&nbsp;

---

## 9. Priorities and Concerns

*Your honest perspective here carries the most weight. These responses determine where the system design focuses first and what tradeoffs are made.*

**What are the 2–3 things that would make this system a genuine success for your group?**

1. &nbsp;
2. &nbsp;
3. &nbsp;

**What would cause your group to stop using the system or work around it?**

1. &nbsp;
2. &nbsp;

**Is there anything important about how your group works with documents that this form hasn't asked about?**

&nbsp;

---

## 10. Example Documents *(optional — but very helpful)*

*Sharing 2–3 representative documents — real or anonymized — lets the designer see your content firsthand. You don't need to sanitize everything; a representative structure is enough. Attach files, note a file path, or describe them below.*

| Document Name or Description | Why It Represents Your Group's Needs |
|-----------------------------|--------------------------------------|
| | |
| | |
| | |

---

*Return completed forms to the SharePoint project lead. Questions? Contact the design team before submitting — partial responses are welcome.*
