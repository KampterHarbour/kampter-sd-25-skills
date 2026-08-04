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

## Prompt Template

~~~text
[Task]
Edit the existing video.

[Edit instruction]
From [start] to [end], change [target object's] [attribute / action / content] to [requested result].
Location: [screen region or user annotation; use only when needed].

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
