# SHAPE Scorecard *(What keeps you right and resilient)*

> Score the organizational form. Five components, 1–5 each. Total 25.
> Apply the Middle-60% absorption rule: if absorption math is not honestly modeled, cap H at ≤2/5.
> v24 additions to this rubric: the Binding Problem check under H, the third Purpose Litmus Test and Agentic Fidelity Paradox under P, and the Sarbanes-Oxley Moment board framing under S.

**Firm:** _______________________________________
**Date:** _______________________________________
**Scored by:** _______________________________________

## Component Scores

### S: Safe Autonomy (1–5): ____

> Fiduciary Wedge, compliance-as-code, kill switches, audit trails, agent-to-agent oversight. Board framing (v24): GOVERN/ASSURE is a revenue-protection mechanism protecting the balance sheet from autonomous operational degradation; the Sarbanes-Oxley Moment (Sonnenfeld, Yale CELI) makes the Four Pillars a fiduciary obligation (decision rights, escalation thresholds, fiduciary liability, disclosure).

| Score | Anchor |
|---|---|
| 1 | Agents operate without spec; tokens have blanket privileges; no Fiduciary Wedge. |
| 2 | Fiduciary Wedge partial; envelopes informal. |
| 3 | Fiduciary Wedge in place; envelopes documented; kill switches exist but untested. |
| 4 | Compliance-as-code for major regulations; kill switches tested annually. |
| 5 | Compliance-as-code; agent-to-agent oversight; envelopes with scope isolation, approval thresholds, soft-delete windows; kill switches tested quarterly. |

Permission Envelope check (PocketOS prevention):
☐ Scope isolation on all tokens
☐ Approval threshold for destructive actions
☐ Soft-delete window on irreversible operations
☐ Tested kill switch with documented recovery procedure
☐ Backups isolated outside the primary blast radius

Board governance check (v24):
☐ Formal agentic governance framework presented at board level (decision rights, escalation thresholds, fiduciary liability, disclosure)

#### Four Pillars Sub-Rubric (score each 1–5)

| Pillar | Score | Anchor |
|---|---|---|
| Trusted Evals | ____ | Every agent runs continuously against a known test set. Catches Quiet Drift before customers do. |
| Searchable Logs with Correlation IDs | ____ | Every decision recoverable from the audit trail alone. |
| Granular Rollback | ____ | Any single agent revertible without taking the Stack down. |
| Human Review Queue | ____ | Money / legal / customer-of-record decisions routed to a named human with SLAs. |
| **Four Pillars Maturity (minimum)** | **____** | **Do not deploy new agent class until ≥ 3.** |

Six-Questions check (data-side governance, see `templates/hido-six-questions.md`):
☐ Six Questions answered for every data object an agent acts on
☐ Metadata is immutable, hashed, signed
☐ Metadata travels with the data, including across firm boundary

Reasoning: _______________________________________________________________

### H: Human Architecture (1–5): ____

> Where human cognition is irreplaceable. Four named sub-problems in v24: Middle 60%, Missing Junior Loop, Bifurcation Risk, and the Binding Problem.

| Score | Anchor |
|---|---|
| 1 | Headcount cuts without workflow redesign; no absorption math; no apprenticeship loop; retention strategy is salary-matching. |
| 2 | Some absorption modeling; transition leader unnamed. |
| 3 | Absorption math modeled; transition leader named; some Stack-mentored learning rotations. |
| 4 | Funded transition; engineered junior loop; bridges visible; retention-by-resonance partially engineered. |
| 5 | Honest absorption math; fully funded transition (10–15% of savings); engineered junior loop; Bridge Curriculum running; measured caste-formation indicators; porous inner ring; Consequence, Legibility, and Identity explicitly designed. |

Middle-60% absorption math:
☐ Current headcount in target functions: ___________
☐ AI-native headcount projection in target functions: ___________
☐ Math published and reviewed by leadership? ☐ Yes ☐ No
☐ Transition budget allocated (10–15% of projected savings)? ☐ Yes ☐ No
☐ Three outcomes mapped (concentrate / redeploy / exit)? ☐ Yes ☐ No

**If absorption math is not modeled, cap H at ≤2/5.**

Missing junior loop check:
☐ Stack-mentored learning rotations exist
☐ AI-augmented mentoring program in place
☐ Structured exposure to judgment patterns agents can't yet handle

Bifurcation / caste check (Bridge Curriculum, Chapter 6):
☐ Promotion paths from outer ring to inner ring exist (12 months or fewer per transition)
☐ Porosity rate measured (target 30%+; below 20% is the caste-lock-in warning)
☐ Caste-formation early-warning indicators at board level monthly (adoption gap, porosity rate, voluntary exit profile)

Binding Problem check (v24, retention-by-resonance):
☐ **Consequence**: high-judgment humans govern agent fleets; their decisions have engineered, expanding surface area
☐ **Legibility**: who-decided-what is visible by design (invisible impact feels like no impact)
☐ **Identity**: purpose specific enough to exclude; disqualifiers written into the Identity Layer
☐ Compensation treated as hygiene: paid to parity, not relied on as the binder

Reasoning: _______________________________________________________________

### A: Adaptive Architecture (1–5): ____

> Modularity + antifragility. Pod-based intelligence networks. The org chart itself is swappable.

| Score | Anchor |
|---|---|
| 1 | Monolithic systems; model swap requires rebuild; org chart sacred. |
| 2 | Some modularity; model swap painful. |
| 3 | Stack layers can be swapped with effort; some pods replacing departments. |
| 4 | Most layers swappable; pods replacing most departments. |
| 5 | Every layer swappable, retargetable; pods are the default; model deprecation is routine. |

Reasoning: _______________________________________________________________

### P: Purpose Control (1–5): ____

> MTP as three-layer protocol (Constraint, Decision, Identity). v24: the Identity Layer carries explicit disqualifiers; the failure mode prevented is the Agentic Fidelity Paradox ("the more precisely agents adhere to predefined procedure, the less capable they become on novel problems"); litmus tests are three.

| Score | Anchor |
|---|---|
| 1 | MTP is a poster; no Constraint Layer; no machine-readable form. |
| 2 | Some constraint statements documented; not machine-readable. |
| 3 | Constraint and Decision layers documented; Identity Layer relies on legacy office culture; no disqualifiers. |
| 4 | All three layers documented; first two litmus tests pass. |
| 5 | All three layers operational; all three litmus tests pass; Identity disqualifiers explicit; MTP routinely refuses feature requests. |

MTP litmus tests (three in v24):
☐ Could an agent, given only the MTP, make a decision leadership would endorse?
☐ Could that agent, given only the MTP, decide what NOT to build?
☐ Could a high-judgment human, reading only the Identity Layer, answer why they stay, what their contribution makes visible, and who the organization is not for?

Agentic Fidelity Paradox check:
☐ The MTP encodes purpose, not procedure (agents are not brittle proceduralized scripts; GOVERN catches the drift)

Reasoning: _______________________________________________________________

### E: Ecosystem Trust (1–5): ____

> Trust as protocol. Cryptographic identity, verifiable credentials, mechanism design. v24 condenses the cross-organizational requirement to three numbered bounds.

| Score | Anchor |
|---|---|
| 1 | Trust by lunch and reputation only. |
| 2 | Some audit trails; no cryptographic identity. |
| 3 | Audit trails and reputation systems for major partners; some agent-to-agent auth. |
| 4 | Verifiable credentials in production with key partners. |
| 5 | Mechanism-design protocols in production; verification networks operational; bloc-aware design. |

Balkanization design check:
☐ Designed for cognitive blocs (US / China / EU / India divergence)
☐ Sovereign AI capability evaluated
☐ Multi-bloc partner strategy

The three cross-organizational bounds (any cross-firm agent action):
☐ 1. Policy-controlled API surface for external agents (scoped credentials, rate limits, kill-switch authority, every interaction logged)
☐ 2. Data-object metadata travels with every object exchanged (the Six Questions as machine-readable cross-firm contract)
☐ 3. Liability framework codesigned with counterparty in advance: agreed error budgets, mitigation paths, machine-readable arbitration mechanisms
☐ Legal team in the room when the integration was designed

Reasoning: _______________________________________________________________

## Totals

| Field | Value |
|---|---|
| **Total (S + H + A + P + E)** | ____ / 25 |
| Middle-60% absorption modeled? | ☐ Yes ☐ No |
| H capped at 2 due to absorption gap? | ☐ Yes ☐ No |

## Recommendations

- **Lowest-scoring component:** ____________ → Highest-leverage area for the next 90 days.
- **First three actions:**
  1. ___________________________________________________________
  2. ___________________________________________________________
  3. ___________________________________________________________

## Source Attribution

SHAPE is a component of ExO 3.0, published in *The Organizational Singularity* (OS Outline v25, June 2026, Chapter 3), authored by Salim Ismail with contributors. v24 supplies the header tagline, the Binding Problem and retention-by-resonance (Consequence / Legibility / Identity), the third Purpose Litmus Test, the Agentic Fidelity Paradox (Delphi Group, 2026), the Identity Layer disqualifiers, the three cross-organizational bounds, and the Sarbanes-Oxley Moment board framing (Sonnenfeld, Yale CELI, May 2026).
