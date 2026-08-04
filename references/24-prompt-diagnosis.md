# Prompt Diagnosis

Read 00-core-constraints.md first. Use this page only when diagnosing an existing prompt or reported generation deviation. Load the matching task page after diagnosis when a rewrite changes task type. Read 30-final-review.md before delivering a rewritten prompt.

## Required Inputs

- Original prompt.
- Intended result.
- Observed deviation or suspected weakness.

If no result exists, diagnose text risk only and state that actual output behavior cannot be confirmed.

## Diagnose in This Order

| Failure class | Look for | Repair |
| --- | --- | --- |
| Task ambiguity | Generation, edit, extension, and materials mixed together | State one task and separate stages |
| Goal ambiguity | Style adjectives without subject, action, or outcome | Add a one-line concept and visible change |
| Timing ambiguity | No effective window or timeline-total mismatch | Add continuous time segments |
| Material ambiguity | Materials named without roles | Map each material to one role |
| Conflict | Incompatible camera, light, style, or constraints | Choose a primary instruction or split segments |
| Overload | Too many scenes, transitions, actions, or lines for duration | Remove or merge until one primary change fits |
| Continuity drift | Identity, costume, product, space, light, or sound changes | Add global invariants and continuity anchors |
| Constraint failure | Long, abstract, contradictory negative list | Retain only high-risk constraints and strengthen the positive target |

## Deliver the Diagnosis

Use this order:

1. Main issues: name the one to three highest-impact defects.
2. Impact: explain how they cause the result risk.
3. Minimum revision: preserve the user's language and change only what is necessary.
4. Full rewrite: use the matching task template when a structured replacement helps.

Do not give abstract critique alone. Do not claim to know the true generation outcome when the user did not provide a result.

Proceed to 30-final-review.md when the revised prompt has an unambiguous task, observable outcome, controlled timing and material roles, and no unresolved contradiction.
