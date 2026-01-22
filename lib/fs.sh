#!/usr/bin/env bash

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

