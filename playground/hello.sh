#!/usr/bin/env bash
set -euo pipefail
say_hello() {
    local name="$1"
    if [ "$name" = "Segun" ]; then
        echo "Hello, Segun! Welcome back!"
    else
        echo "Hello, $name i no know you for bash scripting"
    fi
}
echo "what is your name?"
read -r user_name
say_hello "$user_name"