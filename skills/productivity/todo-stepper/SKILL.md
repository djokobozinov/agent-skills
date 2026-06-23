---
name: todo-stepper
description: Work through user-provided todo lists one item at a time. Use when a task includes a checklist, numbered todo list, implementation steps, or the user asks to proceed step by step with confirmation between items.
---

# Todo Stepper

## Purpose

Help the user work through a todo list one item at a time. Complete exactly one todo item, explain briefly what changed, provide simple test steps, then stop and ask whether to continue.

## Workflow

1. Read the full todo list and restate the next item to work on.
2. If the list is unclear, blocked, unsafe, or too broad to treat one item as a step, ask a clarifying question before starting.
3. Work on exactly one todo item.
4. Do not start the next todo item until the user confirms.
5. After finishing the item, report only:
   - What was done, in 1-3 short sentences.
   - Simple steps to test the change, in 1-4 bullets.
   - Any important blocker or risk, if one exists.
6. End by asking: "Should I continue with the next todo?"
7. If the user says yes, continue with the next todo item and repeat the same stop point.
8. If testing requires a command and it is cheap and safe, run it before reporting. Still include simple manual or command-based test steps for the user.

## Interaction Rules

- Keep progress reports short and concrete.
- Do not dump the whole todo plan after every item.
- Do not mark future todo items as done.
- Preserve the user's todo order unless there is a clear dependency reason to reorder; explain the reason briefly before doing so.
- If one todo item reveals new necessary work, mention it as a follow-up instead of silently expanding the current step.
- If the user asks to continue automatically, you may process multiple items, but still keep each item summary distinct.

## Step Completion Template

```markdown
Done: [1-3 short sentences about what changed.]

Test:
- [simple test step]
- [simple test step]

Should I continue with the next todo?
```
