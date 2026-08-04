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
- A pure-audio-driven brief names the audio role and states or confirms the visual assumptions.
- Time segments are continuous, non-overlapping, and total the requested duration.
- Each segment contains an observable action or change.
- Camera, action, light, style, and constraints do not conflict.
- Cross-shot identity, product, space, light, and sound anchors are explicit when needed.
- Dialogue and sound cues fit their time window.
- Negative constraints are concise, concrete, and compatible with the positive target.
- No placeholder or hidden assumption remains.
- Named modes or capabilities match 00-core-constraints.md and are not converted into API or quality claims.
- Any answer about official support was checked against 90-source-notes.md.
- No promise, API claim, or automation statement appears.

## Task-Specific Checks

| Task | Verify |
| --- | --- |
| Generation | Clear opening, progression, and landing; material roles do not collide; duration-specific official pattern is used where helpful. |
| Editing | Target, change, effective time, scope, unchanged elements, and any advanced annotation tool/side are explicit. |
| Extension | Direction, end state, continuity strategy, transition logic, new action, final state, and duration arithmetic are explicit. |
| White model | Coarse/fine role, inherited information, redesign information, mappings, and guide-overlay handling are explicit. |
| Diagnosis | Original intent, defect, minimum fix, and full rewrite are separated. |

## Final Response Shape

Use only useful sections:

- Creative confirmation: one or two sentences.
- Ready-to-use prompt: one clean code block with no analysis inside it.
- Material mapping and assumptions: only actual mappings and assumptions.
- Optional variant: at most one and only if strategically distinct.

For diagnosis, use the shape in 24-prompt-diagnosis.md.
