#!/bin/bash
mkdir -p .git/hooks/
for hook in $(ls hooks | grep -v install.bash); do
    if [ ! -e .git/hooks/$hook ]; then
        chmod +x hooks/$hook
        ln -s hooks/$hook $ROOT/$REPO/.git/hooks/$hook
    fi
done
