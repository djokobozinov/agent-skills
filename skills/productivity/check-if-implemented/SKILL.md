---
name: check-if-implemented
description: Check whether a prompted task is already implemented in the current project.
disable-model-invocation: true
---

# Check If Implemented

## Purpose

Help the user verify whether a pasted task is already implemented. Inspect the current project, break the task into small requirement checks, and mark each check as implemented or not implemented.

Do not edit files or implement missing work unless the user explicitly asks after the check is complete.

## Workflow

1. Read the user's task carefully and restate it in plain language.
2. Inspect the current project for relevant files, tests, routes, UI, schemas, configuration, and documentation.
3. Break the task into small, concrete implementation checks.
4. For each check, decide whether the current project provides enough evidence that it is implemented.
5. Mark implemented items with `[x]` and missing items with `[ ]`.
6. Include short evidence for each item, using project-specific file or symbol references when possible.
7. If evidence is inconclusive, mark the item `[ ]` and label it `Unknown` rather than guessing.
8. Summarize what is implemented, what is missing, and the smallest next step if the user wants to continue.

## Status Rules

- `[x] Implemented` means the behavior exists in the current project and there is concrete evidence.
- `[ ] Not implemented` means the behavior is absent, incomplete, stubbed, unreachable, or contradicted by tests or code.
- `[ ] Unknown` means the project does not provide enough evidence to confirm the behavior.
- Prefer conservative judgments. Do not mark an item implemented because a similarly named file, TODO, mock, or partial scaffold exists.
- If tests exist, use them as supporting evidence, but verify the implementation too when possible.
- If the task spans multiple layers, split checks by observable behavior rather than by file names.

## Output Format

```markdown
I checked the current project against this task:
[one-sentence restatement]

### Implementation Checklist

- [x] Implemented: [small requirement]
  Evidence: `[file-or-symbol]` shows [brief reason].
- [ ] Not implemented: [small requirement]
  Evidence: I found [what exists or what is missing].
- [ ] Unknown: [small requirement]
  Evidence: I could not confirm this from the available project files.

### Summary

[1-3 short sentences covering what is done, what is missing, and the recommended next step.]
```

## Interaction Rules

- Be specific and evidence-backed.
- Keep each checklist item small enough that it can be implemented or verified independently.
- Use clear language and avoid overexplaining obvious code.
- Ask clarifying questions if the task is ambiguous enough that different checklists would be valid.
- Do not turn the check into a full implementation plan unless the user asks for one.
