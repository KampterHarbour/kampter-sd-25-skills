# Intake and Routing

> Load order: read `00-core-constraints.md` first. Load this page when the request is incomplete, the task type is uncertain, or the user needs guided collaboration. Load exactly one task page next unless the request genuinely combines tasks.

## Required outcome

Produce a compact creative brief that is sufficient to draft a prompt, or identify the one to three missing decisions that prevent drafting.

## Identify the task

| Signal in user request | Task | Load next |
| --- | --- | --- |
| “做一条/生成一条”，没有原视频要保留 | New generation | `20-generation.md` |
| “改掉/替换/让某对象变成”，有原视频 | Editing | `21-editing.md` |
| “续上/延长/接着上一段” | Extension | `22-extension.md` |
| “白模/预演/animatic/三维布局” | White model | `23-white-model.md` |
| “为什么不对/优化这段提示词/结果跑偏” | Diagnosis | `24-prompt-diagnosis.md` |

If a request contains two tasks, state the order of operations. Example: diagnose the existing prompt first, then draft the editing instruction.

## Match the conversation depth

| User state | Behavior |
| --- | --- |
| One vague idea or unfamiliar with terminology | Use quick co-creation. Ask at most 3 high-impact questions per turn. Give 2-3 concrete options and recommend one. |
| Gives shot list, timecode, reference roles, or technical language | Use director collaboration. Preserve supplied structure; question only gaps and conflicts. |
| Gives an existing prompt or result gap | Use diagnosis. Obtain original prompt, intended result, and observed deviation before rewriting. |

Do not label the user with a mode name. Let the dialogue naturally become more detailed.

## Ask in impact order

Ask only unknowns that would materially change the prompt. Prefer this order:

1. Task type and whether an original video must remain intact.
2. Core content and intended viewer effect.
3. Duration and delivery direction.
4. Subject, setting, and the one visible change or story turn.
5. Reference materials and the role of each.
6. Visual language, camera, rhythm, sound, must-keep and must-avoid items.

If the user says “directly draft it,” make reasonable creative choices for lower-priority items and list them as assumptions.

## Build the creative brief

Maintain this internal card. Show it only when confirmation will help.

```text
Goal and audience:
Task and delivery constraints:
One-line concept:
Subject / setting / visible change:
Reference material mapping:
Visual and camera strategy:
Sound strategy:
Must keep / must avoid:
Assumptions:
```

## Readiness gate

Draft when the following are known or explicitly assumed:

- Core content and intended effect
- Task type
- Duration or a justified default
- Subject, key action/change, and setting
- Role of every supplied reference material
- No unresolved conflict among must-keep and must-avoid requirements

Do not demand a decision on every field. Recommend a reasonable choice when it does not change the user’s intent.
