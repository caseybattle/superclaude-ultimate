#!/bin/bash

cd ~/.claude

echo "🔧 Fixing scripts folder title..."

# Make a small change to scripts folder to create new commit
echo "" >> scripts/install.sh

# Add and commit just the scripts folder
git add scripts/
git commit -m "One-click installation and setup automation

Automated scripts for easy SuperClaude framework installation and configuration"

git push origin main

echo "✅ Scripts folder title updated!"