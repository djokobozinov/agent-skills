# Agent Skills

[![skills.sh](https://skills.sh/b/djokobozinov/agent-skills)](https://skills.sh/djokobozinov/agent-skills)

Small, portable agent skills for real development workflows.

These skills are designed to be short, easy to adapt, and usable across Cursor, Claude-compatible tools, Codex, and generic markdown prompt workflows.

## Skills

### User-Invoked

- [`check-if-implemented`](./skills/productivity/check-if-implemented/SKILL.md) — Check whether a prompted task is already implemented in the current project.
- [`test-ui-changes`](./skills/productivity/test-ui-changes/SKILL.md) — Compare implemented changes with a ticket and guide manual UI testing one small step at a time.
- [`understand-task`](./skills/productivity/understand-task/SKILL.md) — Understand a pasted task step by step before implementation.

### Model-Invoked

- [`todo-stepper`](./skills/productivity/todo-stepper/SKILL.md) — Work through user-provided todo lists one item at a time.

## Quickstart

Install from GitHub with the skills.sh installer:

```bash
npx skills@latest add djokobozinov/agent-skills
```

Pick the skills you want, then choose which coding agents to install them into.

## Available Skills

### Productivity

#### `check-if-implemented`

Use this when you want an agent to check whether a pasted task is already implemented in the current project.

The skill makes the agent restate the task, inspect relevant project files, split the task into small implementation checks, and produce an evidence-backed checklist of implemented, missing, or unknown items.

This is useful for:

- Auditing a ticket or prompt before starting implementation.
- Finding which parts of a requested change already exist.
- Separating real implementation from TODOs, stubs, mocks, or partial scaffolding.
- Deciding the smallest next step after the current project state is clear.

Invoke it directly when pasting a task you want checked. It is user-invoked, so agents should not automatically start this workflow unless you request it.

#### `test-ui-changes`

Use this after implementing a UI ticket when you want to test the result manually, without receiving a large checklist all at once.

The skill compares the ticket with the implementation, identifies coverage and gaps, creates a focused manual test plan, and gives you exactly one small UI test at a time. It waits for your pass, fail, blocked, or skip result before continuing.

This is useful for:

- Checking that every acceptance criterion has an observable UI test.
- Finding requirements that are missing, partial, or not testable through the UI.
- Testing happy paths, relevant edge cases, and regressions in a controlled sequence.
- Keeping a final record of passed, failed, blocked, and skipped checks.

Invoke it directly with a ticket and the changes you want tested. It is user-invoked, so agents should not automatically start this workflow unless you request it.

#### `understand-task`

Use this when you want an agent to help you understand a pasted task before any implementation starts.

The skill makes the agent restate the task in plain language, inspect the project for relevant files and conventions, and explain the work one small step at a time. After each step, the agent stops and checks that you understood before continuing.

This is useful for:

- Turning a dense ticket, spec, or bug report into plain language.
- Learning how a task connects to the current codebase.
- Identifying unclear requirements, risks, or missing context before coding.
- Moving from understanding to a plan, implementation, tests, or deeper explanation only when you ask.

Invoke it directly when pasting a task you want explained. It is user-invoked, so agents should not automatically start this workflow unless you request it.

#### `todo-stepper`

Use this when a task includes a checklist, numbered todo list, implementation steps, or asks the agent to proceed step by step with confirmation between items.

The skill makes the agent complete exactly one todo item at a time. After each item, the agent briefly explains what was done, gives simple steps to test the change, and asks whether to continue with the next todo.

This is useful for:

- Working through implementation checklists without skipping ahead.
- Keeping progress updates short and concrete.
- Getting test steps after each small change.
- Staying in control of when the agent continues.

## Local Development

If you have this repository checked out locally, you can also install directly from the working tree.

Install for Cursor:

```bash
./adapters/cursor/install.sh
```

Install for Claude-compatible tools:

```bash
./adapters/claude/install.sh
```

Install for Codex:

```bash
./adapters/codex/install.sh
```

Export generic markdown prompts into `dist/generic/`:

```bash
./adapters/generic/export.sh
```
