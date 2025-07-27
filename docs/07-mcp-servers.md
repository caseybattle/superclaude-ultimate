# MCP Servers & Serena Integration

Complete guide to the 6 MCP servers that power SuperClaude's specialized capabilities, plus detailed Serena installation and optimization.

## Overview

SuperClaude integrates 6 specialized MCP (Model Context Protocol) servers that provide enhanced capabilities:

1. **Context7** - Official library documentation lookup
2. **Sequential** - Complex multi-step analysis  
3. **Magic** - UI component generation
4. **Puppeteer** - Browser automation & testing
5. **Serena** - AI optimization & cost reduction
6. **Shadcn UI** - Design system components

## 1. Context7 (Library Documentation)

**Purpose:** Official library documentation and code examples lookup

### Installation
```bash
# Install Context7 MCP server
npx -y @upstash/context7-mcp
```

### GitHub Repository
[https://github.com/upstash/context7-mcp](https://github.com/upstash/context7-mcp)

### Configuration
```json
{
  "context7": {
    "command": "npx",
    "args": ["-y", "@upstash/context7-mcp"],
    "description": "Official library documentation and examples"
  }
}
```

### Capabilities
- **resolve-library-id**: Identify libraries from import statements
- **get-library-docs**: Fetch official documentation  
- **version-specific documentation**: Get docs for specific versions
- **code-examples**: Retrieve practical usage examples

### Usage Examples
```bash
# Research React hooks
claude /explain --c7 "React useState and useEffect best practices"

# Library integration help
claude /build --react --c7 "implement authentication with NextAuth.js"

# API documentation lookup
claude /analyze --c7 "Express.js middleware patterns"
```

### Best Practices
- **Use for external libraries**: When working with third-party libraries
- **Version compatibility**: Checks compatibility between library versions  
- **Evidence-based**: Always provides official documentation citations
- **Research-first**: Use before implementing any external library

### Token Cost
**Low-Medium** - Efficient documentation lookup with high accuracy

---

## 2. Sequential (Complex Analysis)

**Purpose:** Multi-step problem solving and architectural thinking

### Installation
```bash
# Install Sequential MCP server
npx -y @modelcontextprotocol/server-sequential-thinking
```

### GitHub Repository
[https://github.com/modelcontextprotocol/server-sequential-thinking](https://github.com/modelcontextprotocol/server-sequential-thinking)

### Configuration
```json
{
  "sequential-thinking": {
    "command": "npx",
    "args": ["-y", "@modelcontextprotocol/server-sequential-thinking"],
    "description": "Multi-step problem solving and architectural thinking"
  }
}
```

### CRITICAL PERFORMANCE RULE
**ALWAYS use `--uc` flag with Sequential to prevent computer freezing:**

```bash
# Correct usage - REQUIRED
claude /analyze --seq --uc

# DANGEROUS - Will freeze system
claude /analyze --seq
```

### Capabilities
- **sequentialthinking**: Adaptive reasoning through complex problems
- **systematic problem decomposition**: Break down complex issues
- **architectural analysis**: Deep system design evaluation
- **evidence-based reasoning**: Chain of reasoning with validation

### Usage Examples
```bash
# Complex system analysis
claude /analyze --architecture --seq --uc --think-hard

# Root cause investigation  
claude /troubleshoot --investigate --seq --uc

# API design planning
claude /design --api --ddd --seq --uc
```

### Best Practices
- **Mandatory --uc**: Always include --uc flag to prevent freezing
- **Complex problems**: Use for multi-step analysis requiring deep reasoning
- **Architecture decisions**: Ideal for system design and planning
- **Evidence-based**: Provides reasoning chains with validation

### Token Cost
**Medium-High** - Comprehensive analysis with insights (REQUIRES --uc for efficiency)

---

## 3. Magic (UI Component Generation)

**Purpose:** UI component generation and design system integration

### Installation
```bash
# Install Magic MCP server
npx -y @mseep/magic
```

### GitHub Repository
[https://github.com/mseep/magic](https://github.com/mseep/magic)

### Configuration
```json
{
  "magic": {
    "command": "npx",
    "args": ["-y", "@mseep/magic"],
    "description": "UI component generation and design system integration"
  }
}
```

### Capabilities
- **component-builder**: Generate React/Vue components
- **component-refiner**: Improve existing components
- **component-inspiration**: Discover component patterns
- **logo-search**: Find and generate logos

### Usage Examples
```bash
# Generate React component
claude /build --react --magic "create a responsive dashboard card component"

# UI component library
claude /build --react --magic --tdd "build button component with variants"

# Design system integration
claude /improve --accessibility --magic "make this component WCAG compliant"
```

### Best Practices
- **Frontend development**: Ideal for React/Vue component generation
- **Design systems**: Ensures consistency with design patterns
- **Accessibility**: Built-in accessibility compliance
- **Testing integration**: Works well with --tdd flag

### Token Cost
**Medium** - High-quality output with design system compliance

---

## 4. Puppeteer (Browser Automation)

**Purpose:** E2E testing, performance validation, and browser automation

### Installation
```bash
# Install Puppeteer MCP server
npx -y @modelcontextprotocol/server-puppeteer
```

### GitHub Repository
[https://github.com/modelcontextprotocol/server-puppeteer](https://github.com/modelcontextprotocol/server-puppeteer)

### Configuration
```json
{
  "puppeteer": {
    "command": "npx",
    "args": ["-y", "@modelcontextprotocol/server-puppeteer"],
    "description": "E2E testing, performance validation, browser automation"
  }
}
```

### Capabilities
- **browser-connect**: Launch and control browser instances
- **navigation**: Navigate and interact with web pages
- **testing**: End-to-end test automation
- **screenshots**: Visual validation and documentation  
- **performance-monitoring**: Page performance metrics

### Usage Examples
```bash
# End-to-end testing
claude /test --e2e --pup "test user authentication flow"

# Performance validation
claude /analyze --performance --pup "measure page load times and core web vitals"

# Visual testing
claude /test --visual --pup "compare UI components across browsers"
```

### Best Practices
- **E2E testing**: Comprehensive user flow testing
- **Performance monitoring**: Real-world performance validation
- **Visual regression**: Automated screenshot comparison
- **Cross-browser testing**: Ensure compatibility

### Token Cost
**Low** (action-based) - High reliability for testing workflows

---

## 5. Serena (AI Optimization System)

**Purpose:** AI assistant optimization for cheaper and more powerful Claude Code interactions

### Installation

#### Prerequisites
```bash
# Install Python 3.8+ (required for uv)
python --version  # Should be 3.8.0 or higher

# Install uv package manager if not already installed
curl -LsSf https://astral.sh/uv/install.sh | sh
```

#### Install Serena
```bash
# Run Serena from GitHub repository (uses uvx for temporary execution)
uvx --from git+https://github.com/oraios/serena serena-mcp-server
```

### GitHub Repository
[https://github.com/oraios/serena](https://github.com/oraios/serena)

### Configuration
```json
{
  "serena": {
    "command": "uvx",
    "args": [
      "--from", 
      "git+https://github.com/oraios/serena", 
      "serena-mcp-server"
    ],
    "description": "AI assistant optimization for cheaper and more powerful Claude Code interactions"
  }
}
```

### What Serena Does
- **Cost Optimization**: Reduces token usage by up to 70%
- **Context Management**: Intelligent context switching and memory
- **Performance Enhancement**: Faster response times
- **Session Persistence**: Maintains context across sessions
- **Memory Management**: Intelligent caching and retrieval

### Serena Features
- **Automatic Optimization**: Works transparently with all SuperClaude commands
- **Token Economy**: Reduces costs significantly for heavy usage
- **Context Awareness**: Maintains project context intelligently
- **Session Memory**: Remembers previous interactions and decisions
- **Performance Monitoring**: Tracks and optimizes AI interactions

### Usage
Serena works automatically with all SuperClaude commands - no special flags needed:

```bash
# Serena automatically optimizes these interactions
claude /analyze --code --think-hard
claude /build --react --magic --watch
claude /troubleshoot --investigate --seq --uc
```

### Verification
```bash
# Verify Serena is working
claude --version  # Should show Serena integration

# Test Serena is working
uvx --from git+https://github.com/oraios/serena serena-mcp-server --help
```

### Troubleshooting Serena
```bash
# Reinstall if issues
curl -LsSf https://astral.sh/uv/install.sh | sh
uvx --from git+https://github.com/oraios/serena serena-mcp-server

# Check Python version
python --version  # Must be 3.8+

# Verify installation
uvx --from git+https://github.com/oraios/serena serena-mcp-server --help
```

---

## 6. Shadcn UI (Design Components)

**Purpose:** Shadcn UI component integration and management

### Installation
```bash
# Install Shadcn UI MCP server
npx -y @jpisnice/shadcn-ui-mcp-server
```

### GitHub Repository
[https://github.com/jpisnice/shadcn-ui-mcp-server](https://github.com/jpisnice/shadcn-ui-mcp-server)

### GitHub Token Setup (Required)
1. Go to [GitHub Personal Access Tokens](https://github.com/settings/tokens)
2. Create token with `repo` scope
3. Set environment variable:

```bash
# Add to your shell profile (.bashrc, .zshrc, etc.)
export GITHUB_PERSONAL_ACCESS_TOKEN="your_token_here"

# Reload shell or run:
source ~/.bashrc
```

### Configuration
```json
{
  "shadcn-ui": {
    "command": "npx",
    "args": ["-y", "@jpisnice/shadcn-ui-mcp-server"],
    "description": "Shadcn UI component integration and management",
    "env": {
      "GITHUB_PERSONAL_ACCESS_TOKEN": "your_token_here"
    }
  }
}
```

### Capabilities
- **component-installation**: Install Shadcn UI components
- **component-customization**: Customize components for your design
- **theme-management**: Manage design system themes
- **component-discovery**: Browse available components

### Usage Examples
```bash
# Install Shadcn components
claude /build --react --magic "create dashboard with Shadcn UI components"

# Custom design system
claude /design --ui --magic "build custom button variants with Shadcn"
```

---

## MCP Integration Patterns

### Automatic MCP Selection
SuperClaude automatically selects appropriate MCP servers based on context:

```bash
# Frontend work → Magic + Context7
claude /build --react "create authentication component"

# Complex analysis → Sequential (with --uc)  
claude /analyze --architecture --think-hard

# Testing → Puppeteer
claude /test --e2e "test checkout flow"

# Library research → Context7
claude /explain "Next.js API routes best practices"
```

### Manual MCP Control
```bash
# Enable specific servers
claude /build --react --magic --c7

# Disable all MCPs (native tools only)
claude /analyze --code --no-mcp

# Enable all MCPs
claude /analyze --all-mcp
```

### MCP Performance Optimization

#### Token Economy by MCP
- **Native tools**: 0 extra tokens
- **Context7**: Low-medium tokens, high accuracy  
- **Magic**: Medium tokens, high-quality output
- **Puppeteer**: Low tokens (action-based)
- **Sequential**: Medium-high tokens (REQUIRES --uc)
- **Serena**: Reduces overall token usage by ~70%

#### Efficient MCP Usage
```bash
# Use native tools for simple tasks
claude /cleanup --code --no-mcp

# Use specific MCPs for specialized tasks
claude /build --react --magic    # Only Magic for UI
claude /explain --c7 "React"     # Only Context7 for docs

# Use all MCPs for complex tasks
claude /analyze --complex --all-mcp --uc
```

### MCP Caching and Performance
- **Context7**: 1-hour TTL for library documentation
- **Sequential**: Session duration cache for analysis results
- **Magic**: 2-hour TTL for component templates  
- **Puppeteer**: Real-time execution, no caching
- **Serena**: Intelligent context management
- **Shadcn UI**: Component cache for faster generation

## Complete MCP Installation Script

```bash
#!/bin/bash
# install-mcp-servers.sh

echo "Installing all SuperClaude MCP servers..."

# 1. Context7
echo "Installing Context7..."
npx -y @upstash/context7-mcp

# 2. Sequential
echo "Installing Sequential..."
npx -y @modelcontextprotocol/server-sequential-thinking

# 3. Magic
echo "Installing Magic..."
npx -y @mseep/magic

# 4. IDE
echo "Installing IDE..."
npx -y @modelcontextprotocol/server-ide

# 5. Puppeteer  
echo "Installing Puppeteer..."
npx -y @modelcontextprotocol/server-puppeteer

# 6. Shadcn UI
echo "Installing Shadcn UI..."
npx -y @jpisnice/shadcn-ui-mcp-server

# 7. Serena (requires Python)
echo "Installing Serena..."
curl -LsSf https://astral.sh/uv/install.sh | sh
uvx --from git+https://github.com/oraios/serena serena-mcp-server

echo "All MCP servers installed successfully!"
echo "Remember to set GITHUB_PERSONAL_ACCESS_TOKEN for Shadcn UI"
```

## Troubleshooting MCP Issues

### Server Not Found
```bash
# Reinstall specific server
npx -y @modelcontextprotocol/server-sequential-thinking

# Check configuration
cat ~/.claude/settings.local.json
```

### Performance Issues
```bash
# Use --uc with Sequential
claude /analyze --seq --uc

# Use native tools for simple tasks
claude /analyze --code --no-mcp
```

### Authentication Issues
```bash
# Check GitHub token
echo $GITHUB_PERSONAL_ACCESS_TOKEN
curl -H "Authorization: token $GITHUB_PERSONAL_ACCESS_TOKEN" https://api.github.com/user
```

### Serena Issues
```bash
# Check Python version
python --version  # Must be 3.8+

# Reinstall Serena
pip install --upgrade uvx
uvx --from git+https://github.com/oraios/serena serena-mcp-server
```

---

**MCP servers are the specialized tools that make SuperClaude incredibly powerful. Each server adds specific capabilities that work seamlessly together.**