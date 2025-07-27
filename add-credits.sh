#!/bin/bash

cd ~/.claude

echo "🙏 Adding proper acknowledgments and credits..."

# Add the updated README with credits
git add README.md

# Commit the changes
git commit -m "Add acknowledgments and credits to original creators

- Credit to NomenAK for original SuperClaude framework
- Credit to Oraios AI for Serena optimization system  
- Credit to Anthropic for Claude Code and MCP ecosystem
- Credit to all MCP server creators and open source contributors
- Remove broken image placeholder
- Proper attribution with repository links"

# Push to GitHub
git push origin main

echo "✅ Credits and acknowledgments added to repository!"
echo "🔗 Repository: https://github.com/caseybattle/superclaude-ultimate"
echo
echo "Now everyone gets proper credit for their amazing work! 🙏"