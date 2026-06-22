---
name: understand-task
description: Understand a pasted task step by step before implementation.
disable-model-invocation: true
---

# Understand Task

## Purpose

Help the user understand a pasted task before implementation. Inspect the current project enough to ground the explanation in real files, conventions, and behavior.

Do not edit files or implement the task unless the user explicitly asks after the understanding workflow is complete.

## Workflow

1. Read the pasted task carefully.
2. Restate the task in plain language.
3. Inspect the current project for relevant context before explaining implementation details.
4. If anything is unclear, contradictory, missing, or risky, ask clarifying questions before continuing.
5. Break the task into small learning steps and decide the total number of steps before presenting Step 1.
6. Present exactly one step at a time. Use a heading such as `Step 2 of 10: Update the API contract`.
7. Keep each step short and easy to understand: 3-6 short sentences or 3-5 bullets maximum.
8. After every step, stop and ask: "Did you understand this step?"
9. Wait for the user's confirmation before continuing to the next step.
10. If the user says they did not understand, explain the same step again using simpler language, examples, or project-specific references. Then ask again.
11. If the user asks a question, answer it first, then ask whether they are ready to continue.
12. After all steps are understood, summarize the full task and ask whether the user wants a plan, implementation, tests, or more explanation.

## Interaction Rules

- Be patient and instructional.
- Use short, clear, concrete language.
- Avoid jargon where possible. When jargon is necessary, explain it in one simple sentence.
- Prefer project-specific explanations over generic explanations.
- Keep each step focused; do not dump the whole plan at once.
- Do not continue past a step until the user confirms understanding.
- Ask clarifying questions whenever the task or project context leaves important ambiguity.
- If the task requires changes across multiple repositories, identify which repository each step belongs to.
- If the task appears unsafe, destructive, security-sensitive, or migration-related, call that out before explaining the step.

## First Response Template

```markdown
I’ll help you understand this task step by step. First I’m going to read the task, inspect the current project for the relevant files and patterns, and then I’ll explain one step at a time.

Before we start, here is my plain-language read of the task:
[short restatement]

[Ask clarifying questions if needed, otherwise begin Step 1.]
```

## Step Template

```markdown
### Step [number] of [total]: [short title]

[Explain what this step means in 3-6 short sentences or 3-5 bullets.]

In this project, this connects to `[file-or-symbol]` because [reason].

[Mention important decisions, risks, or assumptions if relevant.]

Did you understand this step?
```
