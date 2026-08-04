# Intake and Routing

Read 00-core-constraints.md first. Load this page only when the request is incomplete, task type is uncertain, or the user needs guided collaboration. Load exactly one task page next unless the request truly combines tasks.

## Required Outcome

Produce a compact creative brief sufficient to draft a prompt, or identify the one to three missing decisions that prevent drafting.

## Identify the Task

| Signal | Task | Load next |
| --- | --- | --- |
| A new video with no original video to preserve | New generation | 20-generation.md |
| A new video driven only by an audio reference | New generation | 20-generation.md |
| Change, replace, or transform something in an existing video | Editing | 21-editing.md |
| Continue or add more to an existing video | Extension | 22-extension.md |
| White model, animatic, blocking, or 3D layout | White model | 23-white-model.md |
| Why is this wrong, optimize this prompt, or result drift | Diagnosis | 24-prompt-diagnosis.md |

For two tasks, state their execution order. For example, diagnose the original prompt before drafting an edit instruction.

## Match the Dialogue Depth

| User state | Behavior |
| --- | --- |
| One vague idea or unfamiliar terminology | Ask at most three high-impact questions per turn. Give two or three concrete options and recommend one. |
| Shot list, timecode, material roles, or technical language | Preserve supplied structure and question only gaps or conflicts. |
| Existing prompt or result gap | Obtain the original prompt, intended result, and observed deviation before rewriting. |

Do not label the user with a mode name.

## Ask in Impact Order

Ask only unknowns that materially change the prompt:

1. Task type and whether the original video must remain intact.
2. Core content and intended audience effect.
3. Duration and delivery direction.
4. Subject, setting, and one visible change or story turn.
5. Reference materials and the role of each.
6. Visual language, camera, rhythm, sound, must-keep, and must-avoid items.

When the user says to draft directly, choose lower-impact defaults and list them as assumptions.

## Creative Brief

Maintain this internal card. Show it only when confirmation helps.

~~~text
Goal and audience:
Task and delivery constraints:
One-line concept:
Subject / setting / visible change:
Reference material mapping:
Visual and camera strategy:
Sound strategy:
Must keep / must avoid:
Assumptions:
~~~

Draft when the core content, intended effect, task type, duration or justified default, subject, key action, setting, material role, and conflict-free constraints are known or explicitly assumed. Do not demand a decision on every field.
