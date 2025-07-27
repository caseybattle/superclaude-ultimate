#!/bin/bash

# SuperClaude Ultimate Auto-Setup Detection
# Automatically detects if installation is needed and guides users

# Colors for user-friendly output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
BOLD='\033[1m'
NC='\033[0m' # No Color

echo -e "${BLUE}${BOLD}🚀 SuperClaude Ultimate Detected!${NC}"
echo "============================================"

# Check if this is a fresh installation
FRESH_INSTALL=false

# Check for required components
check_component() {
    local component=$1
    local command=$2
    local name=$3
    
    if ! command -v "$command" &> /dev/null; then
        echo -e "${RED}❌ Missing: $name${NC}"
        return 1
    else
        echo -e "${GREEN}✅ Found: $name${NC}"
        return 0
    fi
}

echo
echo "Checking installation status..."
echo

# Check Claude Code CLI
if ! check_component "claude" "claude" "Claude Code CLI"; then
    FRESH_INSTALL=true
fi

# Check MCP servers (by checking if Sequential is available)
if ! claude mcp list 2>/dev/null | grep -q "sequential"; then
    echo -e "${RED}❌ Missing: MCP Servers${NC}"
    FRESH_INSTALL=true
else
    echo -e "${GREEN}✅ Found: MCP Servers${NC}"
fi

# Check Claude Code Usage Monitor
if ! check_component "claude-monitor" "claude-monitor" "Usage Monitor"; then
    FRESH_INSTALL=true
fi

# Check Serena (basic check for uvx)
if ! command -v uvx &> /dev/null; then
    echo -e "${YELLOW}⚠️  Missing: Serena dependencies (uvx)${NC}"
    FRESH_INSTALL=true
else
    echo -e "${GREEN}✅ Found: Serena dependencies${NC}"
fi

echo

if [ "$FRESH_INSTALL" = true ]; then
    echo -e "${YELLOW}${BOLD}🔧 SETUP REQUIRED${NC}"
    echo "================================================"
    echo
    echo "SuperClaude Ultimate needs to install some components"
    echo "to give you the full AI development experience!"
    echo
    echo -e "${BOLD}What will be installed:${NC}"
    echo "• Claude Code CLI (AI assistant)"
    echo "• 6 MCP Servers (specialized tools)"
    echo "• Usage Monitor (track your usage)"
    echo "• Serena Toolkit (code analysis)"
    echo
    echo -e "${BOLD}This is ${GREEN}completely automatic${NC}${BOLD} and takes about 2-3 minutes.${NC}"
    echo
    
    # Simple yes/no prompt for non-tech users
    while true; do
        echo -n -e "${BOLD}Would you like to install everything now? (y/n): ${NC}"
        read -r yn
        case $yn in
            [Yy]* ) 
                echo
                echo -e "${GREEN}${BOLD}🚀 Starting automatic installation...${NC}"
                echo
                
                # Make install script executable and run it
                chmod +x ~/.claude/scripts/install.sh
                ~/.claude/scripts/install.sh
                
                echo
                echo -e "${GREEN}${BOLD}🎉 Installation complete!${NC}"
                echo
                echo -e "${BOLD}You can now use:${NC}"
                echo "• claude /analyze --help    (test SuperClaude commands)"
                echo "• claude-monitor           (monitor your usage)"
                echo "• claude /build --react    (build applications)"
                echo
                break
                ;;
            [Nn]* ) 
                echo
                echo -e "${YELLOW}Setup skipped.${NC} You can run it anytime with:"
                echo -e "${BLUE}~/.claude/scripts/install.sh${NC}"
                echo
                break
                ;;
            * ) 
                echo "Please answer yes (y) or no (n)."
                ;;
        esac
    done
else
    echo -e "${GREEN}${BOLD}✅ SuperClaude Ultimate is ready!${NC}"
    echo
    echo -e "${BOLD}Quick commands to try:${NC}"
    echo "• claude /monitor              (check usage)"
    echo "• claude /analyze --help       (see all commands)"
    echo "• claude /build --react        (build applications)"
    echo "• claude-monitor              (detailed usage tracking)"
    echo
fi

echo -e "${BLUE}📚 Documentation: ~/.claude/README.md${NC}"
echo -e "${BLUE}🆘 Need help? Check: ~/.claude/docs/${NC}"
echo "============================================"

# Original SuperClaude compliance system (if needed)
if [ "$FRESH_INSTALL" = false ]; then
    echo
    echo "🔧 Initializing SuperClaude Compliance System..."
    
    # Start memory refresh daemon if script exists
    if [ -f "/home/casbattle/.claude/scripts/superclaude-refresh.js" ]; then
        node /home/casbattle/.claude/scripts/superclaude-refresh.js &
        REFRESH_PID=$!
        echo "✅ SuperClaude Memory Refresh System Active (PID: $REFRESH_PID)"
        echo $REFRESH_PID > /tmp/superclaude-refresh.pid
    fi
fi
