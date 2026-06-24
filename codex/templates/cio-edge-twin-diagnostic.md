# The CIO Edge Twin Diagnostic (with the Readiness Gate Protocol)

> Template, Appendix F. Ten governance questions a CEO hands the CIO and CISO *before* funding an Edge Twin, to evaluate whether the system can be governed, secured, and audited. Score each Red, Amber, or Green under the **Readiness Gate Protocol (v24)**: any **Red** rating across Questions 5, 6, 7, or 8 (Leakage, Identity, Reversibility, Accountability) represents an absolute block. In the v24 wording, "The build must be legally halted until the technical architecture is reinforced to satisfy these essential SHAPE controls. Skip them, and you have built the PocketOS pattern: a high-tempo drivetrain with no structural chassis."

**Source:** *The Organizational Singularity*, OS Outline v25, Appendix F. Salim Ismail with contributors, June 2026.

---

## Header

| Field | Value |
|---|---|
| Company | _____________________________________ |
| Proposed Edge Twin name | _____________________________________ |
| First workflow targeted | _____________________________________ |
| CIO completing this diagnostic | _____________________________________ |
| CISO consulted | _____________________________________ |
| Date | _____________________________________ |
| Funding decision date | _____________________________________ |

---

## Scoring Legend

- **Green**, the answer is in place, in writing, and demonstrable today.
- **Amber**, the answer is partial; gaps named, owner assigned, deadline set.
- **Red**, the answer is missing or wrong.

**Gate rule.** Any **Red** on **Questions 5, 6, 7, or 8** legally halts the build until it turns Amber or Green. These four are the SHAPE controls (Leakage, Identity, Reversibility, Accountability).

---

## The Ten Questions

### 1. What is the Edge Twin allowed to do?

Make autonomy explicit, never implied. Every agent carries an **Autonomy Tier** in its specification, and the twin graduates through the sequenced **Decision Handover Waves** of REWRITE Step 5 (Wave 1 low-risk, Wave 2 medium-complexity, Wave 3 higher-judgment). Each wave proves before the next begins.

*Verbatim discipline note: "Do not invent a new ladder; use the Tiers and Waves you have."*

| Score |  |
|---|---|
| [ ] Green |  |
| [ ] Amber |  |
| [ ] Red |  |

Notes / evidence / gap owner:

```
[Your notes here]
```

---

### 2. What is the absolute source of truth?

**Core operational systems remain the truth.** If the Edge Twin and the ERP conflict, the ERP wins. The twin is the reasoning, simulation, and orchestration layer; in the v24 wording, it is "never a secondary system of record, and it is never allowed to become one early."

| Score |  |
|---|---|
| [ ] Green |  |
| [ ] Amber |  |
| [ ] Red |  |

Notes / evidence / gap owner:

```
[Your notes here]
```

---

### 3. What specific data does the twin need, and why?

Require a completed **Workflow Data Manifest** (REWRITE Step 3) mapping every source, read/write lanes, sensitivity tiers, retention parameters, and the named human data owner who authorizes access. Every data object must answer the six data questions from Chapter 4.

**The rule is binary.** If you cannot state why a workflow requires a field, the twin does not get access.

| Score |  |
|---|---|
| [ ] Green |  |
| [ ] Amber |  |
| [ ] Red |  |

Notes / evidence / gap owner:

```
[Your notes here]
```

Manifest reference: `templates/workflow-data-manifest-template.md`

---

### 4. Does the twin train on our data?

**By default, no.** The twin retrieves governed data at runtime and learns from workflow traces, human corrections, and simulations, not from possession of the data estate. Pin training rights, model isolation, retention parameters, and deletion rights in writing with the vendor.

**Verbatim: "access and training are different contracts."** Pin both:

- Retention
- Training rights
- Deletion rights
- Audit rights
- Model isolation

| Score |  |
|---|---|
| [ ] Green |  |
| [ ] Amber |  |
| [ ] Red |  |

Notes / evidence / gap owner:

```
[Your notes here]
```

---

### 5. How do we prevent security leakage? *(SHAPE control: Leakage)*

**Permissions must be enforced outside the model layer, before data retrieval and action.** Telling a model "do not reveal confidential information" is not an infrastructure control. The defense is the hardcoded **Permission Envelope** plus the GOVERN/ASSURE plane catching the OWASP application failure modes:

- Prompt injection
- Sensitive-information disclosure
- Insecure output handling
- Excessive agency

| Score |  |
|---|---|
| [ ] Green |  |
| [ ] Amber |  |
| [ ] Red |  |

Notes / evidence / gap owner:

```
[Your notes here]
```

*Any Red here legally halts the build.*

---

### 6. How is workload identity handled? *(SHAPE control: Identity)*

The twin must get its own **scoped workload identity**, never an employee's credentials, an admin token, or a shared API key. Enforce short-lived credentials, per-action logging, immediate revocation capability, and strict approval thresholds.

**The CISO's test.** The CISO must be able to trace exactly what the twin accessed, why, and what it executed next via the **Searchable Logs** pillar with correlation IDs.

| Score |  |
|---|---|
| [ ] Green |  |
| [ ] Amber |  |
| [ ] Red |  |

Notes / evidence / gap owner:

```
[Your notes here]
```

*Any Red here legally halts the build.*

---

### 7. What happens when the twin is wrong? *(SHAPE control: Reversibility)*

Every workflow must ship with:

- Automated citation log
- Decision rationale
- Human-approval threshold (for the relevant Autonomy Tier and workflow class)
- Clear rollback path
- Audit log
- Exception queue

The **Granular Rollback** and **Human Review Queue** pillars make mistakes recoverable and accountable. The legacy workflow stays active as a fallback until deprecation.

| Score |  |
|---|---|
| [ ] Green |  |
| [ ] Amber |  |
| [ ] Red |  |

Notes / evidence / gap owner:

```
[Your notes here]
```

*Any Red here legally halts the build.*

---

### 8. Who is held humanly accountable? *(SHAPE control: Accountability)*

**A named human validator, always.** This is the operationalization of the **Fiduciary Wedge**: anything touching money, legal text, or a customer-of-record routes to a person. The human shifts from doing every transaction to governing the workflow (validator, not gatekeeper).

Name the roles before launch:

- Business-process owner: _____________________________________
- Data owner: _____________________________________
- Risk owner: _____________________________________
- Human supervisor: _____________________________________
- CAIO (model behavior): _____________________________________
- Security owner (threat model): _____________________________________

| Score |  |
|---|---|
| [ ] Green |  |
| [ ] Amber |  |
| [ ] Red |  |

Notes / evidence / gap owner:

```
[Your notes here]
```

*Any Red here legally halts the build.*

---

### 9. What is the smallest safe first workflow?

Pick the workflow with the **highest ratio of coordination tax to judgment work** that is also:

- High-volume
- Rule-clear
- Measurable
- Reversible
- Low regulatory exposure
- Historical cases available

**Good first candidates.** Invoice-exception routing. Support triage. Order-status exceptions. Renewal-risk detection.

**Bad first candidates.** Hiring and firing. Credit approvals. Strategic-account pricing. Core financial reporting. Anything safety-critical.

| Score |  |
|---|---|
| [ ] Green |  |
| [ ] Amber |  |
| [ ] Red |  |

Notes / evidence / gap owner:

```
[Your notes here]
```

---

### 10. How will we measure success?

Define benchmarks **before** the parallel run begins (REWRITE Step 5):

- Cycle time
- Error rate
- Cost per transaction
- Policy exceptions
- Experience scores (customer or operator)

**One metric sits above the rest.** Verbatim: "the **human-override rate must systematically fall over time.** If it doesn't, you have workflow automation with a chat box, not a twin."

Reference: `references/cold-start-learning-feeds.md`

| Score |  |
|---|---|
| [ ] Green |  |
| [ ] Amber |  |
| [ ] Red |  |

Notes / evidence / gap owner:

```
[Your notes here]
```

---

## The Readiness Gate Protocol (v24)

| Question | Score (R/A/G) | Halts build? |
|---|---|---|
| 1, Allowed to do (Autonomy Tier + Waves) |  | No |
| 2, Source of truth (ERP wins) |  | No |
| 3, Data needed, why (Manifest + Six Questions) |  | No |
| 4, Train on data (access vs. training) |  | No |
| **5, Leakage (SHAPE control)** |  | **Yes if Red** |
| **6, Identity (SHAPE control)** |  | **Yes if Red** |
| **7, Reversibility (SHAPE control)** |  | **Yes if Red** |
| **8, Accountability (SHAPE control)** |  | **Yes if Red** |
| 9, Smallest safe first workflow |  | No |
| 10, Measure success (override rate falls) |  | No |

**Gate decision.**

- [ ] All four SHAPE controls (Q5, Q6, Q7, Q8) are at Amber or Green. The build is funded.
- [ ] One or more SHAPE controls is Red. **The build is legally halted** until the technical architecture satisfies these SHAPE controls. Owners and deadlines named above. Skipping them builds the PocketOS pattern: a high-tempo drivetrain with no structural chassis.

CEO signature: _____________________________________

CIO signature: _____________________________________

Board acknowledgement (Tier 4-5 only): _____________________________________
