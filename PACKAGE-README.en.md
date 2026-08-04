# Kampter Seedance 2.5 Chinese Skill

This is the standalone Simplified Chinese package for Xiaohongshu distribution. It contains only the Chinese Skill `kampter-sd-25-skills-zh`, without the English edition or full repository documentation.

## Quick Installation (Windows)

1. Extract the ZIP.
2. Open PowerShell in the extracted directory.
3. Run:

~~~powershell
.\install.ps1
~~~

4. Restart or reload the agent host.

The installer copies the Skill to `CODEX_HOME/skills/kampter-sd-25-skills-zh`. When `CODEX_HOME` is not configured, it uses the current user's default Codex Skills directory. If the same Skill already exists, the installer asks before creating a backup and replacing it.

## Manual Installation

Copy the package's complete `kampter-sd-25-skills-zh` folder into the agent's Skills directory.

Invocation example:

~~~text
Use $kampter-sd-25-skills-zh to turn my 12-second coffee launch idea into a Seedance 2.5 prompt.
~~~

This project uses CC BY 4.0. When using, adapting, or redistributing it, credit KampterHarbour, link the original repository and license, and describe modifications.

Full repository, English edition, and changelog: <https://github.com/KampterHarbour/kampter-sd-25-skills>
