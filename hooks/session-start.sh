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

# Check Python version for Serena
PYTHON_OK=false
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version 2>&1 | grep -Po '(?<=Python )[0-9]+\.[0-9]+' | head -1)
    PYTHON_MAJOR=$(echo $PYTHON_VERSION | cut -d'.' -f1)
    PYTHON_MINOR=$(echo $PYTHON_VERSION | cut -d'.' -f2)
    
    if [ "$PYTHON_MAJOR" -ge 3 ] && [ "$PYTHON_MINOR" -ge 8 ]; then
        PYTHON_OK=true
        echo -e "${GREEN}✅ Found: Python $PYTHON_VERSION (Serena compatible)${NC}"
    else
        echo -e "${RED}❌ Python $PYTHON_VERSION too old (need 3.8+)${NC}"
        FRESH_INSTALL=true
    fi
else
    echo -e "${RED}❌ Missing: Python 3.8+ (required for Serena)${NC}"
    FRESH_INSTALL=true
fi

# Check Serena dependencies (CORRECTED)
if [ "$PYTHON_OK" = true ]; then
    if ! command -v uv &> /dev/null; then
        echo -e "${YELLOW}⚠️  Missing: Serena dependencies (uv package manager)${NC}"
        FRESH_INSTALL=true
    else
        echo -e "${GREEN}✅ Found: Serena dependencies (uv)${NC}"
    fi
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
    if [ "$PYTHON_OK" = true ]; then
        echo "• Serena Toolkit (code analysis)"
    else
        echo "• Serena Toolkit (${YELLOW}requires Python 3.8+${NC})"
    fi
    echo
    echo -e "${YELLOW}${BOLD}⚠️  IMPORTANT:${NC} After installation, you'll need to manually create"
    echo "9 specialized agents in Claude Code. Agent files are provided in ~/.claude/agents/"
    echo "See INSTALLATION.md for step-by-step agent creation instructions."
    echo
    
    # Python version warning/guidance
    if [ "$PYTHON_OK" = false ]; then
        echo -e "${YELLOW}${BOLD}⚠️  Python Issue Detected:${NC}"
        if command -v python3 &> /dev/null; then
            echo "Your Python version ($PYTHON_VERSION) is too old for Serena."
        else
            echo "Python 3.8+ is not installed on your system."
        fi
        echo
        echo -e "${BOLD}Options:${NC}"
        echo "1. Continue without Serena (most features still work)"
        echo "2. Install Python 3.8+ first, then re-run setup"
        echo
        echo -e "${BLUE}Quick Python install:${NC}"
        echo "• Ubuntu/Debian: sudo apt update && sudo apt install python3.9"
        echo "• macOS: brew install python@3.9"  
        echo "• Windows: Download from python.org"
        echo
    else
        echo -e "${BOLD}This is ${GREEN}completely automatic${NC}${BOLD} and takes about 2-3 minutes.${NC}"
    fi
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
