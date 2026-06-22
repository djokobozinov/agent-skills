# Model-Invoked vs User-Invoked

Every `SKILL.md` in this repo is split by who can invoke it.

## User-Invoked

User-invoked skills are reachable only when the human types the skill name, such as `/understand-task`.

Use:

```yaml
disable-model-invocation: true
```

For user-invoked skills, keep the `description` human-facing and short. Do not add trigger lists like "Use when the user says...".

## Model-Invoked

Model-invoked skills are reachable by the model or the user.

For model-invoked skills, omit `disable-model-invocation`. The `description` should include rich trigger phrasing so the model knows when to use it.

## Rule of Thumb

- Use user-invoked skills for orchestrated workflows the human intentionally starts.
- Use model-invoked skills for reusable discipline the model can apply automatically.

Bucket `README.md` files and the top-level `README.md` should group entries into **User-invoked** and **Model-invoked**.
