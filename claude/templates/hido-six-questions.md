# The Six-Question Data Object Diagnostic (HIDO)

> **The data spec is the contract. No spec, no agent action.**
> Symmetric to the eight-property Agent Specification: the agent spec governs *who is allowed to act and how*; the data spec governs *what may be done with each piece of evidence*. Agents get eight properties; data objects get six questions.
> Carry the six answers as **immutable, hashed, signed metadata** bound to the data object. Log every access.

The canonical protocol, verbatim from the v24 source (Chapter 4, "Governing the Data: The Six Questions Every Data Object Must Answer," Dual-Track Architecture block):

```
[DATA_GOVERNANCE_PROTOCOL]
Question 1: What is it? -> Enforces strict validation schema and object typing.
Question 2: Who says so? -> Explicitly tracks provenance, signatures, and chain of custody.
Question 3: How can it be used? -> Sets execution bounds (read, share, execute, or train-on).
Question 4: What are the legal terms? -> Maps contract structures, data licenses, and residency rules.
Question 5: What happens if wrong? -> Declares error semantics, liability, and mitigation triggers.
Question 6: How is dispute resolved? -> Encodes machine-readable arbitration, escrow, or rollback paths.
```

(HIDO is this skill's working shorthand for the six-question diagnostic, carried from earlier outline versions.)

**Data object name:** _______________________________________
**Object class / schema:** _______________________________________
**Owner (named human):** _______________________________________
**Created:** _______________________________________
**Version:** _______________________________________
**Bound to agents:** _______________________________________

## 1. What is it?

> Enforces strict validation schema and object typing: schema, type, canonical form, version.

**Schema / type:**
___________________________________________________________

**Canonical form (link or inline):**
___________________________________________________________

**Schema version:**
___________________________________________________________

**Versioning policy when schema changes:**
___________________________________________________________

## 2. Who says so?

> Provenance, signatures, and chain of custody.

**Issuer:**
___________________________________________________________

**Signature method:** ☐ Cryptographic signature ☐ Hash-chained log ☐ Other: __________

**Chain of custody (origin → current state):**
___________________________________________________________

**Verification procedure:**
___________________________________________________________

## 3. How can it be used?

> Execution bounds: read, share, execute, or train-on.

| Operation | Permitted? | Conditions |
|---|---|---|
| Read | ☐ Yes ☐ No | |
| Decide on (use as input to agent decisions) | ☐ Yes ☐ No | |
| Execute on (trigger actions from this object) | ☐ Yes ☐ No | |
| Share (with internal humans / agents) | ☐ Yes ☐ No | |
| Share across firm boundary | ☐ Yes ☐ No | |
| Train on (use to fine-tune or update models) | ☐ Yes ☐ No | |
| Aggregate (combine with other objects) | ☐ Yes ☐ No | |

**Permitted agent classes:**
___________________________________________________________

**Forbidden agent classes:**
___________________________________________________________

## 4. What are the legal terms?

> Contract structures, data licenses, and residency rules.

**License / contract reference:**
___________________________________________________________

**Regulatory class:** ☐ PII ☐ PHI ☐ PCI ☐ Trade secret ☐ Privileged ☐ Public ☐ Other: __________

**Jurisdiction / data residency:**
___________________________________________________________

**Retention policy:**
___________________________________________________________

**Counterparty rights (if cross-firm):**
___________________________________________________________

## 5. What happens if it's wrong?

> Error semantics, liability, and mitigation triggers: who notices, who fixes, who pays.

**Failure modes:**
___________________________________________________________

**Detection mechanism (eval / monitor / customer escalation / Quiet Drift threshold):**
___________________________________________________________

**Owner of remediation:**
___________________________________________________________

**Financial liability (who pays):**
___________________________________________________________

**Compensating control (if undetected for > N days):**
___________________________________________________________

## 6. How is a dispute resolved?

> Machine-readable arbitration, escrow, or rollback paths, before lawyers.

**Pre-litigation resolution path:**
___________________________________________________________

**Rollback procedure (if any):**
___________________________________________________________

**Escrow / hold mechanism (if any):**
___________________________________________________________

**Arbitration body (if cross-firm):**
___________________________________________________________

**Escalation to legal, trigger conditions:**
___________________________________________________________

## Metadata Binding

The six answers above MUST be:

- ☐ Bound to the data object as inline or referenced metadata
- ☐ Immutable (write-once after sign-off, or versioned with prior-version retained)
- ☐ Hashed (each answer hash committed to the data object's identity hash)
- ☐ Signed (cryptographic signature from the named owner)
- ☐ Travelling with the data, if this object crosses a firm boundary, the metadata crosses with it

## Sign-Off

- [ ] All six questions answered
- [ ] Owner named
- [ ] Permitted / forbidden operations match the agent specifications of every agent currently bound to this object
- [ ] Failure-mode detection mechanism is operational
- [ ] Dispute resolution path agreed with counterparty (if cross-firm)
- [ ] Metadata binding verified

**Approved by:** ____________________________________________
**Date:** ____________
**Cross-firm scope:** ☐ Internal only ☐ Crosses firm boundary

## Source Attribution

The Six-Question data diagnostic is published in *The Organizational Singularity* (OS Outline v25, June 2026, Chapter 4, "Governing the Data: The Six Questions Every Data Object Must Answer," carried as the `[DATA_GOVERNANCE_PROTOCOL]` block), authored by Salim Ismail with contributors. The Six Questions also serve as the **machine-readable cross-firm contract** in the Ecosystem Trust cross-organizational bounds (Chapter 3) and as the per-object companion to the Workflow Data Manifest (Chapter 10, Step 3; Appendix F, Q3). In v25 the six questions are also how meaning travels with each object in the new Chapter 8 data-plane inversion, turning a row into a semantic data product; see `references/data-plane-inversion.md`.
