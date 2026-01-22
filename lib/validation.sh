#!/usr/bin/env bash

require_non_empty() {
  local value="$1"
  local name="$2"

  if [[ -z "$value" ]]; then
    log ERROR "$name cannot be empty"
    exit 1
  fi
}

