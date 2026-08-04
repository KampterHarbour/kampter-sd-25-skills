# 安装小红书中文独立包

小红书安装包只包含简体中文版：

~~~text
kampter-sd-25-skills-zh
~~~

安装包不包含英文版，也不会复制完整仓库目录。

## Windows 便捷安装

1. 解压安装包。
2. 在解压后的目录中打开 PowerShell。
3. 运行：

~~~powershell
.\install.ps1
~~~

4. 重启或重新加载 Agent 宿主，让它发现新增的 Skill。

安装器会把 `kampter-sd-25-skills-zh` 复制到 `CODEX_HOME/skills`。没有设置 `CODEX_HOME` 时，会使用当前用户的默认 Codex Skills 目录。若目标 Skill 已存在，安装器会先询问是否创建可恢复备份后替换。

## 手动安装

把安装包中的 `kampter-sd-25-skills-zh` 文件夹完整复制到 Agent 的 Skills 目录：

~~~text
<skills-dir>/kampter-sd-25-skills-zh
~~~

英文版仍从仓库根目录安装，不包含在这个小红书分发包中。
