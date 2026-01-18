#!/usr/bin/env bash
set -euo pipefail

validate_name() {
  local name="$1"

  if [ -z "$name" ]; then
    echo "ERROR: name cannot be empty" >&2
    return 1
  fi
}

echo "Enter your name:"
read USER_NAME

if validate_name "$USER_NAME"; then
  echo "Validation succeeded"
else
  echo "Validation failed but handled safely"
fi

echo "Script completed"
