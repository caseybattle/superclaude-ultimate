# 🛠️ Real-World Troubleshooting Guide

Based on actual installation experiences and issues encountered by users.

## 🐍 Python Version Issues (Most Common)

### Problem: Serena Installation Fails at 90%
**Symptom:** Everything installs fine until Serena, then you get Python-related errors.

**Root Cause:** Serena requires Python 3.8+, but many systems have older versions.

**Solutions:**

#### Check Your Python Version
```bash
python3 --version
# If shows Python 3.7 or older, you need to upgrade
```

#### Ubuntu/Debian Fix
```bash
# Install Python 3.9
sudo apt update
sudo apt install python3.9 python3.9-pip python3.9-venv

# Make it default
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1

# Verify
python3 --version  # Should show 3.9.x
```

#### macOS Fix
```bash
# Install via Homebrew
brew install python@3.9

# Add to PATH in ~/.zshrc or ~/.bash_profile
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Verify
python3 --version
```

#### Windows Fix
1. Go to https://python.org/downloads/
2. Download Python 3.9 or newer
3. **Important:** Check "Add Python to PATH" during installation
4. Restart Command Prompt
5. Verify: `python --version`

### Re-run Installation After Python Fix
```bash
cd ~/.claude
./scripts/install.sh
```

## 📦 Package Manager Issues

### Problem: "externally-managed-environment" Error
**Symptom:** Can't install packages with pip

**Solution:** Use isolated environments
```bash
# Install with pipx (recommended)
pip install pipx
pipx install claude-monitor

# Or use uv (modern alternative)
curl -LsSf https://astral.sh/uv/install.sh | sh
uv tool install claude-monitor
```

### Problem: "Command not found" After Installation
**Symptom:** Installed tools but shell can't find them

**Solution:** Fix PATH
```bash
# Add to ~/.bashrc or ~/.zshrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Or restart your terminal
```

## 🔧 Node.js Issues

### Problem: Claude Code CLI Won't Install
**Symptom:** npm errors when installing Claude Code

**Solutions:**
```bash
# Update Node.js (need 18+)
node --version  # Check current version

# Ubuntu/Debian
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs

# macOS
brew install node

# Windows: Download from nodejs.org
```

### Problem: Permission Errors with npm
```bash
# Fix npm permissions (Linux/macOS)
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH="$HOME/.npm-global/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

## 🚫 MCP Server Issues

### Problem: MCP Servers Don't Show Up
**Check Installation:**
```bash
claude mcp list
# Should show: sequential-thinking, context7, magic, etc.
```

**Re-install if missing:**
```bash
npx -y @modelcontextprotocol/server-sequential-thinking
npx -y @upstash/context7-mcp
npx -y @mseep/magic
```

### Problem: Sequential MCP Freezes System
**Solution:** Always use `--uc` flag
```bash
# CORRECT (won't freeze)
claude /analyze --seq --uc

# WRONG (will freeze system)
claude /analyze --seq
```

## 💻 Platform-Specific Issues

### WSL (Windows Subsystem for Linux)
```bash
# Update WSL first
wsl --update

# Install required tools
sudo apt update
sudo apt install -y curl git python3.9 python3.9-pip nodejs npm
```

### macOS Monterey or Older
```bash
# Install Xcode command line tools
xcode-select --install

# Update Homebrew
brew update && brew upgrade
```

### Older Linux Distributions
```bash
# Enable additional repositories
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.9
```

## 🔍 Diagnostic Commands

### Full System Check
```bash
# Run this to diagnose your system
echo "=== SYSTEM DIAGNOSTICS ==="
echo "OS: $(uname -a)"
echo "Python: $(python3 --version 2>&1)"
echo "Node.js: $(node --version 2>&1)"
echo "npm: $(npm --version 2>&1)"
echo "Git: $(git --version 2>&1)"
echo "Claude CLI: $(claude --version 2>&1)"
echo "Monitor: $(claude-monitor --version 2>&1)"
echo "uvx: $(uvx --version 2>&1)"
echo "PATH: $PATH"
```

### Test Installation Status
```bash
# Check what's working
claude /analyze --help          # SuperClaude commands
claude mcp list                 # MCP servers
claude-monitor --version        # Usage monitor
uvx --help                      # Serena dependencies
```

## 🆘 Getting Help

### Information to Include When Asking for Help
1. **Operating System:** Windows/macOS/Linux version
2. **Python Version:** `python3 --version`
3. **Node.js Version:** `node --version`
4. **Error Message:** Full error text
5. **What You Were Trying:** Exact command that failed

### Where to Get Help
- **GitHub Issues:** https://github.com/caseybattle/superclaude-ultimate/issues
- **Include Diagnostics:** Run the system check above and paste results

## 🔄 Start Over (Nuclear Option)

If everything is broken:
```bash
# Remove everything and start fresh
rm -rf ~/.claude
rm -rf ~/.local/share/pipx/venvs/claude-monitor
npm uninstall -g @anthropics/claude-code

# Start over
git clone https://github.com/caseybattle/superclaude-ultimate ~/.claude
cd ~/.claude
./scripts/install.sh
```

## ✅ Success Indicators

You know everything is working when:
```bash
claude /analyze --help          # Shows SuperClaude commands
claude-monitor                  # Shows usage monitor with bars
claude /monitor                 # Works without errors
claude /build --react --magic   # Can build components
```

**These solutions are based on real user experiences - they work!** 🚀