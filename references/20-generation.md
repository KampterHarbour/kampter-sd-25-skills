# New Generation

Read 00-core-constraints.md first. Use this page only for a new video or a new video controlled by reference materials. Read 30-final-review.md immediately before delivery.

## Required Inputs

- Total duration and delivery direction.
- One-line concept: subject, setting, visible change, and intended effect.
- Reference-material roles, when materials exist.
- Visual/camera direction, sound direction, and key constraints.

Use 10-intake-and-routing.md for missing high-impact inputs.

## Compose in Causal Order

1. Establish the initial frame and subject state.
2. Describe one primary observable action or change per time segment.
3. State camera movement only when it supports the action or reveal.
4. End with a clear result, product reveal, emotional landing, or transition point.
5. Put cross-shot invariants in global reinforcement instead of repeating them in every segment.

Keep segments continuous. Make the final endpoint equal the requested duration.

## Map Materials Explicitly

Use a narrow, concrete role for each item:

~~~text
Image 1: reference the lead's face, hairstyle, and clothing; do not copy its background.
Image 2: reference product shape, color, and logo placement.
Video 1: reference the hand-motion rhythm from 00:02-00:05; do not copy its performer.
Video 2: reference a low-angle, slow orbit camera move.
Audio 1: reference a gentle female voice quality and tone; use the specified new narration.
~~~

Replace every example identifier with the actual identifier. When a material is unseen, use a placeholder or ask a question.

## Prompt Template

~~~text
[Parameters]
Task: generate a video
Duration: [total duration]
Resolution: [only a user choice supported by the official range]
Aspect / delivery direction: [user requirement]

[Material mapping]
[material identifier]: [one specific role]

[One-line concept]
[who] in [setting] [undergoes key visible change], landing on [effect].

[Global setup]
Subject: [identity, appearance, wardrobe, continuity anchors]
Environment: [place, time, weather, spatial relationship]
Visual: [texture, lighting, color]
Camera: [framing strategy, position, movement, rhythm]

[Timestamped storyboard]
00:00-00:0X: [initial state and composition]; [observable action]; [camera or environment change]; [sound event]
00:0X-00:0Y: [progression or turn]; [camera change]; [continuity anchor]
00:0Y-00:ZZ: [result or landing]; [end framing and sound landing]

[Sound]
Dialogue / narration: [speaker, exact text, time, tone]
Music: [style, rhythm, entrance and exit]
Ambience / effects: [key action-synced sounds]

[Negative constraints]
Avoid [specific risk]; do not change [must-keep item].

[Global reinforcement]
Keep [identity, wardrobe, product, spatial direction, light, color, camera language] consistent throughout.
~~~

Delete unused sections and all placeholders.

## Writing Rules

- Prefer observable behavior over abstract emotion.
- When camera movement matters, give its start, direction, speed, and landing.
- Keep spoken text short enough for its time window.
- Keep negative constraints short and specific. Establish the main goal positively.

Proceed to 30-final-review.md once the timeline is continuous, material mapping is explicit, and no style, camera, or action conflict remains.
