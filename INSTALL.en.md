# Install the Standalone Package

The Xiaohongshu bundle contains both standalone editions:

- skills/kampter-sd-25-skills: English edition
- skills/kampter-sd-25-skills-zh: Simplified Chinese edition

## Easy Installation on Windows

1. Extract the package.
2. In PowerShell, run:

~~~powershell
./install.ps1
~~~

3. Choose English or Chinese when prompted.
4. Restart or reload the agent host so it discovers the new Skill.

The installer copies the selected folder into CODEX_HOME/skills. When CODEX_HOME is absent, it uses the current user's default Codex directory. It refuses to overwrite an existing Skill unless you choose the replacement option.

## Manual Installation

Copy one selected folder into the agent's Skills directory:

~~~text
English: <skills-dir>/kampter-sd-25-skills
Chinese: <skills-dir>/kampter-sd-25-skills-zh
~~~

Use one edition at a time unless the host supports both names. The two editions are intentionally separate, and their prompt-writing workflow is identical.
