# SuperClaude Installation Guide

Complete step-by-step installation guide for the SuperClaude Ultimate Development Framework.

## Prerequisites

Before installing SuperClaude, ensure you have the following installed:

### Required Software
- **Node.js 18+** and **npm** - [Download here](https://nodejs.org/)
- **Git** - [Download here](https://git-scm.com/)
- **Python 3.8+** - [Download here](https://python.org/) (required for Serena)

### Verify Prerequisites
```bash
# Check versions
node --version    # Should be 18.0.0 or higher
npm --version     # Should be 8.0.0 or higher  
git --version     # Any recent version
python --version  # Should be 3.8.0 or higher
```

## Installation Methods

### Method 1: One-Click Installation (Recommended)

The fastest way to get SuperClaude running:

```bash
# 1. Clone the repository
git clone https://github.com/yourusername/superclaude-ultimate ~/.claude

# 2. Run the installation script
cd ~/.claude
chmod +x scripts/install.sh
./scripts/install.sh

# 3. Verify installation
claude /analyze --help
```

**Installation script will:**
- Install Claude Code CLI
- Install all 6 MCP servers
- Install Serena optimization system
- Copy all configuration files
- Verify the installation

### Method 2: Manual Installation

If you prefer to install components manually:

#### Step 1: Install Claude Code CLI
```bash
# Install Claude Code globally
npm install -g @anthropics/claude-code

# Authenticate with Claude
claude auth login
```

#### Step 2: Clone SuperClaude Configuration
```bash
# Clone to your Claude directory
git clone https://github.com/yourusername/superclaude-ultimate ~/.claude

# Or if you already have a .claude directory:
git clone https://github.com/yourusername/superclaude-ultimate /tmp/superclaude
cp -r /tmp/superclaude/* ~/.claude/
```

#### Step 3: Install MCP Servers

Install all 6 MCP servers that power SuperClaude:

```bash
# 1. Sequential Thinking (Complex analysis)
npx -y @modelcontextprotocol/server-sequential-thinking

# 2. Context7 (Library documentation)
npx -y @upstash/context7-mcp

# 3. Magic (UI component generation)
npx -y @mseep/magic

# 4. IDE Integration (Code analysis)
npx -y @modelcontextprotocol/server-ide

# 5. Puppeteer (Browser automation)
npx -y @modelcontextprotocol/server-puppeteer

# 6. Shadcn UI (Design components)
npx -y @jpisnice/shadcn-ui-mcp-server
```

#### Step 4: Install Serena (AI Optimization System)

Serena is crucial for cost optimization and performance:

```bash
# Install uvx (if not already installed)
pip install uvx

# Install Serena from GitHub
uvx --from git+https://github.com/oraios/serena serena-mcp-server --context ide-assistant --project /home/$(whoami)
```

#### Step 5: Install Claude Code Usage Monitor

Essential for real-time usage monitoring with horizontal progress bars:

```bash
# Install with uv (recommended)
uv tool install claude-monitor

# Alternative installation methods
pip install claude-monitor
# or
pipx install claude-monitor

# Verify installation
claude-monitor --version
```

#### Step 6: Configure GitHub Token (For Shadcn UI)

The Shadcn UI MCP server requires a GitHub personal access token:

1. Go to [GitHub Personal Access Tokens](https://github.com/settings/tokens)
2. Create a new token with `repo` scope
3. Add to your environment:

```bash
export GITHUB_PERSONAL_ACCESS_TOKEN="your_token_here"
echo 'export GITHUB_PERSONAL_ACCESS_TOKEN="your_token_here"' >> ~/.bashrc
```

#### Step 7: Verify Installation
```bash
# Test basic functionality
claude /analyze --help

# Test MCP servers
claude /analyze --c7 --help
claude /build --magic --help

# Test Serena integration
claude --version

# Test Claude Code Usage Monitor
claude-monitor --help
cmonitor --plan custom
```

## Configuration Details

### MCP Servers Configuration

Your `~/.claude/settings.local.json` should contain:

```json
{
  "version": "2.0.1",
  "installMethod": "npm-global",
  "mcpServers": {
    "sequential-thinking": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-sequential-thinking"],
      "description": "Multi-step problem solving and architectural thinking"
    },
    "context7": {
      "command": "npx", 
      "args": ["-y", "@upstash/context7-mcp"],
      "description": "Official library documentation and examples"
    },
    "magic": {
      "command": "npx",
      "args": ["-y", "@mseep/magic"],
      "description": "UI component generation and design system integration"
    },
    "ide": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-ide"],
      "description": "IDE integration for code analysis and diagnostics"
    },
    "puppeteer": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-puppeteer"],
      "description": "E2E testing, performance validation, browser automation"
    },
    "serena": {
      "command": "uvx",
      "args": ["--from", "git+https://github.com/oraios/serena", "serena-mcp-server", "--context", "ide-assistant", "--project", "/home/$(whoami)"],
      "description": "AI assistant optimization for cheaper and more powerful Claude Code interactions"
    },
    "shadcn-ui": {
      "command": "npx",
      "args": ["-y", "@jpisnice/shadcn-ui-mcp-server"],
      "description": "Shadcn UI component integration and management",
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "your_token_here"
      }
    }
  }
}
```

### SuperClaude Configuration

The main configuration is in `~/.claude/CLAUDE.md` which includes:
- Core philosophy and standards
- All 9 personas definitions
- MCP integration patterns
- Universal flag system
- Evidence-based development rules

## Verification

### Test Basic Commands
```bash
# Test command availability
claude /build --help
claude /analyze --help
claude /test --help

# Test personas
claude /analyze --persona-frontend --help
claude /build --persona-architect --help

# Test MCP servers
claude /analyze --c7 "React hooks"
claude /build --magic "create button component"
```

### Test Complete Workflow
```bash
# Test a complete workflow
claude /analyze --code --think --c7 "analyze this React component for best practices"
```

### Performance Test
```bash
# Test Serena optimization
claude /analyze --seq --uc "complex system analysis"
```

## Platform-Specific Notes

### macOS
- Use Homebrew for Node.js: `brew install node`
- May need to use `sudo` for global npm installs

### Windows
- Use Node.js installer from nodejs.org
- Ensure Git Bash or PowerShell is used
- May need to run as Administrator

### Linux
- Use package manager for Node.js: `sudo apt install nodejs npm`
- Ensure Python 3.8+ is available
- May need to install build tools: `sudo apt install build-essential`

## Troubleshooting

### Common Issues

#### "Command not found: claude"
```bash
# Reinstall Claude Code
npm uninstall -g @anthropics/claude-code
npm install -g @anthropics/claude-code

# Check PATH
echo $PATH
which claude
```

#### "MCP server not found"
```bash
# Reinstall specific MCP server
npx -y @modelcontextprotocol/server-sequential-thinking

# Check MCP configuration
cat ~/.claude/settings.local.json
```

#### "Serena not working"
```bash
# Reinstall Serena
pip install --upgrade uvx
uvx --from git+https://github.com/oraios/serena serena-mcp-server
```

#### "Permission denied"
```bash
# Fix permissions
chmod +x ~/.claude/scripts/*.sh
sudo chown -R $(whoami) ~/.claude
```

#### "Sequential MCP freezing system"
Always use `--uc` flag with Sequential:
```bash
# Correct usage
claude /analyze --seq --uc

# Will cause freezing (DON'T DO THIS)
claude /analyze --seq
```

#### "GitHub token not working"
```bash
# Test token
curl -H "Authorization: token YOUR_TOKEN" https://api.github.com/user

# Update environment
export GITHUB_PERSONAL_ACCESS_TOKEN="new_token"
```

### Getting Help

1. Check the [troubleshooting guide](docs/10-troubleshooting.md)
2. Review the [MCP servers documentation](docs/07-mcp-servers.md)
3. Open an issue on GitHub with:
   - Your operating system
   - Node.js and Claude Code versions
   - Error messages
   - Steps to reproduce

## Updating SuperClaude

To update your SuperClaude installation:

```bash
# Pull latest changes
cd ~/.claude
git pull origin main

# Run update script
./scripts/update.sh

# Verify update
claude --version
```

## Uninstalling

To completely remove SuperClaude:

```bash
# Run uninstall script
~/.claude/scripts/uninstall.sh

# Manual cleanup
rm -rf ~/.claude
npm uninstall -g @anthropics/claude-code
```

## Next Steps

After successful installation:

1. Read the [Quick Start Guide](docs/01-quick-start.md)
2. Try the [example workflows](docs/09-workflows.md)
3. Explore the [command reference](docs/04-commands-reference.md)
4. Learn about [personas and agents](docs/05-personas-guide.md)

---

**Installation complete!** You now have the most powerful AI development framework available.
