# Four Pillars of GOVERN/ASSURE: Standards Mapping

> Source: *The Organizational Singularity*, OS Outline v25, Chapter 4 (standards footnote, ADLC footnote, and the Sarbanes-Oxley Moment callout). Salim Ismail with contributors, June 2026. v20 introduced the explicit mapping of the Four Pillars to NIST, OWASP, and CSA frameworks. **v24 adds two anchors:** the GOVERN/ASSURE revenue-protection reframe ("a critical revenue-protection mechanism designed to protect the corporate balance sheet from autonomous operational degradation") and the **Sarbanes-Oxley Moment for AI** (Sonnenfeld, Yale CELI, May 2026), the board-governance frame that maps one-to-one onto the Pillars. It also notes OpenText's ADLC as an independent lifecycle discipline that maps onto the Pillars. The Pillars *operationalize* these frameworks. They do not restate them.

## The Position

CISOs, auditors, and boards already speak the language of NIST, OWASP, and the Cloud Security Alliance. The Four Pillars are the production implementation of what those frameworks specify in the abstract.

When the conversation starts at *"how does this map to NIST AI RMF?"* the answer is not *"it doesn't, because we use the Four Pillars."* The answer is *"each Pillar is the production primitive that operationalizes a specific set of NIST controls, OWASP failure modes, and CSA control objectives. Here is the mapping."*

## The Three Frameworks Anchored

### NIST AI Risk Management Framework (2023)

- Source: National Institute of Standards and Technology
- URL: `https://www.nist.gov/itl/ai-risk-management-framework`
- Scope: Voluntary framework governing risk across the AI lifecycle (design, development, use, evaluation).
- Why it matters: NIST AI RMF is the default reference framework for US federal agencies and the de facto vocabulary used by enterprise risk committees.

### OWASP Top 10 for LLM Applications

- Source: OWASP Foundation
- URL: `https://owasp.org/www-project-top-10-for-large-language-model-applications/`
- Scope: The ten most critical failure modes for LLM-backed applications, including prompt injection, sensitive-information disclosure, insecure output handling, and excessive agency.
- Why it matters: OWASP names the *failures the Pillars catch*. When the security team asks *"how do you handle prompt injection?"* the OWASP vocabulary is the bridge.

### Cloud Security Alliance AI Controls Matrix (AICM)

- Source: Cloud Security Alliance
- URL: `https://cloudsecurityalliance.org/artifacts/ai-controls-matrix`
- Scope: 243 control objectives across 18 domains (July 2025 release).
- Why it matters: AICM is the controls superset. Auditors map it directly to ISO 27001, SOC 2, and HIPAA controls inventories. The Pillars implement, rather than restate, the relevant AICM controls.

### The ADLC Parallel (new in v24)

An independent lifecycle discipline has emerged in parallel: **OpenText's Agentic Development Lifecycle (ADLC)**, which governs agent creation, monitoring, safety-testing, and retirement (Bell, Jenkins & Wagstaff, *The Agentic AI Genome*, 2026). It maps onto the Four Pillars and the eight-property agent specification. Treat it the same way as the standards above: the book operationalizes the control plane rather than restating it. When an OpenText-aligned CIO speaks ADLC, translate at the boundary, exactly as with NIST and OWASP.

## The Board Frame: The Sarbanes-Oxley Moment for AI (new in v24)

When the audience is the board rather than the CISO, lead with Sonnenfeld instead of NIST. From the v24 source: "In May 2026, Jeffrey Sonnenfeld's Yale CELI brought this argument to the boardroom: every public-company board needs a formal agentic governance framework—decision rights, escalation thresholds, fiduciary liability, and disclosure—before regulators write one for them. This quartet maps one-to-one onto the Four Pillars."

The one-to-one mapping for the board deck:

| Sonnenfeld board requirement | Four Pillars implementation |
|---|---|
| Decision rights | Human Review Queue (who decides; humans-above-the-loop with named owners and SLAs) plus Permission Envelopes and Autonomy Tiers |
| Escalation thresholds | Trusted Evals (quantified drift thresholds firing alerts before customers see failures) plus the escalation rules in every agent spec |
| Fiduciary liability | The Fiduciary Wedge made auditable by Searchable Logs with Correlation IDs (every decision recoverable from the trail alone) |
| Disclosure | Searchable Logs plus Granular Rollback (the incident record is reconstructable, the remediation path demonstrable) |

Pair this with the v24 control-plane reframe in any board or CFO conversation: GOVERN/ASSURE "is a critical revenue-protection mechanism designed to protect the corporate balance sheet from autonomous operational degradation." The Amazon Q numbers (120,000 lost orders, 1.6M marketplace errors) are the financialization evidence.

## Per-Pillar Mapping

### Pillar 1: Trusted Evals

**Operationalizes.**

- NIST AI RMF: *Measure* function (testing, evaluation, validation, monitoring across the lifecycle).
- OWASP LLM Top 10: catches drift that surfaces as model misbehavior, hallucination, and quality degradation.
- CSA AICM: control domains covering model validation, performance monitoring, and continuous testing.

**What it does in production.** Every agent runs continuously against a known, versioned test set. Drift below a quantified threshold (accuracy floor, override-rate ceiling) triggers retraining or rollback automatically. An agent without an eval suite is a demo, not a production agent.

### Pillar 2: Searchable Logs with Correlation IDs

**Operationalizes.**

- NIST AI RMF: *Manage* function (transparency, accountability, traceability of decisions and outcomes).
- OWASP LLM Top 10: insecure output handling and sensitive-information disclosure detection through log inspection.
- CSA AICM: logging, audit trail, and forensic recovery control objectives across multiple domains.

**What it does in production.** Every decision is recoverable from the audit trail alone. SENSE -> INTERPRET -> DECIDE -> ORCHESTRATE -> outcome chained on a single correlation ID. Logs are immutable, hashed, and cryptographically signed. Humans can reconstruct, debug, and explain any outcome without reproducing the run.

### Pillar 3: Granular Rollback

**Operationalizes.**

- NIST AI RMF: *Manage* function (incident response, recovery, model lifecycle versioning).
- OWASP LLM Top 10: response to insecure output, excessive agency, and overreliance.
- CSA AICM: configuration management, version control, and recovery control objectives.

**What it does in production.** Any single agent class revertible to last week's prompt, last month's model, or last quarter's policy version, without taking the rest of the Stack down. Treat agent versions the way disciplined engineering treats software versions: traceable, diffable, recoverable. An agent stack without rollback is an agent stack you cannot govern.

### Pillar 4: Human Review Queue

**Operationalizes.**

- NIST AI RMF: *Govern* function (accountability, human oversight, decision authority).
- OWASP LLM Top 10: excessive agency, overreliance, and insecure output handling.
- CSA AICM: human oversight, escalation, segregation-of-duties control objectives.

**What it does in production.** Anything that touches money, legal text, or a customer-of-record routes to a named human in a queue with SLAs. The queue is staffed, measured, and visible to leadership. Humans-above-the-loop, not humans-in-the-loop, on decisions where the Fiduciary Wedge requires a name.

## OWASP Failure Modes the Pillars Catch

When the CISO asks *"how do we handle the OWASP LLM Top 10?"* these are the four failure modes the Pillars catch directly:

- **Prompt injection** caught by Pillar 1 (Trusted Evals testing for injection-pattern drift), Pillar 2 (logs reveal the injection path on review), and Pillar 4 (high-risk outputs route through human review).
- **Sensitive-information disclosure** caught by Pillar 2 (audit trail detects the disclosure), Pillar 3 (rollback contains the blast radius), and Pillar 4 (sensitive outputs route to a human).
- **Insecure output handling** caught by Pillar 1 (eval suite tests for unsafe output patterns), Pillar 2 (output logged with correlation ID for downstream review), and Pillar 3 (rollback recovers from bad output propagation).
- **Excessive agency** caught by Pillar 3 (rollback contains the agency overreach), Pillar 4 (high-agency decisions route to a human), and the Permission Envelope plus Autonomy Tier from the agent specification.

## Standards Mapping in the CIO Edge Twin Diagnostic

In Appendix F (`templates/cio-edge-twin-diagnostic.md`):

- Question 5 (Leakage) maps directly to the OWASP failure modes above. v24 wording: "Permissions must be enforced outside the model layer, before data retrieval and action."
- Question 6 (Identity) maps to NIST AI RMF *Govern* function and CSA AICM identity-and-access control domains. Scoped workload identity, short-lived credentials, per-action logging.
- Question 7 (Reversibility) maps to Pillar 3 (Granular Rollback) and Pillar 4 (Human Review Queue).
- Question 8 (Accountability) maps to NIST AI RMF *Govern* function and the Fiduciary Wedge.

**The Readiness Gate Protocol (v24).** Any Red on Q5, Q6, Q7, or Q8 is an absolute block; in the v24 wording, "The build must be legally halted until the technical architecture is reinforced to satisfy these essential SHAPE controls. Skip them, and you have built the PocketOS pattern: a high-tempo drivetrain with no structural chassis."

## What This Mapping Is Not

It is not a substitute for a NIST AI RMF self-assessment, an OWASP threat model, or a CSA AICM controls audit. The Pillars are operational primitives. The frameworks are the broader risk taxonomies the primitives live inside.

If the CISO asks for a NIST AI RMF self-assessment, do the self-assessment. If the auditor asks for AICM controls evidence, generate the evidence. The Pillars give you the production reality the frameworks describe in the abstract. Both layers exist for a reason.

## The Failure Mode

Telling the CISO *"we use the Four Pillars instead of NIST."* The CISO hears: *"we have made up our own framework and ignored the standard the rest of the industry uses."* The build stalls.

The right move. Lead with the standards the CISO already knows (or, at board level, with the Sarbanes-Oxley Moment). Show the per-Pillar mapping above. End with the operational reality the Pillars deliver that the framework alone does not.
