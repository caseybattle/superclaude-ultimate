#!/bin/bash
# SuperClaude Session Auto-Start Hook
# Automatically runs when Claude Code session begins

echo "🔧 Initializing SuperClaude Compliance System..."

# Start memory refresh daemon
node /home/casbattle/.claude/scripts/superclaude-refresh.js &
REFRESH_PID=$!

echo "✅ SuperClaude Memory Refresh System Active (PID: $REFRESH_PID)"
echo "📝 Compliance reminders every 5 minutes"
echo "🎯 All commands must follow SuperClaude Guide protocol"

# Save PID for cleanup
echo $REFRESH_PID > /tmp/superclaude-refresh.pid
