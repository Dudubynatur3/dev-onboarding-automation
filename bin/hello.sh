#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

source "$PROJECT_ROOT/lib/logging.sh"
source "$PROJECT_ROOT/lib/validation.sh"
source "$PROJECT_ROOT/lib/fs.sh"

echo "Enter username:"
read USERNAME

require_non_empty "$USERNAME" "Username"

CHANGES_MADE=false
ensure_directory "$HOME/projects"

if [[ "$CHANGES_MADE" == true ]]; then
  log INFO "System state changed successfully"
else
  log INFO "System already compliant — no changes required"
fi

