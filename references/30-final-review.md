# Final Review and Delivery

> Load order: load this immediately before every final prompt or rewritten prompt. Return to the matching task page only if this review reveals a material issue.

## Resolve issues in order

1. Official-range violation or unsupported claim
2. Conflicting instruction
3. Missing task-critical input
4. Timeline, material, or continuity ambiguity
5. Readability and style polish

Do not polish a prompt that still violates a hard range or contains a critical contradiction.

## Universal checks

- Task type matches the request.
- Duration, reference counts, and reference media totals fit `00-core-constraints.md`.
- One sentence explains subject, setting, visible change, and intended effect.
- Every supplied material has an identifier and a specific role; unseen materials are not invented.
- All time segments are continuous, non-overlapping, and total the requested duration.
- Each segment contains an observable action or change.
- Camera, action, light, style, and constraints do not conflict.
- Cross-shot identity, product, space, light, and sound anchors are explicit when needed.
- Dialogue and sound cues fit their time window.
- Negative constraints are concise, concrete, and compatible with the positive target.
- No unfilled placeholder or hidden assumption remains.
- No guarantee, API claim, or automation promise appears.

## Task-specific checks

| Task | Verify |
| --- | --- |
| Generation | Storyboard has a clear opening, progression, and landing; material roles do not collide. |
| Editing | Target, requested change, effective time, scope, location when needed, and unchanged elements are explicit. |
| Extension | Original end state, continuation/transition strategy, bridge, new action, end state, and duration arithmetic are explicit. |
| White model | Inherited information and redesigned information are separately stated. |
| Diagnosis | Original intent, defect, minimal fix, and full rewrite are clearly separated. |

## Final response shape

Use only the sections that carry value:

1. **创意确认**：one or two sentences.
2. **可直接使用的提示词**：one clean code block with no analysis mixed into it.
3. **素材对应与假设**：only actual mappings and assumptions.
4. **可选变体**：at most one, only when strategically distinct.

For diagnosis, use the format defined in `24-prompt-diagnosis.md` instead.
