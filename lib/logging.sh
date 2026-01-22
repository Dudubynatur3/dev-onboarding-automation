#!/usr/bin/env bash

log() {
  local level="$1"
  local message="$2"
  printf "[%s] %s\n" "$level" "$message"
}

