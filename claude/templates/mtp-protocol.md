# MTP Protocol Authoring Template

> The MTP is not a poster. It is a protocol.
> Output: a three-layer machine-readable MTP that passes all three litmus tests (v24 adds the third, the Identity Layer test).
> The failure mode this protocol prevents is the **Agentic Fidelity Paradox** (Delphi Group, 2026): "the more precisely agents adhere to predefined procedure, the less capable they become on novel problems." Encode purpose, not procedure, and let GOVERN catch the drift.

**Firm:** _______________________________________
**Authored by:** _______________________________________
**Date:** _______________________________________
**Version:** _______________________________________

## 0. The MTP Statement (the inspirational layer)

> One sentence. Massive. Transformative. Purpose. Memorable enough that an agent and a human both reach for it under stress.

___________________________________________________________

> *Examples (for calibration, not adoption):*
> - Tesla: "Accelerate the world's transition to sustainable energy."
> - Singularity University: "Positively impact a billion people."
> - SpaceX: "Make humanity multi-planetary."

## 1. Constraint Layer: Hard Constraints

> What agents are categorically forbidden from doing. Hard constraints, not aspirational values.
> Each must be machine-readable: an agent reading only this layer must know whether a proposed action is allowed.

| # | Forbidden action | Trigger / detection | Agent response on detection |
|---|---|---|---|
| 1 |  |  | Refuse + log + escalate |
| 2 |  |  | Refuse + log + escalate |
| 3 |  |  | Refuse + log + escalate |
| 4 |  |  | Refuse + log + escalate |
| 5 |  |  | Refuse + log + escalate |

**Categories to consider:**
- ☐ Unauthorized data exfiltration
- ☐ Customer harms (specify)
- ☐ Decisions outside the Permission Envelope
- ☐ Regulatory violations
- ☐ Decisions that would foreseeably conflict with the firm's MTP statement

## 2. Decision Layer: Weighted Priorities

> Weighted priorities agents use when facing tradeoffs. The Decision Layer resolves the tension without human intervention.

| Tradeoff | Priority | Weighting / rule |
|---|---|---|
| Speed vs. quality |  |  |
| Cost vs. impact |  |  |
| Customer retention vs. acquisition |  |  |
| Margin vs. growth |  |  |
| Short-term vs. long-term |  |  |
| Privacy vs. personalization |  |  |
| Internal vs. external trust |  |  |

> Add tradeoffs unique to this firm. The Decision Layer should be specific enough that two agents reading it independently arrive at the same call.

## 3. Identity Layer: Cultural Cohesion (with explicit disqualifiers)

> The cultural cohesion mechanism that replaces "the office." When agents handle coordination, humans lose the incidental bonds traditional work provided. v24 requirement: the Identity Layer carries **explicit disqualifiers**, the values and motivations that make someone a poor fit, alongside the affirmative pull. A purpose specific enough to exclude; one that includes everyone binds no one.
> This layer is also the firm's answer to the Binding Problem (retention-by-resonance): Consequence, Legibility, Identity, with compensation as hygiene. See `references/shape-form.md`.

**Why a high-judgment human stays here (Consequence: what their judgment governs):**
___________________________________________________________
___________________________________________________________

**What is visible (Legibility: impact, judgment, contribution, engineered into view):**
___________________________________________________________
___________________________________________________________

**Rituals that replace office bonds:**
___________________________________________________________
___________________________________________________________

**Identity disqualifiers (who the organization is not for):**
___________________________________________________________
___________________________________________________________

## Litmus Tests (three in v24)

### Test 1: Endorsement Test

> *Could an AI agent, given only this MTP protocol, make a decision your leadership team would endorse?*

Test scenarios:

1. ___________________________________________________________
   Predicted agent decision: _______________________________________
   Leadership endorses? ☐ Yes ☐ No

2. ___________________________________________________________
   Predicted agent decision: _______________________________________
   Leadership endorses? ☐ Yes ☐ No

3. ___________________________________________________________
   Predicted agent decision: _______________________________________
   Leadership endorses? ☐ Yes ☐ No

**Test 1 result:** ☐ PASS ☐ FAIL

### Test 2: Refusal Test

> *Could that agent, given only this MTP, decide what NOT to build?* When execution is nearly free, the feature factory becomes the dominant failure mode.

Test scenarios (proposed features the agent should refuse):

1. ___________________________________________________________
   Predicted refusal? ☐ Yes ☐ No

2. ___________________________________________________________
   Predicted refusal? ☐ Yes ☐ No

3. ___________________________________________________________
   Predicted refusal? ☐ Yes ☐ No

**Test 2 result:** ☐ PASS ☐ FAIL

### Test 3: Identity Layer Test (new in v24)

> *Could a high-judgment human, reading only your Identity Layer, answer why they stay, what their contribution makes visible, and who the organization is not for?*

Run it with a real reader, not the authoring team:

1. Reader (role): _______________________________________
   Why they stay (their answer): _______________________________________
   What their contribution makes visible (their answer): _______________________________________
   Who the organization is not for (their answer): _______________________________________
   All three answerable from the Identity Layer alone? ☐ Yes ☐ No

**Test 3 result:** ☐ PASS ☐ FAIL

> If any test fails, return to authoring. The MTP is not yet a protocol.

## Distribution

- [ ] MTP protocol versioned and stored where every agent can retrieve it (PURPOSE layer of the Stack)
- [ ] All deployed agents updated to reference the new version
- [ ] Eval suites updated to test against the new layers
- [ ] CAIO has signed off
- [ ] CEO has signed off

## Source Attribution

The three-layer MTP-as-protocol construct is from ExO 3.0, published in *The Organizational Singularity* (OS Outline v25, June 2026, Chapter 3, SHAPE Component P), authored by Salim Ismail with contributors. v24 adds the explicit Identity Layer disqualifiers, the third Purpose Litmus Test, and the Agentic Fidelity Paradox framing (Delphi Group, 2026). The original MTP construct is from *Exponential Organizations* (Ismail, Malone, van Geest, 2014).
