# Core Constraints

Load this file for every request immediately after SKILL.md. Load 10-intake-and-routing.md only when the task or brief is incomplete.

## Scope

Use this Skill to discuss and write prompts for the Seedance 2.5 workflow described in the current ByteDance public creation manual. Treat the manual as a product-creation guide, not API documentation.

## Official Ranges

| Scenario | Official range |
| --- | --- |
| Standard generation | 4-30 seconds; 480p or 720p |
| Ultra-long mode | 30-180 seconds |
| Video extension | Source video no longer than 30 seconds; add 4-30 seconds; final video no longer than 60 seconds |
| Reference images | Up to 30 images |
| Reference videos | Up to 10 videos; target each clip at 2-30 seconds; combined duration no longer than 30 seconds. The page also notes a practical 1.8-30.2-second tolerance. |
| Reference audio | Up to 10 audio files; combined duration no longer than 30 seconds |

Classify the task before proposing duration. Do not invent file-format, file-size, pricing, concurrency, seed, sampler, API, or interface claims absent from the official source.

## Officially Described Inputs and Modes

The current manual explicitly describes first-frame, first/last-frame, multimodal-reference, and pure-audio-driven workflows. Its interaction section names the All-in-one Reference, Smart Editing, Ultra-long Video, and First/Last Frame modes. It also lists BGM removal, creative transfer, local erasure/editing, spatial-view changes, voice reference, multi-person reference, green-screen editing, white-model control, seamless video transitions, and multi-grid storyboards.

The manual calls out optimized input languages including Chinese, English, Spanish, Indonesian, and Malay, with broader coverage of Thai, Arabic, Portuguese, Vietnamese, Japanese, and Korean. These are capability notes, not guarantees about any particular generated result.

## Official Prompt Backbone

For a structured prompt, the manual's backbone is:

1. Material description: identify each uploaded item by order and purpose.
2. One-line overview: subject, place, event, genre/style, and special camera language.
3. Concrete plot description: write by timeline or story; each segment may include visuals, camera, action, dialogue, and sound effects.
4. Global supplement at the end: restate persistent camera, environment, sound, mood, lighting, and global exclusions.

This Skill may place UI parameters first and expose sound and negative constraints as separate sections. Those are a readable mapping of the same backbone, not a claim that the manual defines a fixed syntax.

## Prompt Order

Use this order only when the prompt is complex enough to need structure. Omit empty sections.

1. Parameters
2. Material mapping
3. One-line concept
4. Global setup
5. Timestamped storyboard
6. Sound
7. Negative constraints
8. Global reinforcement

Make these answers discoverable: what happens, which material controls what, when each change occurs, how it looks and sounds, and what must remain stable.

## Material Discipline

- Keep the identifier supplied by the user or product UI.
- Give each material one primary role: identity, product shape, composition, action, camera, environment, style, music, voice, or sound effect.
- Do not infer unseen material content. Ask what must be retained or state a placeholder.
- Separate content references from style references so a background, person, or action is not copied accidentally.

## Claim Boundary

Treat the ranges, explicitly listed inputs/modes/capabilities, and prompt backbone above as source-backed facts. Routing rules, templates, examples, question limits, and quality heuristics in this repository are Skill-authored methods.

Load 90-source-notes.md when the user asks for a source, version, or official-support detail. State plainly when the current manual does not specify a fact.

## Do Not Perform

Do not operate a generation site, sign in, upload or download files, call APIs, trigger generation, inspect account state, or promise a generated result. Explain the boundary and continue with prompt preparation.
