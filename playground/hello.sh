#!/usr/bin/env bash
set -euo pipefail

# Demonstrates how Bash exits immediately on command failure
echo "Before failure"
ls /this/path/does/not/exist
echo "After failure"
