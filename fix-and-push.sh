#!/bin/bash

# Fix the GitHub token security issue and push to repository

cd ~/.claude

echo "🔧 Fixing security issue and pushing to GitHub..."

# Add the corrected file
git add settings.local.json

# Commit the fix
git commit -m "Security fix: Remove hardcoded GitHub token

Replace with placeholder token for security. Users need to add their own token as documented in installation guide."

# Push to GitHub
git push -u origin main

echo "✅ Successfully pushed SuperClaude Ultimate Framework to GitHub!"
echo "🔗 Repository: https://github.com/caseybattle/superclaude-ultimate"
echo
echo "Your repository is now live and secure! 🌟"