#!/bin/bash

set -e

REPO_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
TARGET="$HOME/.bash_aliases"

# Back up the existing configuration
if [[ -f "$TARGET" ]]; then
    cp -- "$TARGET" "$TARGET.backup"
fi

# Append the repository files
{
    printf '\n# ===== Bash-Aliases: BEGIN =====\n'

    for file in \
        "$REPO_DIR/aliases/dev.sh" \
        "$REPO_DIR/aliases/network.sh" \
        "$REPO_DIR/aliases/tools.sh" \
        "$REPO_DIR/functions/func.sh"
    do
        if [[ -f "$file" ]]; then
            printf '\n# ===== %s =====\n' "$(basename "$file")"
            cat -- "$file"
            printf '\n'
        else
            printf 'Error: Missing file: %s\n' "$file" >&2
            exit 1
        fi
    done

    printf '# ===== Bash-Aliases: END =====\n'
} >> "$TARGET"

echo "Configuration appended to $TARGET"
echo "Run: source ~/.bashrc"