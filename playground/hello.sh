#!/usr/bin/env bash
set -euo pipefail

# ---------- Logging ----------
log() {
  local level="$1"
  local message="$2"
  printf "[%s] %s\n" "$level" "$message"
}

# ---------- Input ----------
echo "Enter username:"
read USERNAME

if [[ -z "$USERNAME" ]]; then
  log ERROR "Username cannot be empty"
  exit 1
fi

# ---------- State ----------
CHANGES_MADE=false

# ---------- Idempotent Directory ----------
ensure_directory() {
  local dir="$1"

  if [[ -d "$dir" ]]; then
    log INFO "Directory '$dir' already exists — no action taken"
  else
    mkdir -p "$dir"
    log INFO "Directory '$dir' created"
    CHANGES_MADE=true
  fi
}

ensure_directory "$HOME/projects"

# ---------- Final State Report ----------
if [[ "$CHANGES_MADE" == true ]]; then
  log INFO "System state changed successfully"
else
  log INFO "System already compliant — no changes required"
fi
