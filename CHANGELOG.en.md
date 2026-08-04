# Changelog

This project follows Semantic Versioning. Tags use the v prefix.

## v0.1.2 - 2026-08-04

### Fixed

- Replaced the Xiaohongshu distribution bundle with a Simplified Chinese-only package.
- Removed the English Skill and full-repository public-document set from the Xiaohongshu archive.

### Added

- Added a dedicated Chinese installer that installs `kampter-sd-25-skills-zh` without a language-selection step.
- Added package validation that rejects English Skill files, nested `skills` directories, and English documentation in the Xiaohongshu archive.
- Added paired English and Chinese package documentation plus a bilingual documentation index.
- Added structural parity validation for public documents, both Skill definitions, agent metadata, and every progressive reference page.

## v0.1.1 - 2026-08-04

### Added

- Added a standalone Chinese edition at zh-CN with its own SKILL.md, agent metadata, and complete progressive reference set.
- Added paired English and Chinese public documentation for README, changelog, attribution notice, license guidance, and installation.
- Added a local Xiaohongshu distribution bundle containing both editions and a language-selection installer.
- Added release validation that checks version alignment, required bilingual pairs, and package contents.

### Changed

- Kept the repository-root English edition as kampter-sd-25-skills for compatibility.
- Assigned the independent Chinese edition the collision-safe name kampter-sd-25-skills-zh.
- Standardized the official-fact boundary and advisory-only scope across both editions.

## v0.1.0 - 2026-08-04

- Added the initial Seedance 2.5 conversational prompt copilot.
- Added progressive, task-specific agent documentation and release metadata.
