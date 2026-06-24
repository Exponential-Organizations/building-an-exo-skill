# Social Capital Crosswalk and Amazon Q Sidebar

> Source: *The Organizational Singularity*, OS Outline v15, Chapter 4, The Intelligence Stack (verbatim carrier), updated against OS Outline v25, June 2026. This file carries the fuller v15 crosswalk text so the skill is portable without the underlying outline. **v24 status note:** the book's Chapter 4 now carries a condensed version of this crosswalk with new row labels (Economics = "Implicit Unit Cost Loop"; LEARN = "Turning inference cost into compounding corporate capital"); the Social Capital attribution sentence and the "Two things to take from the crosswalk" paragraph were removed from the book text. Both remain here as facilitation material; the v24 condensed table is reproduced below and is the citable book form. The Amazon Q sidebar survives in v24 as the third of four GOVERN/ASSURE callouts (Quiet Drift, PocketOS, Amazon Q, Sarbanes-Oxley Moment).

This reference exists because the industry has converged on a 5-layer vocabulary that your engineers, vendors, and board will use even when your operating model speaks in PURPOSE / SENSE / INTERPRET / DECIDE / ORCHESTRATE / LEARN. Translate at the boundary. Do not lose the LEARN layer in translation.

## The v24 Condensed Table (citable book form, Chapter 4)

| Industry 5-Layer Stack | Intelligence Stack Equivalent | What It Means in This Book |
|---|---|---|
| **Intelligence Layer** | PURPOSE + SENSE + INTERPRET | Cognitive front end. Frames intent and builds the operational world model. |
| **Action Layer** | DECIDE + ORCHESTRATE / ACT | Evaluates choices and triggers software execution tools. |
| **Governance Layer** | GOVERN/ASSURE Control Plane | Runtime policy enforcement, safety testing, and kill switches. |
| **Orchestration Layer** | ORCHESTRATE Layer | Multi-agent lifecycle routing and human-above-the-loop queues. |
| **Economics Layer** | Implicit Unit Cost Loop | Optimizes inference-cost-per-task metrics to build IP. |
| *(No industry-layer equivalent)* | **LEARN Layer** | Turning inference cost into compounding corporate capital. |

## The Crosswalk (fuller v15 form, for facilitation)

Industry vocabulary is converging on a five-layer agent stack, popularized by Social Capital's *A Primer on AI Agents* (May 2026): **Intelligence, Action, Governance, Orchestration, Economics.** Your engineers, vendors, and board members will increasingly speak in those terms. The Intelligence Stack in this book is the same architecture told as an *operating model*, not as an engineering stack. The mapping is one-to-many in both directions, and the crosswalk matters because the two vocabularies will travel together for the next decade.

| Social Capital 5-Layer Stack | Intelligence Stack equivalent | What it means |
|---|---|---|
| **Intelligence** (reasoning, memory, knowledge) | **PURPOSE + SENSE + INTERPRET** | The cognitive front end of the loop. Frames intent and builds the world model. |
| **Action** (ReAct loop, tools, protocols, MCP/A2A) | **DECIDE + ORCHESTRATE / ACT** | The execution layer that closes the loop from reasoning to real-world effect. |
| **Governance** (machine-checkable security, runtime enforcement) | **GOVERN/ASSURE control plane + Four Pillars** | The control plane. Same intent, more operational specificity in this book (Trusted Evals, Searchable Logs, Granular Rollback, Human Review Queue). |
| **Orchestration** (harness, runtime, routing) | **ORCHESTRATE layer + Agent Specifications + Architecture Blueprint** | The conductor. How models, tools, agents, and humans are routed. |
| **Economics** (per-task cost, build vs. buy, failure costs) | **Implicit across REWRITE Steps 4–6 + Appendix D** | Cost-of-coordination collapse expressed at the unit-economics layer. *Price per completed task* is the metric that matters. |
| (no industry-layer equivalent) | **LEARN** | The reason intelligence-dense firms compound. The industry vocabulary does not yet have a name for the layer that turns deployed agents into proprietary capital. This is one of the book's structural bets. |

**Two things to take from the crosswalk** (facilitation framing; no longer in the book text). First, your team can speak either vocabulary without losing precision, translate at the boundary. Second, the absence of a LEARN-equivalent in the consensus 5-layer model is the gap your firm has the most asymmetric chance to exploit. Most firms will deploy agents on the first four layers and discover, two years in, that nothing compounds. The LEARN layer is what turns inference cost into intellectual property.

## Amazon Q Sidebar (v24 callout form)

> **Amazon Q—Enterprise Outages:** PocketOS shows what happens to a startup. Amazon Q shows what happens to an enterprise running an autonomous agent at scale without a working control plane. In December 2025, Amazon's coding agent autonomously decided to delete and recreate a live production environment, causing a 13-hour outage of AWS in China. In March 2026, the Amazon Q developer led to 120,000 lost orders and 1.6 million marketplace errors. Days later, a second incident dropped 99% of North American marketplace order routing for six hours. The pattern is identical: destructive autonomy without a Permission Envelope, no kill switch enforcement, and no approval threshold on irreversible operations. If Amazon can ship this failure, so can you.

The defense is the same: GOVERN/ASSURE on Day 1, scoped credentials, mandatory approval thresholds on destructive endpoints, soft-delete windows, and an Eval Suite that catches drift before the customer does. v24 frames the whole set as outage financialization: the control plane is "a critical revenue-protection mechanism designed to protect the corporate balance sheet from autonomous operational degradation."

## How to Apply This Reference

1. **When the team speaks 5-layer.** Walk the right column across, name what is yours (PURPOSE through GOVERN/ASSURE), and name the LEARN gap explicitly. The board hearing "Intelligence, Action, Governance, Orchestration, Economics" will assume those five are sufficient. Your job is to close that gap on the record.
2. **When greenlighting an enterprise deployment.** Read the Amazon Q sidebar aloud before signing off. Then walk the four Day-1 defenses (scoped credentials, mandatory approval thresholds, soft-delete windows, Eval Suite) and confirm each is in place. *If Amazon can ship this, so can you* is not rhetoric. It is a checklist trigger. For boards, pair it with the Sarbanes-Oxley Moment callout (see `intelligence-stack.md` and `four-pillars-standards-mapping.md`).
3. **In the Architecture Blueprint.** The two vocabularies should appear side by side once. After that, pick the operating-model vocabulary and stay with it. Two vocabularies are a translation cost; the choice of which to use day to day is yours.

## Source Notes

- Social Capital, in collaboration with Lederle Capital LLC. *A Primer on AI Agents: The 5 Layers of AI Agents.* May 2026.
- Amazon Q outage primary coverage: Fortune, MSN, TechRadar, Engadget, December 2025 AWS China outage and March 2026 Amazon Q developer incidents.
- Andrej Karpathy. X post on agent harness composability, February 20, 2026: *"the implied new meta is to write the most maximally forkable repo and then have skills that fork it into any desired more exotic configuration."* Reinforces the Crosswalk's right-column logic.
- Jeffrey Sonnenfeld et al. (Yale CELI). Fortune, May 2, 2026. The "Sarbanes-Oxley moment" board-governance framing (v24, fourth callout).
