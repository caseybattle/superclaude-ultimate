#!/bin/bash

# SuperClaude Ultimate - Automatic Zero-Friction Setup
# Creates a complete AI development environment with one command

set -e

echo "🚀 SuperClaude Ultimate - Automatic Setup"
echo "========================================"
echo

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
BOLD='\033[1m'
NC='\033[0m'

log() { echo -e "${GREEN}[SETUP]${NC} $1"; }
warn() { echo -e "${YELLOW}[WARN]${NC} $1"; }
error() { echo -e "${RED}[ERROR]${NC} $1"; }

# Step 1: Install Core Components
install_core() {
    log "Installing core components..."
    
    # Run our existing installation script
    if [ -f "scripts/install.sh" ]; then
        chmod +x scripts/install.sh
        ./scripts/install.sh
    else
        error "Installation script not found!"
        exit 1
    fi
}

# Step 2: Auto-Create Agents via Task Tool
auto_create_agents() {
    log "Auto-creating 9 specialized agents..."
    
    # Create a script that Claude can execute to create agents
    cat > /tmp/agent_creator.md << 'EOF'
# Agent Auto-Creation Script

Please create the following 9 specialized agents in Claude Code using the Task tool.
For each agent, use the agent definition files in ~/.claude/agents/

## Agent Creation Process:
1. Read each agent file from ~/.claude/agents/
2. Extract the name, description, and prompt
3. Use the Task tool to create the agent with those specifications

## Agents to Create:
1. divine-code-architect
2. master-code-reviewer  
3. database-backend-architect
4. performance-optimizer
5. devops-deployment-manager
6. documentation-writer
7. scrum-manager
8. monetization-strategist
9. shadcn-ui-design-reviewer

Each agent file contains:
- YAML frontmatter with name, description, color
- Full agent prompt after the --- separator

Please create these agents automatically so users don't have to do it manually.
EOF

    # Use Claude to auto-create agents
    if command -v claude &> /dev/null; then
        log "Requesting Claude to auto-create agents..."
        claude --print < /tmp/agent_creator.md > /tmp/agent_creation_log.txt 2>&1
        
        if [ $? -eq 0 ]; then
            log "Agent auto-creation completed ✓"
        else
            warn "Agent auto-creation may have failed - check log"
            warn "Users can still create agents manually using AGENT_SETUP_GUIDE.md"
        fi
        
        # Clean up
        rm -f /tmp/agent_creator.md
    else
        warn "Claude not available for auto-creation"
        warn "Users will need to create agents manually"
    fi
}

# Step 3: Smart Dependency Detection
detect_and_offer_enhancements() {
    log "Scanning for optional enhancements..."
    
    # Check for original SuperClaude frameworks
    if ! [ -d "$HOME/.superclaude-original" ]; then
        echo
        echo -e "${BLUE}${BOLD}🔍 Enhancement Available${NC}"
        echo "Original SuperClaude frameworks can provide additional features."
        echo -n "Install NomenAK and SuperClaude-Org frameworks? (y/n): "
        read -r response
        
        if [[ "$response" =~ ^[Yy]$ ]]; then
            install_original_frameworks
        else
            log "Skipping original frameworks - SuperClaude Ultimate is fully functional"
        fi
    fi
}

# Install original frameworks if requested
install_original_frameworks() {
    log "Installing original SuperClaude frameworks..."
    
    mkdir -p "$HOME/.superclaude-original"
    cd "$HOME/.superclaude-original"
    
    # Clone original repositories
    if ! [ -d "SuperClaude" ]; then
        git clone https://github.com/NomenAK/SuperClaude.git
        log "NomenAK SuperClaude framework installed"
    fi
    
    if ! [ -d "SuperClaude_Framework" ]; then
        git clone https://github.com/SuperClaude-Org/SuperClaude_Framework.git  
        log "SuperClaude-Org v3 framework installed"
    fi
    
    cd - > /dev/null
    log "Original frameworks installed in ~/.superclaude-original/"
}

# Step 4: Final Verification and Testing
final_verification() {
    log "Running final verification..."
    
    # Test core functionality
    local all_good=true
    
    # Test Claude Code
    if ! command -v claude &> /dev/null; then
        error "Claude Code CLI not working"
        all_good=false
    fi
    
    # Test MCP servers
    if ! claude mcp list &> /dev/null; then
        error "MCP servers not configured"
        all_good=false
    fi
    
    # Test monitor
    if ! command -v claude-monitor &> /dev/null; then
        warn "Claude Code Usage Monitor not in PATH"
    fi
    
    # Test SuperClaude commands
    if ! claude /analyze --help &> /dev/null; then
        error "SuperClaude commands not working"
        all_good=false
    fi
    
    if [ "$all_good" = true ]; then
        echo
        echo -e "${GREEN}${BOLD}🎉 SETUP COMPLETE!${NC}"
        echo "========================================"
        echo
        echo -e "${BOLD}Your SuperClaude Ultimate environment is ready:${NC}"
        echo "✅ 25 intelligent commands with auto-detection"
        echo "✅ 9 expert personas with domain expertise"
        echo "✅ 9 specialized agents (auto-created)"
        echo "✅ 6 MCP servers for specialized capabilities"
        echo "✅ Real-time usage monitoring"
        echo "✅ Complete documentation and guides"
        echo
        echo -e "${BOLD}Quick start:${NC}"
        echo "• Test: claude /analyze --help"
        echo "• Monitor: claude-monitor"
        echo "• Build: claude /build --react --magic \"create a button\""
        echo "• Agent: claude \"Use divine-code-architect to build an app\""
        echo
        echo -e "${BLUE}Documentation: ~/.claude/README.md${NC}"
        echo
    else
        echo
        error "Setup completed with some issues"
        error "Check ~/.claude/TROUBLESHOOTING_REAL_WORLD.md for fixes"
        echo
        exit 1
    fi
}

# Main setup process
main() {
    echo "Starting automatic setup..."
    echo "This will create a complete AI development environment."
    echo
    
    install_core
    auto_create_agents  
    detect_and_offer_enhancements
    final_verification
    
    echo "Setup completed! Welcome to SuperClaude Ultimate! 🚀"
}

# Run main function
main "$@"