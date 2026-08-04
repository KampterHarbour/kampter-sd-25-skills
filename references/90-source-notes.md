# Source Notes and Citation Discipline

Load this only when a user asks for a source, version, or whether a capability is officially supported. Use 00-core-constraints.md for normal task decisions.

## Primary Source

ByteDance public Lark Wiki, Seedance 2.5 creation manual:
https://bytedance.larkoffice.com/wiki/RXh5ww6EqighMdkVTMccm2d4n7e

Skill source snapshot date: 2026-08-04. The page was re-read from the signed-in view and displayed `Last modified: yesterday 11:47` at snapshot time. The online manual can change; treat its current version as the source of truth for product-status questions.

## Official Ranges and Inputs

- Standard generation: 4-30 seconds at 480p or 720p.
- Ultra-long mode: 30-180 seconds.
- Video extension: source no longer than 30 seconds, add 4-30 seconds, final video no longer than 60 seconds.
- References: up to 30 images; up to 10 videos with no more than 30 seconds combined; up to 10 audio files with no more than 30 seconds combined.
- Reference-video detail: target each clip at 2-30 seconds; the page notes a practical accepted range of 1.8-30.2 seconds.
- Supported workflow inputs include first-frame, first/last-frame, multimodal reference, and pure-audio-driven generation.

## Official Modes and Capabilities

- The interaction section names All-in-one Reference, Smart Editing, Ultra-long Video, and First/Last Frame modes.
- The manual explicitly lists BGM removal, creative transfer, local erasure/editing, spatial-view changes, voice reference, multi-person reference, green-screen editing, white-model control, seamless video transitions, and multi-grid storyboards.
- Input-language notes call out Chinese, English, Spanish, Indonesian, and Malay as optimized, with Thai, Arabic, Portuguese, Vietnamese, Japanese, and Korean also covered.
- These are product-capability descriptions, not quality guarantees for an individual result.

## Official Prompt and Task Practices

- General prompt backbone: material description + one-line overview + concrete plot description + closing global supplement.
- Material description maps each real item identifier to one purpose such as person, voice, action, or scene.
- Timeline segments may combine desired visual content, camera, action, dialogue, and sound effects, with concise exclusions such as no subtitles or BGM.
- For up-to-30-second work, the manual shows a title, multimodal-reference layer, global setting, and timestamped screenplay.
- For ultra-long work, it recommends restating selected global parameters, then using the general prompt backbone.
- Character description formula: age/race, skin, facial details, gaze/inner state, hair, clothing/material, and build/emotion/presence.
- Editing formula: target + action/change + effective timing; Advanced/Video Editing prepends annotation tool and position.
- Extension uses explicit forward/backward/continue language and distinguishes seamless continuation from intentional transition; transition formula is type guidance + base constraints + cut logic.
- Coarse white models act as dynamic skeletons; fine white models act as rendering references, with the corresponding mapping and rendering formulas documented in the manual.

## What the Manual Does Not Establish

- Do not transfer the table's Seedance 2.0-specific file-format, size, pixel, or frame-rate requirements into 2.5 claims unless the current 2.5 page says they apply.
- The page is not API documentation and does not define API fields, authentication, pricing, concurrency, seeds, samplers, or production automation.
- It does not prescribe one mandatory timestamp token syntax beyond using explicit time ranges and seconds in its examples.
- It does not guarantee identity, motion, edit, or rendering quality for a particular generation.

## Skill-Authored Methods

Do not attribute these as ByteDance hard rules:

- Quick co-creation, director collaboration, and diagnosis routing.
- The three-question limit for beginner dialogue.
- Creative brief and delivery formats, templates, examples, and quality gate.
- Advice on shot density, continuity anchors, phrasing, or negative-constraint length.

## Citation Rules

Attribute only the facts in this file to the official manual. When the source does not specify a detail, say that the current manual does not specify it. Distinguish a supported direction from a promised result. Do not describe the manual as Seedance API documentation. Do not claim ByteDance affiliation, endorsement, or ownership of this independent Skill.
