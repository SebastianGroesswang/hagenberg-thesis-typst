# Bachelor Thesis Time Plan

**Official deadline:** End of May 2027  
**Internal deadline:** 1 May 2027 (complete draft, code frozen, all results ready)

---

## Overview

| Phase | Period | Primary focus |
|---|---|---|
| Foundation | Late Sep – Oct 2026 | Scope, literature, supervisor alignment |
| Design & learning | Nov – Dec 2026 | System design, fundamentals chapter, baseline prototype |
| Implementation | Jan – Feb 2027 | Core logic, filtering, ranking, tests |
| Evaluation & writing | Mar – early Apr 2027 | Results, analysis, complete thesis draft |
| Revision | Mid Apr – 1 May 2027 | Supervisor feedback, polish, formatting |
| Finalisation | May 2027 | Final checks and submission |

---

## Month-by-Month Plan

### Late September – October 2026
**Goal:** Solid foundation and narrow scope

- [ ] Confirm exact submission date with programme
- [x] Set up Typst project structure and bibliography (BibTeX in `thesis/`)
- [ ] Arrange kickoff meeting with supervisor
- [ ] Obtain sample open-search input data and understand the format
- [ ] Build personal glossary (proteomics, mass spectrometry, PTMs, open search, localisation)
- [ ] Read 5–10 core sources (introductory proteomics + open search + PTMiner/PTM-Shepherd)
- [ ] Draft Chapter 1 (introduction, problem, goals, scope)
- [ ] Draft Chapter 2 sections 2.1–2.3 (biology, proteomics workflow, open search)
- [ ] Create decision log and literature matrix

**Deliverable end of October:**  
One-page project specification + Chapter 1 draft + partial Chapter 2 draft + glossary + initial bibliography

---

### November 2026
**Goal:** Clear design and stronger fundamentals

- [ ] Finalise requirements: input format, output format, supported modifications, scope boundaries
- [ ] Design architecture and data model (diagrams for Chapter 3)
- [ ] Define candidate-generation and ranking approach
- [ ] Continue Chapter 2: open search, annotation, localisation, Unimod, related tools
- [ ] Start baseline implementation: parse input, load modification database, basic mass matching
- [ ] Create small synthetic test cases with known expected results

**Deliverable end of November:**  
Chapter 1 complete, Chapter 2 ~70% complete, Chapter 3 outline + initial diagrams, working baseline prototype

---

### December 2026
**Goal:** Working prototype and design chapter

- [ ] Implement residue and terminus specificity filtering
- [ ] Implement basic ranking and confidence classification
- [ ] Produce ranked output (CSV/TSV or similar)
- [ ] Write Chapter 3 (concept/design): requirements, architecture, algorithm, data model
- [ ] Refine Chapter 2 based on supervisor feedback and deeper understanding

**Deliverable end of December:**  
Baseline tool end-to-end (input → ranked output), Chapter 3 draft, Chapter 2 near-complete

---

### January 2027
**Goal:** Core logic complete and testable

- [ ] Improve ranking model (mass error, site compatibility, optional localisation evidence)
- [ ] Handle edge cases: no match, multiple near-tied candidates, invalid input
- [ ] Implement unit tests and integration tests
- [ ] Create synthetic benchmark dataset with known modifications
- [ ] Begin Chapter 4 structure (implementation, tests, analyses)

**Deliverable end of January:**  
Feature-complete core tool, test suite, initial Chapter 4 draft (implementation section)

---

### February 2027
**Goal:** Evaluation setup and first results

- [ ] Define evaluation metrics (top-1/top-k accuracy, coverage, unresolved rate, etc.)
- [ ] Run evaluation on synthetic data and, if available, real data with reference annotations
- [ ] Create result tables and figures (candidate distributions, mass-error plots, confusion analysis)
- [ ] Write Chapter 4 evaluation and results sections
- [ ] Identify and document limitations and failure cases

**Deliverable end of February:**  
Evaluation complete, Chapter 4 ~80% complete (implementation + results), initial limitations section

---

### March 2027
**Goal:** Complete thesis draft

- [ ] Finalise all results and figures
- [ ] Write Chapter 5 (summary, contributions, limitations, future work)
- [ ] Complete Chapter 2 (fundamentals and state of the art)
- [ ] Ensure all chapters are coherent and cross-referenced
- [ ] Write Kurzfassung (German) and Abstract (English) as direct translations
- [ ] Full proofread of all chapters

**Deliverable end of March:**  
Complete first draft of all chapters, all figures and tables in place, bibliography complete

---

### April 2027
**Goal:** Supervisor feedback, revision, and polish

- [ ] Send complete draft to supervisor early in April
- [ ] Incorporate feedback on content, structure, and clarity
- [ ] Check all citations and references
- [ ] Verify that all requirements from the programme are met (length, structure, formal elements)
- [ ] Final technical check: code, data, reproducibility
- [ ] Second proofread for language, grammar, and style

**Deliverable by 1 May:**  
Revised, near-final thesis; code frozen; no major structural changes planned

---

### May 2027
**Goal:** Finalisation and submission

- [ ] Final formatting check (headings, figures, tables, captions, page layout)
- [ ] Verify bibliography: all cited works present, consistent style, correct DOIs
- [ ] Final check of Kurzfassung and Abstract (ensure they are direct translations)
- [ ] Prepare submission package according to programme instructions
- [ ] Optional: mock defence or practice presentation if required
- [ ] **Submit thesis before the end-of-May deadline**

---

## Critical Milestones

| Date | Milestone | Status |
|---|---|---|
| End of Oct 2026 | Clear scope and supervisor alignment | ⬜ |
| End of Dec 2026 | Working baseline prototype | ⬜ |
| End of Feb 2027 | Evaluation results available | ⬜ |
| End of Mar 2027 | Complete thesis draft | ⬜ |
| 1 May 2027 | Revised, near-final thesis (internal deadline) | ⬜ |
| End of May 2027 | Official submission | ⬜ |

---

## Weekly Rhythm

### During semester (Oct–Feb)

- **1–2 hours:** reading and glossary/literature work
- **2–4 hours:** implementation or writing
- **Short note after each session:** what you did, what's next, any blockers

### During writing-heavy months (Mar–Apr)

- **3–5 hours per week:** focused writing sessions
- Regular supervisor check-ins if possible
- Aim to complete one substantial section per week

### During final month (May)

- Focus on polishing, not major rewrites
- Final checks and submission preparation

---

## Notes

- Adjust time estimates based on actual progress and coursework load
- Build in buffer time for unexpected delays (illness, technical issues, supervisor availability)
- Keep decision log and meeting notes up to date
- Revisit and adjust this plan monthly based on actual progress

---

**Last updated:** 2026-09-29