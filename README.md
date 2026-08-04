# Kampter Seedance 2.5 Prompt Copilot

一个面向 Seedance 2.5 的对话式创意与提示词 Skill。它帮助用户把模糊的视频想法、专业分镜或已有提示词，整理为结构清楚、可直接使用的提示词；同时依据字节跳动官方创作手册控制时长、素材参考和任务边界。

本项目由 [KampterHarbour](https://github.com/KampterHarbour) 维护，属于独立社区项目，不代表或获得字节跳动背书。

## 能做什么

- 与小白一起明确内容、效果、时长、视觉风格、镜头、声音和约束。
- 接受专业用户的分镜、时间码、镜头语言和素材职责，整理为导演级提示词。
- 为新生成、局部编辑、视频延长、白模/预演参考和提示词诊断提供不同工作流。
- 根据官方推荐的顺序组织复杂提示词：参数、素材映射、一句话创意、全局设定、时间戳分镜、声音、负向约束和全局强化。
- 在最终交付前检查时长、素材数量、时间轴、连续性、声音和冲突。

## 不做什么

只做讨论、创意澄清、提示词撰写与诊断。它不会操作网页、登录账号、上传素材、调用 API、自动生成或下载视频，也不会承诺具体生成结果。

## 使用方式

将本仓库放入 Codex 可发现的 Skills 路径：`$CODEX_HOME/skills/kampter-sd-25-skills`。未设置 `CODEX_HOME` 时，使用默认路径 `~/.codex/skills/kampter-sd-25-skills`。

随后在对话中调用：

```text
使用 $kampter-sd-25-skills，帮我把一个 12 秒的新品咖啡短片想法整理成 Seedance 2.5 提示词。
```

你也可以直接给它已有提示词、分镜、参考素材说明或成片偏差。Skill 会根据输入在快速共创、导演协作和提示词诊断之间切换。

## Agent 文档结构

项目采用渐进式加载，避免 Agent 在简单任务中读取全部资料：

| 层级 | 文档 | 使用时机 |
| --- | --- | --- |
| 入口 | [SKILL.md](SKILL.md) | 路由、边界与交付规则 |
| 通用约束 | [00-core-constraints.md](references/00-core-constraints.md) | 每个请求必读 |
| 需求澄清 | [10-intake-and-routing.md](references/10-intake-and-routing.md) | 需求或任务类型不完整时 |
| 任务页 | [`20` 生成](references/20-generation.md)、[`21` 编辑](references/21-editing.md)、[`22` 延长](references/22-extension.md)、[`23` 白模](references/23-white-model.md)、[`24` 诊断](references/24-prompt-diagnosis.md) | 只读当前任务对应页面 |
| 质量门禁 | [30-final-review.md](references/30-final-review.md) | 输出最终提示词前 |
| 溯源 | [90-source-notes.md](references/90-source-notes.md) | 用户询问官方出处、版本或能力支持时 |

每个任务页都明确写出加载顺序、所需输入和退出条件。详细的 Agent 执行协议以 [SKILL.md](SKILL.md) 为准。

## 官方来源与边界

官方创作手册来源：[Seedance 2.5 ByteDance Lark Wiki](https://bytedance.larkoffice.com/wiki/RXh5ww6EqighMdkVTMccm2d4n7e)。在线文档可能更新；涉及具体产品能力时，以官方页面的最新内容为准。

本项目引用的是即梦创作流程资料，不是 Seedance API 文档。路由、模板、示例、质检与对话策略均为本项目的实现方法，不应误称为官方强制语法或参数。

## License and Attribution

本项目使用 [CC BY 4.0](LICENSE)。任何人都可以复制、使用、修改和商业化使用，但二次发布或改编时必须：

1. 标注 `KampterHarbour` 和原始作品 `kampter-sd-25-skills`。
2. 链接回本仓库：<https://github.com/KampterHarbour/kampter-sd-25-skills>。
3. 提供 CC BY 4.0 许可证链接，并明确说明修改内容。

完整署名要求见 [NOTICE](NOTICE)。
