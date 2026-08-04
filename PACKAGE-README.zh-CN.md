# Kampter Seedance 2.5 中文 Skill

这是面向小红书分发的简体中文独立安装包。它只包含中文 Skill `kampter-sd-25-skills-zh`，不包含英文版或完整仓库文档。

## 快速安装（Windows）

1. 解压 ZIP。
2. 在解压后的目录中打开 PowerShell。
3. 运行：

~~~powershell
.\install.ps1
~~~

4. 重启或重新加载 Agent 宿主。

安装器会复制到 `CODEX_HOME/skills/kampter-sd-25-skills-zh`。未设置 `CODEX_HOME` 时，使用当前用户的默认 Codex Skills 目录。若已有同名 Skill，安装器会先询问是否创建备份再替换。

## 手动安装

把本包中的 `kampter-sd-25-skills-zh` 文件夹完整复制到 Agent 的 Skills 目录即可。

调用示例：

~~~text
使用 $kampter-sd-25-skills-zh，帮我把一个 12 秒的咖啡新品短片想法整理成 Seedance 2.5 提示词。
~~~

本项目采用 CC BY 4.0。使用、改编或再发布时，请署名 KampterHarbour、链接原始仓库与许可证，并说明改动。

完整仓库、英文版与变更日志：<https://github.com/KampterHarbour/kampter-sd-25-skills>
