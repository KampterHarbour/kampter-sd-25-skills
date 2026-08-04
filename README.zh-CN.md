# Kampter Seedance 2.5 提示词协作 Skill

这是一个独立的对话式 Skill，用于把创意想法、分镜、素材职责或已有提示词整理为清晰可用的 Seedance 2.5 提示词。凡是字节公开创作手册明确说明的能力与范围，Skill 会据此工作；协作流程、模板和检查项则明确标注为本项目的方法。

由 [KampterHarbour](https://github.com/KampterHarbour) 维护。本项目是社区项目，不代表也未获得字节跳动背书。

当前版本：v0.1.2。查看[变更日志](CHANGELOG.zh-CN.md)。

## 选择版本

| 版本 | 安装目录 | Skill 名称 | 文档语言 |
| --- | --- | --- | --- |
| 英文版 | 仓库根目录 | kampter-sd-25-skills | English |
| 中文版 | zh-CN | kampter-sd-25-skills-zh | 简体中文 |

两套 Skill 的流程、边界、官方事实范围、模板和版本完全一致；为避免本地 Skill 名称冲突，中文版本使用独立名称。

## 能做什么

- 与小白或专业导演一起明确内容、观众感受、时长、视觉、镜头、声音与限制。
- 为新生成、已有视频编辑、视频延长、白模/预演和提示词诊断选择对应模板。
- 按参数、素材对应、一句话创意、全局设定、时间戳分镜、声音、负向约束、全局强化组织复杂提示词。
- 在交付前检查时长、素材上限、时间轴连续性、素材职责、声音与指令冲突。

## 不做什么

本版本只讨论、澄清、撰写和诊断提示词。不会操作网页、登录、上传素材、调用 API、生成或下载视频，也不会自动化生产流程。

## Agent 文档结构

每个语言版本都采用渐进式加载：

1. SKILL.md：路由、边界与交付规则。
2. references/00-core-constraints.md：每个请求必读。
3. references/10-intake-and-routing.md：仅在需求不完整或需要识别任务时读取。
4. references/20 到 references/24：只读当前任务需要的一个或多个任务页。
5. references/30-final-review.md：最终交付前读取。
6. references/90-source-notes.md：仅在用户询问出处或官方支持时读取。

所有参考文件都直接位于各自 SKILL.md 下一层。Agent 只应读取当前任务所需的页面。

## 安装

将选定的语言版本目录复制到 Codex 可发现的 Skills 目录：

- 英文版：CODEX_HOME/skills/kampter-sd-25-skills
- 中文版：CODEX_HOME/skills/kampter-sd-25-skills-zh

没有设置 CODEX_HOME 时，使用 Codex 的默认 Skills 目录。适合小红书分发的独立安装包只包含简体中文版、中文专用安装器和精简的本地说明，不再附带英文版或完整仓库目录。详见 [INSTALL.zh-CN.md](INSTALL.zh-CN.md) 和 [PACKAGE-README.zh-CN.md](PACKAGE-README.zh-CN.md)。

调用示例：

~~~text
使用 $kampter-sd-25-skills-zh，帮我把一个 12 秒的咖啡新品短片想法整理成 Seedance 2.5 提示词。
~~~

## 官方来源与声明边界

主要来源：[Seedance 2.5 字节跳动 Lark Wiki](https://bytedance.larkoffice.com/wiki/RXh5ww6EqighMdkVTMccm2d4n7e)。

Skill 将其视为产品创作手册，不是 API 文档。在线来源可能更新；涉及产品能力时以官方页面当前内容为准。具体可引用事实见各版本的 references/90-source-notes.md。

## 许可与署名

本项目使用 [CC BY 4.0](LICENSE)。你可以使用、改编、再发布和商业化使用，但二次作品必须署名 KampterHarbour 与原始仓库、链接许可证并说明修改内容。详见 [NOTICE.zh-CN.md](NOTICE.zh-CN.md)。
