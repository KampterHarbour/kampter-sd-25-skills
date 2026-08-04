# Video Extension

Read 00-core-constraints.md first. Use this page only when continuing an existing video. Read 30-final-review.md immediately before delivery.

## Check First

Confirm source-video duration, planned extension duration, and final duration. Apply the extension limits in 00-core-constraints.md before drafting.

## Official Extension Language

Use an explicit extension instruction such as `extend forward`, `extend backward`, `continue`, or `continue writing`. The manual also allows additional image, video, or audio references in this workflow; state what each extra item controls when provided.

For a one-take continuation, state that the extension must be natural, action continuity must be smooth, hard cuts are forbidden, and objects must not appear from nowhere. Use these constraints only when they match the requested effect.

## Choose One Continuity Strategy

| Intent | Use when | Define |
| --- | --- | --- |
| Seamless continuation | The next segment should feel like the next moment in the same shot or scene | Ending state, action direction, camera speed, environment, light, sound, and new action |
| Intentional transition | The extension deliberately enters another scene or time | Trigger, transition method, visual or audio bridge, new scene, and preserved anchors |

Never write only "continue the video." State which ending state becomes the extension's start.

## Official Transition Formula

For an intentional cut or transition, use: transition-type guidance + base constraints + cut logic. Name the transition, define what remains natural and stable, then explain the trigger and scene/framing change. When the user wants creative latitude, the manual permits a set such as natural camera switch, mask transition, ink transition, or similar-object transition for the model to choose from.

## Seamless-Continuation Template

~~~text
Extend forward from the source video's ending for [extension duration] and continue seamlessly. Carry forward [subject pose, action direction, camera position, camera speed, environment, light, and sound state]. Then [new action and causal change]. Continue the camera [movement]. Do not re-establish the scene, hard-cut, or suddenly change the subject's appearance. Finish on [landing state], with sound [continuous ending].
~~~

## Intentional-Transition Template

~~~text
Extend forward from the source video's ending for [extension duration]. At [trigger action / occlusion / sound cue], make a [transition method] from [original scene] into [new scene or time]. Bridge the transition with [color, shape, action, or sound]. After the transition, [new action and camera]. Finish on [result]. Except for explicit changes, keep [subject identity or key object] consistent.
~~~

Proceed to 30-final-review.md when the connection point, continuity strategy, new action, end state, and duration arithmetic are explicit.
