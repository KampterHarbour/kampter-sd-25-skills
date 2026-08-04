# Video Editing

> Load order: read `00-core-constraints.md` first. Use this page only when an existing video is being changed. Read `30-final-review.md` immediately before delivery.

## Required inputs

- Target object, person, region, or attribute
- Requested change
- Effective start and end time
- Location or user annotation when the target is not unambiguous
- Elements that must remain unchanged

Do not default to remaking the full video when the user asks for a local modification.

## Core instruction

Write the edit as:

> Target + requested change + effective time

For advanced edits, add a visible location or the user’s annotation name. Separate the edit request from the preservation requirements.

## Prompt template

```text
[任务]
编辑已有视频。

[编辑指令]
在[起止时间]，将[目标对象]的[属性/动作/内容]改为[期望变化]。
位置：[画面区域或用户标注名称；仅在需要时填写]。

[保持不变]
保持[人物身份、其他对象、背景、构图、运镜、时长、声音和未编辑时段]不变。

[结果要求]
变化从[触发点]自然开始，在[结束点]完成；保持边缘、遮挡、透视、光影和运动连续。
```

## Precision rules

- 明确视觉目标，不要只说“把它改掉”。
- State whether the change is local, time-bounded, or global.
- Preserve relative size, perspective, occlusion, reflection, and interaction when they matter.
- Avoid ambiguous global style instructions unless the user explicitly requests a full-video change.

## Exit criteria

Proceed to `30-final-review.md` when the edit’s target, change, effective time, scope, and preservation set are all explicit.
