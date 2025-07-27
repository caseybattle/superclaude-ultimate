#!/bin/bash

# Add folder README files to explain what each directory contains

cd ~/.claude

echo "📝 Adding folder descriptions to repository..."

# Add all the new README files
git add agents/README.md
git add commands/README.md  
git add docs/README.md
git add shared/README.md

# Commit the changes
git commit -m "Add folder documentation

- agents/README.md: Explains 9 agent files contain customizable instructions
- commands/README.md: Explains 25 intelligent commands with auto-detection  
- docs/README.md: Guide to comprehensive documentation
- shared/README.md: Core intelligence system that powers auto-detection

Now each folder clearly explains what it contains and how to use it."

# Push to GitHub
git push origin main

echo "✅ Folder descriptions added to GitHub repository!"
echo "🔗 Repository: https://github.com/caseybattle/superclaude-ultimate"
echo
echo "Now people will see what each folder contains! 📁"