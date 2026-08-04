# New Generation

> Load order: read `00-core-constraints.md` first. Use this page only for a new video or a new video controlled by reference materials. Read `30-final-review.md` immediately before delivery.

## Required inputs

- Total duration and delivery direction
- One-line concept: subject + setting + visible change + intended effect
- Reference-material roles, when materials exist
- Visual/camera direction, sound direction, and key constraints

Use `10-intake-and-routing.md` to resolve missing high-impact inputs before drafting.

## Compose in causal order

1. Establish the initial frame and the subject state.
2. Describe one primary visible action or change per time segment.
3. State camera movement only when it supports the action or reveal.
4. End with a clear result, product reveal, emotional landing, or transition point.
5. Place cross-shot invariants in global reinforcement instead of repeating them in every segment.

Keep time segments continuous and make their final endpoint equal the requested duration.

## Map materials explicitly

Use concrete role statements. Keep each reference’s scope narrow enough to avoid accidental copying.

```text
图片1：参考主角面部、发型和服装；不参考背景。
图片2：参考产品造型、颜色和标志位置。
视频1：参考 00:02-00:05 的手部动作节奏；不复制人物外观。
视频2：参考低机位缓慢环绕的运镜方式。
音频1：参考轻柔女声音色与语气；使用指定的新旁白文本。
```

Replace every example identifier with the user’s actual identifier. If a material is unseen, use a placeholder or ask a question instead of inventing its content.

## Prompt template

```text
[参数]
任务：生成视频
时长：[总时长]
分辨率：[仅填写用户选择且官方范围支持的值]
画幅/交付方向：[用户要求]

[素材对应]
[素材标识]：用于[单一明确职责]

[一句话创意]
[谁]在[场景]中[发生关键变化]，最终传达[效果]。

[全局设定]
主体：[身份、外观、服装与一致性锚点]
环境：[地点、时间、天气、空间关系]
视觉：[质感、光线、色彩]
摄影：[景别策略、机位、运动、节奏]

[时间戳分镜]
00:00-00:0X：[初态与构图]；[可观察动作]；[镜头/环境变化]；[声音事件]
00:0X-00:0Y：[推进或转折]；[镜头变化]；[连续性锚点]
00:0Y-00:ZZ：[结果或收束]；[结束构图与声音落点]

[声音]
台词/旁白：[说话者、准确文本、时间、语气]
音乐：[风格、节奏、进入与退出]
环境声/音效：[与动作同步的关键声音]

[负向约束]
避免[会直接破坏目标的具体问题]；不要改变[必须保留项]。

[全局强化]
全片保持[人物/服装/产品/空间方向/光线/色彩/镜头语言]一致。
```

Delete unused sections. Do not leave bracketed placeholders in a final prompt.

## Writing rules

- Prefer observable action over abstract emotion: describe breath, gaze, posture, and timing instead of only “紧张”.
- Specify camera start, direction, speed, and landing when camera movement matters.
- Keep spoken text short enough for its time window; do not force a sound layer where silence is better.
- Keep negative constraints short and specific. Use positive descriptions to establish the main goal.

## Exit criteria

Proceed to `30-final-review.md` when the prompt has a continuous timeline, explicit material mapping, and no unresolved style/camera/action conflict.
