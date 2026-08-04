# Video Editing

Read 00-core-constraints.md first. Use this page only when changing an existing video. Read 30-final-review.md immediately before delivery.

## Required Inputs

- Target object, person, region, or attribute.
- Requested change.
- Effective start and end time.
- Location or user annotation if the target is ambiguous.
- Elements that must remain unchanged.

Do not default to remaking the whole video for a local modification.

## Core Instruction

Write the edit as: target + requested change + effective time.

For advanced edits, add a visible location or user annotation. Keep the edit request separate from preservation requirements.

## Official Editing Pattern

For Smart Editing, Advanced Editing, or Video Editing, describe the change from A to B and pair it with a timestamp when timing matters. The manual's usable pattern is: specific target + action/change + effective timing.

Use an explicit edit verb such as edit, add, remove, replace, or change. State whether the instruction applies to the whole video or only a time range. The manual also says these workflows can take additional image, video, or audio references; map their role explicitly when the user provides them.

## Advanced Annotation Pattern

For Advanced Editing or Video Editing, prepend: annotation tool and position + specific target + action/change + effective timing.

The manual describes colored boxes, lines, arrows, text labels, and landmark points, plus an eraser. Name both the annotation and the side it governs, for example, `inside the red box`, `along the red arrow`, `at the landmark point`, or `left of the red line`.

## Officially Described Edit Outcomes

The manual explicitly lists BGM removal, creative transfer, local erasure/editing, spatial-view changes, voice reference, multi-person reference, green-screen editing, and seamless transition generation. Treat these as supported directions, not guarantees; write the target, desired result, timing, and preservation set for each one.

## Prompt Template

~~~text
[Task]
Edit the existing video.

[Edit instruction]
From [start] to [end], change [target object's] [attribute / action / content] to [requested result].
Location: [screen region or user annotation; use only when needed].
Annotation: [tool, color, and inside/outside or direction; use only for advanced/video editing].

[Keep unchanged]
Keep [identity, other objects, background, composition, camera movement, duration, sound, and unedited periods] unchanged.

[Result requirement]
Start the change naturally at [trigger] and complete it by [end point]. Preserve edge quality, occlusion, perspective, lighting, shadow, and motion continuity.
~~~

## Precision Rules

- Name the visual target; do not say only "change it."
- State whether the change is local, time-bounded, or global.
- Preserve relative size, perspective, occlusion, reflection, and interaction when relevant.
- Avoid global style instructions unless the user asks for a full-video change.

Proceed to 30-final-review.md when target, change, effective time, scope, and preservation set are explicit.
