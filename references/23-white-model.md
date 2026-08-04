# White-Model and Previsualization

Read 00-core-constraints.md first. Use this page only for a white model, animatic, blocking, or 3D-previsualization reference. Read 30-final-review.md immediately before delivery.

## Choose the Reference Role

| Reference role | Preserve | Permit redesign |
| --- | --- | --- |
| Coarse motion skeleton | Action timing, blocking, camera position/path, spatial direction | Character design, materials, lighting, color, final environment |
| Fine rendering reference | Geometry, proportions, composition, occlusion, spatial relationship, action, camera timing | Only explicitly permitted material, lighting, weather, or visual-effect changes |

Ask one decisive question when needed: should the reference control only motion and camera, or also composition and spatial detail?

## Official Coarse Pattern

The manual says coarse models currently work better as dynamic skeletons. Use:

1. Reference declaration: name the motion, camera, path, light change, blocking, sound, or rhythm to inherit.
2. Correspondence mapping: map each colored/shape-coded model to a real character, prop, or scene reference.
3. Plot detail: describe action, expression, dialogue, and light by timeline or causal order.
4. Scene treatment: describe the final environment in text or map it to a scene image.
5. Global closing: state final style, quality, consistency, and audio treatment.

If a coarse model has limbs or wings, write the complete action sequence to reduce stiffness. The manual's stated best practice is to avoid uploading coarse limb- or wing-based models when possible.

## Official Fine Pattern

For a fully modeled reference with readable structure and material detail, use:

1. Rendering instruction: render the white-model animation into the final video.
2. Segmented rendering description: define environment, color/mood, character materials, light, and any timed transition.
3. Scene treatment: use text or a mapped scene image.
4. Global closing: state what rendering stays fixed or changes with the scene, plus audio treatment.

Remove trajectory lines, coordinate lines, camera cones, and other guide overlays from the reference video before treating it as fine rendering input.

## Coarse-Skeleton Template

~~~text
[White-model material] controls only character action, blocking, camera position, and camera rhythm. Do not inherit its gray material or unfinished background. Preserve action timing and spatial direction. Redesign the character as [final character], render the scene as [environment], and use [target materials, light, and color]. Resolve contact, weight, clothing, and environment feedback so the result does not look like a white model.
~~~

## Fine-Reference Template

~~~text
Use [fine white model / 3D previs material] for geometry, composition, spatial relationships, action, and camera movement. Preserve [fixed silhouette, proportions, positions, occlusion, and camera timing]. Complete [character materials, environment materials, light, weather, effects, and final style]. Do not unintentionally change the major geometry or camera path.
~~~

Proceed to 30-final-review.md once both the inheritance boundary and the redesign scope are explicit.
