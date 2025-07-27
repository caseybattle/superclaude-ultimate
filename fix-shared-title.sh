#!/bin/bash

cd ~/.claude

echo "🔧 Fixing shared folder title..."

# Make a small change to shared folder to create new commit
echo "" >> shared/README.md

# Add and commit just the shared folder
git add shared/
git commit -m "Core intelligence system with 9 expert personas

Auto-detection patterns and persona definitions that power SuperClaude's intelligence"

git push origin main

echo "✅ Shared folder title updated!"