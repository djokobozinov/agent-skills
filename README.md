# Agent Skills

[![skills.sh](https://skills.sh/b/djokobozinov/agent-skills)](https://skills.sh/djokobozinov/agent-skills)

Small, portable agent skills for real development workflows.

These skills are designed to be short, easy to adapt, and usable across Cursor, Claude-compatible tools, Codex, and generic markdown prompt workflows.

## Quickstart

Install from GitHub with the skills.sh installer:

```bash
npx skills@latest add djokobozinov/agent-skills
```

Pick the skills you want, then choose which coding agents to install them into.

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

