# Kampter Seedance 2.5 Prompt Copilot

An independent, conversational Skill for turning an idea, storyboard, reference-material plan, or existing prompt into a clear Seedance 2.5 prompt. It follows the public ByteDance creation manual where the manual is explicit, while keeping the collaboration workflow, templates, and checks clearly identified as Skill-authored guidance.

Maintained by [KampterHarbour](https://github.com/KampterHarbour). This is a community project and is not affiliated with or endorsed by ByteDance.

Current version: v0.1.3. See [CHANGELOG.en.md](CHANGELOG.en.md).

## Choose an Edition

| Edition | Installation folder | Skill name | Documentation language |
| --- | --- | --- | --- |
| English | repository root | kampter-sd-25-skills | English |
| Chinese | zh-CN | kampter-sd-25-skills-zh | Simplified Chinese |

Both editions have the same workflow, boundaries, official-fact set, templates, and release version. They differ only in instruction language and the name required to avoid a local skill-name collision.

## What It Does

- Clarifies a video concept, desired audience effect, duration, visual language, camera, sound, and constraints with beginners or directors.
- Routes new generation, video editing, extension, white-model/previsualization, and prompt-diagnosis work to the appropriate template.
- Reflects the current manual's documented ranges, pure-audio-driven input, reference limits, editing annotations, extension patterns, and coarse/fine white-model guidance.
- Organizes complex prompts as parameters, material mapping, one-line concept, global setup, timestamped storyboard, sound, negative constraints, and global reinforcement.
- Checks duration, material limits, timeline continuity, reference roles, sound, and conflicting instructions before delivery.

## What It Does Not Do

This release only discusses, clarifies, writes, and diagnoses prompts. It does not operate websites, sign in, upload material, call an API, generate or download video, or automate production.

## Agent Documentation

Each edition uses progressive loading:

1. SKILL.md: routing, boundaries, and delivery rules.
2. references/00-core-constraints.md: required for every request.
3. references/10-intake-and-routing.md: only for incomplete briefs or task selection.
4. One or more task pages from references/20 through references/24.
5. references/30-final-review.md: immediately before final delivery.
6. references/90-source-notes.md: only for source or official-support questions.

All reference files sit one directory below their edition's SKILL.md. An agent should load only the pages needed for the current task.

## Install

For normal installation, copy the chosen edition folder to a discoverable Codex Skills directory:

- English: CODEX_HOME/skills/kampter-sd-25-skills
- Chinese: CODEX_HOME/skills/kampter-sd-25-skills-zh

When CODEX_HOME is not configured, use the default Codex Skills directory. The standalone Xiaohongshu package contains the Simplified Chinese edition only, together with a dedicated Chinese installer and concise local documentation. Install the English edition from the repository root. See [INSTALL.en.md](INSTALL.en.md) and [PACKAGE-README.en.md](PACKAGE-README.en.md).

Invoke an installed edition, for example:

~~~text
Use $kampter-sd-25-skills to turn my 12-second coffee launch idea into a Seedance 2.5 prompt.
~~~

## Official Source and Claim Boundary

Primary source: [Seedance 2.5 ByteDance Lark Wiki](https://bytedance.larkoffice.com/wiki/RXh5ww6EqighMdkVTMccm2d4n7e).

The Skill treats that page as a product-creation guide, not API documentation. The online source can change. Use its current version for product-status questions. See references/90-source-notes.md for the exact fact boundary.

## License and Attribution

This project is licensed under [CC BY 4.0](LICENSE). You may use, adapt, redistribute, and use it commercially, provided that derivatives give attribution to KampterHarbour and the original repository, link to the license, and indicate changes. See [NOTICE.en.md](NOTICE.en.md).
