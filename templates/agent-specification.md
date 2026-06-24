# Agent Specification (Eight Properties / Agent Blueprint)

> **The spec is the contract. No spec, no agent.**
> Every agent operating in the Intelligence Stack must have all eight properties filled. This template mirrors both v24 forms: the machine-readable `[AGENT_SPEC_SCHEMA]` block (Chapter 4, Dual-Track Architecture) and the **Agent Blueprint** bold-label bullet format (Appendix C, "Three Fully Specified Agent Blueprints").

The canonical schema, verbatim from the v24 source:

```
[AGENT_SPEC_SCHEMA]
Property 1: Purpose - The atomic operational mission of the agent.
Property 2: Autonomy Tier - The action boundaries (e.g., auto-approve vs. escalate).
Property 3: Permission Envelope - Scoped credentials and read/write access constraints.
Property 4: Memory Boundary - RAG horizons, long-term state vs. stateless per run.
Property 5: Escalation Rules - Threshold metrics requiring human validator override.
Property 6: Eval Suite - Continuous integration tests and drift benchmarks.
Property 7: Telemetry/Audit Trail - Cryptographic log identifiers and correlation ID linkage.
Property 8: Reusability Scope - Cross-functional composability and forkable patterns.
```

**Agent name:** _______________________________________
**Stack layer(s):** ☐ PURPOSE ☐ SENSE ☐ INTERPRET ☐ DECIDE ☐ ORCHESTRATE/ACT ☐ LEARN ☐ GOVERN/ASSURE
**Human Owner (named individual):** _______________________________________
**Created:** _______________________________________
**Version:** _______________________________________

## 1. Purpose

> The atomic operational mission of the agent, derived from the PURPOSE-layer intent (the MTP).

___________________________________________________________
___________________________________________________________

## 2. Autonomy Tier

> The action boundaries. Schema vocabulary: recommend_only / execute_within_bounds / fully_autonomous. The v24 Appendix C blueprints show graduated variants in practice: "Execute-within-bounds" (autonomous inside scope, escalates on ambiguity), "Recommend-Options" (assembles context and recommendations; cannot commit), and "Recommends-with-Context" (recommends to a human for all higher tiers). An agent may carry split tiers by action class, for example execute-within-bounds for auto-approvals up to a dollar threshold and recommends-with-context above it.

☐ **recommend_only**, produces options for a human; does not execute.
☐ **execute_within_bounds**, executes inside the Permission Envelope without human approval per action.
☐ **fully_autonomous**, operates without per-action human oversight; escalates by exception.
☐ **Split tier by action class** (describe): ___________________________________________

> **PocketOS rule:** destructive or irreversible operations may *never* be `execute_within_bounds`. They require explicit human approval at the action level.

## 3. Permission Envelope

> Scoped credentials and read/write access constraints. Must include scope isolation. Read and write are separated; zero write access outside declared scope (the Appendix C blueprints declare "zero write access" lists explicitly).

**Data access (read):**
___________________________________________________________

**Data access (write):**
___________________________________________________________

**System access (APIs, services):**
___________________________________________________________

**Dollar / resource limits:**
___________________________________________________________

**Allowed actions:**
___________________________________________________________

**Forbidden actions (zero-access systems):**
___________________________________________________________

**Scope isolation check:**
- ☐ Token / credential is a scoped workload identity (not an employee credential, admin token, or shared key)
- ☐ Scoped to the smallest viable surface; cannot access tokens or credentials outside its declared scope
- ☐ Read and write credentials separated
- ☐ Approval threshold required for destructive actions
- ☐ Soft-delete window on irreversible operations
- ☐ Tested kill switch with documented recovery procedure

## 4. Memory Boundary

> RAG horizons, long-term state vs. stateless per run. What the agent can remember, retrieve, and persist; what it cannot. Note the Appendix C pattern: stateless-per-decision agents (DECIDE) vs. retention agents with regulatory windows (SENSE, 7 years) vs. working-memory agents (INTERPRET, 18 months); purges run by a separate retention agent under GOVERN supervision.

**Can remember:**
___________________________________________________________

**Can retrieve from (RAG horizon):**
___________________________________________________________

**Cannot persist:**
___________________________________________________________

**Memory window / retention period:**
___________________________________________________________

**Stateless per run?** ☐ Yes ☐ No (justify): ___________________________

## 5. Escalation Rules

> Threshold metrics requiring human validator override. When human intervention is required and to whom.

| Trigger (threshold metric) | Action | Recipient |
|---|---|---|
|  |  |  |
|  |  |  |
|  |  |  |

**Default escalation owner:** ____________________________________________
**Backup escalation owner:** ____________________________________________
**Anomaly / fraud-signal route:** ☐ Direct to GOVERN (independent review path)

## 6. Eval Suite

> Continuous integration tests and drift benchmarks. The test battery the agent passes before deployment and re-passes after every model or workflow change. Appendix C calibration examples: daily run against a deterministic 200-case baseline with a 97% accuracy floor; weekly back-testing against 1,000 historical cases with a 95% baseline; override rate above 5% triggers retraining or threshold adjustment.

**Eval scenarios:**

1. ___________________________________________________________
2. ___________________________________________________________
3. ___________________________________________________________
4. ___________________________________________________________
5. ___________________________________________________________

**Pass / fail criteria (accuracy floor + override-rate ceiling):**
___________________________________________________________

**Re-eval triggers (check all that apply):**
- ☐ Model upgrade or replacement
- ☐ Workflow change
- ☐ Permission Envelope change
- ☐ Quarterly cadence
- ☐ Drift detection signal from GOVERN/ASSURE

## 7. Telemetry / Audit Trail

> Cryptographic log identifiers and correlation ID linkage. Every autonomous decision logged, traceable, explainable. Every decision must be recoverable from the log alone.

**Log destination:**
___________________________________________________________

**Log retention period:**
___________________________________________________________

**Required log fields:**
- ☐ Correlation ID
- ☐ Decision input snapshot
- ☐ Reasoning trace / decision rationale
- ☐ Decision output
- ☐ Permission Envelope check result
- ☐ Escalation decisions
- ☐ Outcome (when known)
- ☐ Model version
- ☐ Prompt version

**Audit access (named):** ____________________________________________

## 8. Reusability Scope

> Cross-functional composability and forkable patterns. *"How do I make them reusable, so once they're trained, I can deploy them in multiple places?"* (McKinsey, April 2026.)
>
> Agents built without reusability scope become single-purpose artifacts. Agents with it become compounding capital.

**Designed-for contexts:**
___________________________________________________________

**Out-of-scope contexts:**
___________________________________________________________

**Required adaptations to redeploy:**
___________________________________________________________

**Composability with other agents (Capability Registry tags):**
___________________________________________________________

## Sign-Off

- [ ] All eight properties filled
- [ ] Human Owner named
- [ ] Permission Envelope passes scope isolation check
- [ ] Eval suite passed
- [ ] Telemetry destination configured and tested
- [ ] Reusability scope filled (or marked single-purpose with justification)

**Approved for deployment by:** ____________________________________________
**Date:** ____________
**Tier:** ☐ Pilot ☐ Production ☐ Critical-path

## Source Attribution

The eight-property Agent Specification is the contract layer of the Intelligence Stack, published in *The Organizational Singularity* (OS Outline v25, June 2026, Chapter 4 `[AGENT_SPEC_SCHEMA]` and Appendix C Agent Blueprints), authored by Salim Ismail with contributors. The Reusability Scope property is highlighted from McKinsey's April 2026 enterprise diagnostic.
