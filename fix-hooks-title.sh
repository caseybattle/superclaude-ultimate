#!/bin/bash

cd ~/.claude

echo "🔧 Fixing hooks folder title..."

# Make a small change to hooks folder to create new commit
echo "" >> hooks/session-start.sh

# Add and commit just the hooks folder
git add hooks/
git commit -m "Session automation and startup hooks

Automated session initialization and SuperClaude environment setup"

git push origin main

echo "✅ Hooks folder title updated!"