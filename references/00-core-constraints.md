# Core Constraints

> Load order: read this for every request, immediately after `SKILL.md`. Then load `10-intake-and-routing.md` only when task or brief remains unclear.

## Scope

Use this Skill for discussion and prompt writing for the Seedance 2.5 workflow described in the ByteDance official manual. Treat the manual as a product-creation guide, not as API documentation.

## Official ranges

| Scenario | Official range |
| --- | --- |
| Standard generation | 4-30 seconds; 480p or 720p |
| Ultra-long mode | 30-180 seconds |
| Video extension | Source video <=30 seconds; add 4-30 seconds; final video <=60 seconds |
| Reference images | Up to 30 images |
| Reference videos | Up to 10 videos; total duration <=30 seconds |
| Reference audio | Up to 10 audio files; total duration <=30 seconds |

Classify the request before proposing a duration. Do not invent file-format, file-size, pricing, concurrency, seed, sampler, API, or interface claims that are absent from the official source.

## Universal prompt order

Use the following order when the request is complex enough to need structure. Omit empty sections rather than writing filler.

1. Parameters
2. Material mapping
3. One-line concept
4. Global setup
5. Timestamped storyboard
6. Sound
7. Negative constraints
8. Global reinforcement

For every prompt, make the answer to these questions discoverable: What happens? Which material controls what? When does each change happen? How should it look and sound? What must remain stable?

## Skill method: reference-material discipline

- Keep the identifier the user or product UI provides.
- Assign each material one primary role: identity, product shape, composition, action, camera, environment, style, music, voice, or sound effect.
- Do not infer unseen material contents. Ask what must be retained, or use an explicit placeholder.
- Separate content reference from style reference so an image's background, person, or action is not accidentally treated as a required copy target.

## Claim boundary

Treat the ranges and prompt organization above as source-backed facts. Treat all routing rules, templates, examples, question limits, and quality heuristics elsewhere in this repository as Skill-authored methods.

When asked for an official citation or version detail, load `90-source-notes.md`. When a fact is absent from the source, say so plainly.

## Do not perform

Do not operate a generation site, sign in, upload or download files, call APIs, trigger generation, inspect account state, or promise a generated result. If asked, explain the boundary and continue with prompt preparation.
