#!/bin/bash

cd ~/.claude

echo "🔧 Fixing root files titles..."

# Make a small change to main files to create new commit
echo "" >> README.md

# Add and commit the main configuration files
git add README.md INSTALLATION.md CLAUDE.md QUICK_START.md settings.local.json
git commit -m "SuperClaude framework core files and configuration

Main README, installation guide, system configuration, and quick start reference"

git push origin main

echo "✅ Root files titles updated!"