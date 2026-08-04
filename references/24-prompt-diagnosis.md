# Prompt Diagnosis

> Load order: read `00-core-constraints.md` first. Use this page only when diagnosing an existing prompt or a reported generation deviation. Load the matching task page after diagnosis when a rewrite changes task type. Read `30-final-review.md` before delivering a rewritten prompt.

## Required inputs

- Original prompt
- Intended result
- Observed deviation or suspected weakness

If no result is available, diagnose text risk only and say that actual output behavior cannot be confirmed.

## Diagnose in this order

| Failure class | Look for | Repair |
| --- | --- | --- |
| Task ambiguity | Generation, edit, extension, and references mixed together | State one task and separate stages |
| Goal ambiguity | Style adjectives without subject, action, or outcome | Add a one-line concept and visible change |
| Timing ambiguity | No effective window or timeline total mismatch | Add continuous time segments |
| Material ambiguity | “Reference these” without roles | Map each material to one role |
| Conflict | Incompatible camera, light, style, or constraints | Choose a primary instruction or split time segments |
| Overload | Too many scenes, transitions, actions, or lines for duration | Remove or merge until one primary change fits |
| Continuity drift | Identity, costume, product, space, light, or sound changes | Add global invariants and continuity anchors |
| Constraint failure | Long, abstract, contradictory negative list | Retain only high-risk constraints and strengthen positive target |

## Deliver the diagnosis

Use this exact order:

1. **主要问题**：name only the 1-3 highest-impact defects.
2. **影响**：explain the causal effect on the requested result.
3. **最小修改版**：preserve the user’s language and change only what is necessary.
4. **完整重写版**：use the matching task template when a structured replacement helps.

Do not give only an abstract critique. Do not claim to know the true generation outcome if the user supplied no result.

## Exit criteria

Proceed to `30-final-review.md` when the revised prompt has an unambiguous task, observable outcome, controlled time/material roles, and no unresolved contradictions.
