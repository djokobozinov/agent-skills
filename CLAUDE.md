# Agent Skills Repo Rules

Skills are organized into bucket folders under `skills/`:

- `engineering/` — daily code work
- `productivity/` — daily non-code workflow tools
- `misc/` — kept around but rarely used
- `personal/` — tied to a personal setup, not promoted
- `in-progress/` — drafts not ready to ship
- `deprecated/` — no longer used

Every shipped skill in `engineering/`, `productivity/`, or `misc` must have:

- a reference in the top-level `README.md`
- a reference in its bucket `README.md`
- an entry in `.claude-plugin/plugin.json`

Skills in `personal/`, `in-progress/`, and `deprecated/` must not appear in the top-level `README.md` or `.claude-plugin/plugin.json`.

Every `SKILL.md` is either user-invoked or model-invoked. See `docs/invocation.md`.
