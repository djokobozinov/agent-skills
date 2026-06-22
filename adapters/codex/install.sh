#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
SOURCE_DIR="$ROOT_DIR/skills"
TARGET_DIR="$HOME/.codex/skills"

mkdir -p "$TARGET_DIR"

install_skill() {
  local skill_file="$1"
  skill_dir="$(dirname "$skill_file")"
  skill_name="$(basename "$skill_dir")"
  target_file="$TARGET_DIR/$skill_name.md"

  cp "$skill_file" "$target_file"

  echo "Installed Codex skill prompt: $skill_name"
}

walk_skills() {
  local dir="$1"

  if [ -f "$dir/SKILL.md" ]; then
    install_skill "$dir/SKILL.md"
  fi

  for child in "$dir"/*; do
    if [ -d "$child" ]; then
      walk_skills "$child"
    fi
  done
}

walk_skills "$SOURCE_DIR"
