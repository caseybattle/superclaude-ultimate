#!/bin/bash

# Fix commit messages to show descriptive titles for each folder

cd ~/.claude

echo "🔧 Fixing commit messages to show descriptive folder titles..."

# We need to create separate commits for each folder to get descriptive messages
# First, let's reset the last commit but keep the files
git reset --soft HEAD~1

# Now commit each folder separately with descriptive messages

# Agents folder
git add agents/
git commit -m "9 specialized agents with customizable instructions

Complete agent definitions that can be modified to match your specific needs"

# Commands folder  
git add commands/
git commit -m "25 intelligent commands with auto-detection

Universal commands that automatically assign the right expert and tools"

# Docs folder
git add docs/
git commit -m "Comprehensive documentation and usage guides

Complete guides for agents, MCP servers, flags, and workflows"

# Shared folder
git add shared/
git commit -m "Core intelligence system with 9 expert personas

Auto-detection patterns and persona definitions that power the framework"

# Scripts folder
git add scripts/
git commit -m "One-click installation and setup automation

Automated scripts for easy framework installation and configuration"

# Root files
git add *.md *.json *.sh
git commit -m "SuperClaude Ultimate Framework core configuration

Main README, installation guide, and system configuration files"

# Push all commits
git push origin main --force

echo "✅ Commit messages fixed! Each folder now shows descriptive titles."
echo "🔗 Check your repository: https://github.com/caseybattle/superclaude-ultimate"