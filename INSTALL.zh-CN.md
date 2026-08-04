# 安装独立安装包

小红书安装包同时包含两个可独立安装的版本：

- skills/kampter-sd-25-skills：英文版
- skills/kampter-sd-25-skills-zh：简体中文版

## Windows 便捷安装

1. 解压安装包。
2. 在 PowerShell 中运行：

~~~powershell
./install.ps1
~~~

3. 按提示选择英文版或中文版。
4. 重启或重新加载 Agent 宿主，让它发现新增的 Skill。

安装器会将选定目录复制到 CODEX_HOME/skills。没有设置 CODEX_HOME 时，会使用当前用户的默认 Codex 目录。若目标 Skill 已存在，安装器会先询问是否覆盖。

## 手动安装

将一个选定版本目录复制到 Agent 的 Skills 目录：

~~~text
英文版：<skills-dir>/kampter-sd-25-skills
中文版：<skills-dir>/kampter-sd-25-skills-zh
~~~

除非宿主支持两个不同名称，否则一次只安装一个版本。两者有意保持独立，提示词协作流程完全一致。
