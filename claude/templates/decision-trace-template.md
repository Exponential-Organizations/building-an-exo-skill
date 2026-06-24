# Decision Trace (the Why-Layer Record)

> **The trace is the asset. Every agent run emits one, even while a human still makes the call.**
> A rule states what should happen in general ("renewals cap at 10%"). A decision trace records what happened in this case ("20% approved, under the service-impact exception, on the VP's sign-off, against last quarter's precedent"). Rules are necessary; they are not sufficient. The traces are what the LEARN layer compounds into the Value Moat.
> Carry each trace as immutable, hashed, signed metadata, and write it to the same Searchable-Logs substrate as the agent's append-only event log (Pillar 2). The trace is a queryable projection over that log.

The canonical schema, the decision-layer companion to the `[AGENT_SPEC_SCHEMA]` block (Chapter 4) and the `[DATA_GOVERNANCE_PROTOCOL]` block (Chapter 4), new in OS Outline v25, Chapter 8 ("What To Do With Your Data"):

```
[DECISION_TRACE_SCHEMA]
Field 1: Trace ID / Correlation ID - Unique id, chained to the agent run's log and the data objects touched.
Field 2: Decision - The action committed or recommended, in one line.
Field 3: Inputs Gathered - Every input used, with the system each came from.
Field 4: Policy / Rule Applied - The general rule that governed (e.g., "renewals cap at 10%").
Field 5: Exception Invoked + Justification - Which exception was taken, if any, and why.
Field 6: Approver - The named human or agent who authorized the decision.
Field 7: Precedent Referenced - Prior trace(s) or precedent the decision relied on.
Field 8: Written Back - What was committed to which system(s) of record.
Field 9: Timestamp - When the decision was committed (ISO 8601).
Field 10: Final Call - Human or Agent. The flag that says who actually decided.
```

**Agent:** _______________________________________
**Workflow:** _______________________________________
**Trace ID / Correlation ID:** _______________________________________
**Timestamp (ISO 8601):** _______________________________________

## 1. Decision

> The action committed or recommended, in one line. State the outcome, not the deliberation.

___________________________________________________________

## 2. Inputs Gathered (across which systems)

> Every input that fed the decision, each tagged with the system it came from. This is what makes the decision debuggable down to the byte.

| Input | Source system | Read or derived |
|---|---|---|
| | | ☐ Read ☐ Derived |
| | | ☐ Read ☐ Derived |
| | | ☐ Read ☐ Derived |

## 3. Policy / Rule Applied

> The general rule in force. If more than one rule applied, list each and note which governed.

___________________________________________________________

## 4. Exception Invoked + Justification

> Which exception (if any) was taken, and the stated reason. If none, write "None, decision within rule."

**Exception:** _______________________________________
**Justification:** _______________________________________
☐ No exception, decision within the rule

## 5. Approver

> The named human or agent who authorized the decision. A name, not a role, not a committee.

___________________________________________________________

## 6. Precedent Referenced

> Prior trace IDs or named precedents this decision relied on. This is how the why-layer compounds: today's trace becomes tomorrow's precedent.

___________________________________________________________

## 7. Written Back

> What was committed, and to which system(s) of record. The ERP keeps the truth about state; the trace keeps the truth about why.

| What was written | Target system of record |
|---|---|
| | |
| | |

## 8. Final Call

> Who actually decided. The asset grows whether a human or an agent makes the call; the flag is what lets the LEARN layer separate human-governed precedent from autonomous precedent and track the falling human-override rate (the test of a real Edge Twin).

☐ **Human** (named in Field 6) made the final call. Agent proposed and gathered context.
☐ **Agent** made the final call within its Permission Envelope and Autonomy Tier.

## Binding and Persistence

The trace above MUST be:

- ☐ Bound to the agent run's Trace ID / Correlation ID (chains SENSE → INTERPRET → DECIDE → ORCHESTRATE → outcome)
- ☐ Written to the Searchable-Logs substrate (Pillar 2), immutable, hashed, and signed
- ☐ Emitted on every run, including human-in-the-loop runs where a human made the final call
- ☐ Query-addressable as part of the firm's why-layer (the context graph), so it can become searchable precedent

## Worked Example

```
[DECISION_TRACE_SCHEMA]
Field 1: Trace ID / Correlation ID - dt-2026-06-22-RENEWAL-4471 (chained to run log run-4471)
Field 2: Decision - Approved a 20% renewal price increase for account Northwind Logistics.
Field 3: Inputs Gathered - Account tier and ARR (CRM); contract renewal terms and prior pricing (CLM);
         service-impact incident history, 2 SEV-1s in the term (incident system); margin floor for the
         segment (the governed data layer); last 4 comparable renewal traces (context graph).
Field 4: Policy / Rule Applied - "Renewals cap at 10% without VP approval."
Field 5: Exception Invoked + Justification - Service-impact exception. The account absorbed two SEV-1
         outages in-term; pricing committee policy permits an above-cap increase when service credits
         already issued exceed 1.5x the proposed delta, which held here.
Field 6: Approver - Dana Okoro, VP Revenue.
Field 7: Precedent Referenced - dt-2026-03-09-RENEWAL-3120 (same exception, 18% approved) and
         dt-2026-01-22-RENEWAL-2884 (exception declined; service credits below threshold).
Field 8: Written Back - Renewal opportunity updated to 20% in CRM; amended terms drafted in CLM;
         approval note appended to the account record. No write to the general ledger.
Field 9: Timestamp - 2026-06-22T15:42:09Z
Field 10: Final Call - Human (Dana Okoro). Agent assembled context, surfaced the two precedents,
         flagged the cap breach, and routed for sign-off; it did not commit the price itself.
```

The worked example shows the asset doing double duty: it documents *this* decision for audit, and it becomes a searchable precedent (Field 7 of some future trace) the next time a renewal breaches the cap. That compounding is the whole point.

## Source Attribution

The decision trace is published in *The Organizational Singularity* (OS Outline v25, June 2026, Chapter 8, "What To Do With Your Data," "The Decision Layer: Capturing Why"), authored by Salim Ismail with contributors. The "context graph" description for the stitched-together why-layer is borrowed from Jaya Gupta and Ashu Garg (Foundation Capital, December 2025); the "log is the agent" framing for the substrate beneath the trace from Ishaan Sehgal (Omnara, 2026). The schema is the decision-layer companion to the `[AGENT_SPEC_SCHEMA]` and `[DATA_GOVERNANCE_PROTOCOL]` blocks. See `references/data-plane-inversion.md`.
