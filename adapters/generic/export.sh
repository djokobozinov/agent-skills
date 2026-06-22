#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
SOURCE_DIR="$ROOT_DIR/skills"
OUTPUT_DIR="$ROOT_DIR/dist/generic"

mkdir -p "$OUTPUT_DIR"

export_skill() {
  local skill_file="$1"
  skill_dir="$(dirname "$skill_file")"
  skill_name="$(basename "$skill_dir")"
  cp "$skill_file" "$OUTPUT_DIR/$skill_name.md"

  echo "Exported generic skill: $skill_name"
}

walk_skills() {
  local dir="$1"

  if [ -f "$dir/SKILL.md" ]; then
    export_skill "$dir/SKILL.md"
  fi

  for child in "$dir"/*; do
    if [ -d "$child" ]; then
      walk_skills "$child"
    fi
  done
}

walk_skills "$SOURCE_DIR"
