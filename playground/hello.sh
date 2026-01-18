#!/usr/bin/env bash
set -euo pipefail

TMP_FILE="$(mktemp)"

cleanup() {
  rm -f "$TMP_FILE"
  echo "Cleanup complete"
}

trap cleanup EXIT

perform_task() {
  echo "Performing task..."
  false
}

perform_task

echo "Task completed"
