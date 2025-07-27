#!/bin/bash

cd ~/.claude

echo "🔧 Fixing commands folder title..."

# Make a small change to commands folder to create new commit
echo "" >> commands/README.md

# Add and commit just the commands folder
git add commands/
git commit -m "25 intelligent commands with auto-detection and expert routing

Universal commands that automatically assign the right expert personas and MCP tools based on context"

git push origin main

echo "✅ Commands folder title updated!"