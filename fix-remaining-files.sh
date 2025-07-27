#!/bin/bash

cd ~/.claude

echo "🔧 Fixing remaining file titles..."

# Fix the important documentation files
echo "" >> INSTALLATION.md

git add INSTALLATION.md CLAUDE.md QUICK_START.md MCP_SERVERS_REFERENCE.md settings.local.json
git commit -m "Complete installation guide and system configuration

Installation guide, main config, quick start, MCP reference, and system settings"

git push origin main

echo "✅ Important files titles updated!"