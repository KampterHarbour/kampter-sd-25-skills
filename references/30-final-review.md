# Final Review and Delivery

Read this immediately before every final prompt or rewritten prompt. Return to the selected task page only if the review reveals a material issue.

## Resolve Issues in Order

1. Official-range violation or unsupported claim.
2. Conflicting instruction.
3. Missing task-critical input.
4. Timeline, material, or continuity ambiguity.
5. Readability and style polish.

Do not polish a prompt that violates a hard range or contains a critical contradiction.

## Universal Checks

- Task type matches the request.
- Duration, reference counts, and media totals fit 00-core-constraints.md.
- One sentence explains subject, setting, visible change, and intended effect.
- Every material has an identifier and specific role; unseen materials are not invented.
- Time segments are continuous, non-overlapping, and total the requested duration.
- Each segment contains an observable action or change.
- Camera, action, light, style, and constraints do not conflict.
- Cross-shot identity, product, space, light, and sound anchors are explicit when needed.
- Dialogue and sound cues fit their time window.
- Negative constraints are concise, concrete, and compatible with the positive target.
- No placeholder or hidden assumption remains.
- No promise, API claim, or automation statement appears.

## Task-Specific Checks

| Task | Verify |
| --- | --- |
| Generation | Clear opening, progression, and landing; material roles do not collide. |
| Editing | Target, change, effective time, scope, location when needed, and unchanged elements are explicit. |
| Extension | End state, continuity strategy, bridge, new action, final state, and duration arithmetic are explicit. |
| White model | Inherited and redesigned information are separately stated. |
| Diagnosis | Original intent, defect, minimum fix, and full rewrite are separated. |

## Final Response Shape

Use only useful sections:

- Creative confirmation: one or two sentences.
- Ready-to-use prompt: one clean code block with no analysis inside it.
- Material mapping and assumptions: only actual mappings and assumptions.
- Optional variant: at most one and only if strategically distinct.

For diagnosis, use the shape in 24-prompt-diagnosis.md.
