# Install the Standalone Package

The Xiaohongshu bundle contains the Simplified Chinese edition only:

~~~text
kampter-sd-25-skills-zh
~~~

It does not include the English edition or a copy of the full repository.

## Easy Installation on Windows

1. Extract the package.
2. Open PowerShell in the extracted directory.
3. Run:

~~~powershell
.\install.ps1
~~~

4. Restart or reload the agent host so it discovers the new Skill.

The installer copies `kampter-sd-25-skills-zh` into `CODEX_HOME/skills`. When `CODEX_HOME` is absent, it uses the current user's default Codex Skills directory. If the target already exists, the installer asks before creating a recoverable backup and replacing it.

## Manual Installation

Copy the package's `kampter-sd-25-skills-zh` folder into the agent's Skills directory:

~~~text
<skills-dir>/kampter-sd-25-skills-zh
~~~

Install the English edition from the repository root instead of this Xiaohongshu bundle.
