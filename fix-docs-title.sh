#!/bin/bash

cd ~/.claude

echo "🔧 Fixing docs folder title..."

# Make a small change to docs folder to create new commit
echo "" >> docs/README.md

# Add and commit just the docs folder
git add docs/
git commit -m "Comprehensive documentation and usage guides

Complete guides for agents, MCP servers, flag system, and real-world workflows"

git push origin main

echo "✅ Docs folder title updated!"