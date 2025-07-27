#!/bin/bash

# SuperClaude Ultimate Framework Installation Script
# Automated installation of all components

set -e  # Exit on any error

echo "🚀 SuperClaude Ultimate Framework Installation"
echo "=============================================="
echo

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Logging function
log() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check prerequisites
check_prerequisites() {
    log "Checking prerequisites..."
    
    # Check Node.js
    if ! command -v node &> /dev/null; then
        error "Node.js is not installed. Please install Node.js 18+ from https://nodejs.org/"
        exit 1
    fi
    
    NODE_VERSION=$(node --version | cut -d'v' -f2 | cut -d'.' -f1)
    if [ "$NODE_VERSION" -lt 18 ]; then
        error "Node.js version must be 18 or higher. Current version: $(node --version)"
        exit 1
    fi
    
    # Check npm
    if ! command -v npm &> /dev/null; then
        error "npm is not installed. Please install npm."
        exit 1
    fi
    
    # Check Python for Serena
    if ! command -v python3 &> /dev/null; then
        warn "Python 3 not found. Serena installation will be skipped."
        warn "Install Python 3.8+ to enable Serena optimization."
        SKIP_SERENA=true
    else
        PYTHON_VERSION=$(python3 --version 2>&1 | grep -Po '(?<=Python )[0-9]+\.[0-9]+' | head -1)
        PYTHON_MAJOR=$(echo $PYTHON_VERSION | cut -d'.' -f1)
        PYTHON_MINOR=$(echo $PYTHON_VERSION | cut -d'.' -f2)
        
        if [ "$PYTHON_MAJOR" -lt 3 ] || ([ "$PYTHON_MAJOR" -eq 3 ] && [ "$PYTHON_MINOR" -lt 8 ]); then
            warn "Python version must be 3.8 or higher for Serena. Current: $PYTHON_VERSION"
            warn "Serena installation will be skipped."
            SKIP_SERENA=true
        fi
    fi
    
    # Check Git
    if ! command -v git &> /dev/null; then
        error "Git is not installed. Please install Git."
        exit 1
    fi
    
    log "Prerequisites check completed ✓"
}

# Install Claude Code CLI
install_claude_code() {
    log "Installing Claude Code CLI..."
    
    if command -v claude &> /dev/null; then
        log "Claude Code CLI already installed: $(claude --version)"
    else
        npm install -g @anthropics/claude-code
        log "Claude Code CLI installed successfully ✓"
    fi
}

# Install MCP Servers
install_mcp_servers() {
    log "Installing MCP servers..."
    
    # Context7 - Library documentation
    log "Installing Context7..."
    npx -y @upstash/context7-mcp
    
    # Sequential - Complex analysis
    log "Installing Sequential..."
    npx -y @modelcontextprotocol/server-sequential-thinking
    
    # Magic - UI components  
    log "Installing Magic..."
    npx -y @mseep/magic
    
    # IDE Integration
    log "Installing IDE integration..."
    npx -y @modelcontextprotocol/server-ide
    
    # Puppeteer - Browser automation
    log "Installing Puppeteer..."
    npx -y @modelcontextprotocol/server-puppeteer
    
    # Shadcn UI
    log "Installing Shadcn UI..."
    npx -y @jpisnice/shadcn-ui-mcp-server
    
    log "MCP servers installed successfully ✓"
}

# Install Serena
install_serena() {
    if [ "$SKIP_SERENA" = true ]; then
        warn "Skipping Serena installation (Python requirements not met)"
        return
    fi
    
    log "Installing Serena semantic code toolkit..."
    
    # Install uvx if not present
    if ! command -v uvx &> /dev/null; then
        log "Installing uvx..."
        pip3 install uvx
    fi
    
    # Install Serena
    log "Installing Serena from GitHub..."
    uvx --from git+https://github.com/oraios/serena serena-mcp-server --context ide-assistant --project $(pwd)
    
    log "Serena installed successfully ✓"
}

# Install Claude Code Usage Monitor
install_usage_monitor() {
    log "Installing Claude Code Usage Monitor..."
    
    # Try uv first (recommended), fallback to pip
    if command -v uv &> /dev/null; then
        log "Installing with uv..."
        uv tool install claude-monitor
    elif command -v pipx &> /dev/null; then
        log "Installing with pipx..."
        pipx install claude-monitor
    else
        log "Installing with pip..."
        pip3 install claude-monitor
        
        # Add to PATH reminder
        if ! command -v claude-monitor &> /dev/null; then
            warn "Add ~/.local/bin to PATH: export PATH=\"\$HOME/.local/bin:\$PATH\""
        fi
    fi
    
    log "Claude Code Usage Monitor installed successfully ✓"
}

# Setup configuration files
setup_configuration() {
    log "Setting up configuration files..."
    
    # Create .claude directory if it doesn't exist
    CLAUDE_DIR="$HOME/.claude"
    mkdir -p "$CLAUDE_DIR"
    
    # Copy configuration files
    if [ -f "config/CLAUDE.md" ]; then
        cp config/CLAUDE.md "$CLAUDE_DIR/"
        log "Copied CLAUDE.md configuration"
    fi
    
    if [ -f "config/settings.local.json" ]; then
        # Update the project path in settings.local.json
        sed "s|/home/$(whoami)|$HOME|g" config/settings.local.json > "$CLAUDE_DIR/settings.local.json"
        log "Copied settings.local.json configuration"
    fi
    
    if [ -f "config/QUICK_START.md" ]; then
        cp config/QUICK_START.md "$CLAUDE_DIR/"
        log "Copied QUICK_START.md reference"
    fi
    
    # Copy all commands
    if [ -d "commands" ]; then
        cp -r commands/* "$CLAUDE_DIR/commands/" 2>/dev/null || mkdir -p "$CLAUDE_DIR/commands" && cp -r commands/* "$CLAUDE_DIR/commands/"
        log "Copied all 25 SuperClaude commands"
    fi
    
    # Copy shared patterns
    if [ -d "shared" ]; then
        cp -r shared/* "$CLAUDE_DIR/shared/" 2>/dev/null || mkdir -p "$CLAUDE_DIR/shared" && cp -r shared/* "$CLAUDE_DIR/shared/"
        log "Copied shared patterns and personas"
    fi
    
    # Copy agents
    if [ -d "agents" ]; then
        cp -r agents/* "$CLAUDE_DIR/agents/" 2>/dev/null || mkdir -p "$CLAUDE_DIR/agents" && cp -r agents/* "$CLAUDE_DIR/agents/"
        log "Copied all 9 specialized agents"
    fi
    
    log "Configuration setup completed ✓"
}

# GitHub token setup reminder
github_token_reminder() {
    echo
    warn "GitHub Token Setup Required for Shadcn UI:"
    echo "1. Go to https://github.com/settings/tokens"
    echo "2. Create a new token with 'repo' scope"
    echo "3. Run: export GITHUB_PERSONAL_ACCESS_TOKEN=\"your_token_here\""
    echo "4. Add to your ~/.bashrc or ~/.zshrc for persistence"
    echo
}

# Verify installation
verify_installation() {
    log "Verifying installation..."
    
    # Check Claude Code
    if command -v claude &> /dev/null; then
        log "Claude Code CLI: ✓"
    else
        error "Claude Code CLI installation failed"
        return 1
    fi
    
    # Check if commands are available
    if claude /analyze --help &> /dev/null; then
        log "SuperClaude commands: ✓"
    else
        warn "SuperClaude commands may not be properly configured"
    fi
    
    # Test MCP integration
    log "Testing MCP server integration..."
    if claude /analyze --c7 --help &> /dev/null 2>&1; then
        log "MCP servers: ✓"
    else
        warn "Some MCP servers may not be properly configured"
    fi
    
    log "Installation verification completed ✓"
}

# Authentication reminder
auth_reminder() {
    echo
    log "Next Steps:"
    echo "1. Authenticate with Claude: ${BLUE}claude auth login${NC}"
    echo "2. Monitor usage: ${BLUE}claude-monitor${NC} or ${BLUE}/monitor${NC}"
    echo "3. Test your setup: ${BLUE}claude /analyze --help${NC}"
    echo "4. Try a command: ${BLUE}claude /build --react --magic \"create a button component\"${NC}"
    echo "5. Read the docs: ${BLUE}cat ~/.claude/QUICK_START.md${NC}"
    echo
}

# Main installation function
main() {
    echo "Starting SuperClaude Ultimate Framework installation..."
    echo
    
    check_prerequisites
    install_claude_code
    install_mcp_servers
    install_serena
    install_usage_monitor
    setup_configuration
    verify_installation
    
    echo
    log "🎉 SuperClaude Ultimate Framework installation completed!"
    echo
    
    github_token_reminder
    auth_reminder
    
    echo "You now have access to:"
    echo "• 25 intelligent commands with auto-detection"
    echo "• 9 expert personas with domain expertise"  
    echo "• 6 MCP servers for specialized capabilities"
    echo "• 9 custom agents for complex applications"
    echo "• Universal flag system with inheritance"
    echo "• Evidence-based development standards"
    echo
    echo "Welcome to the future of AI-assisted development! 🚀"
}

# Run main function
main "$@"
