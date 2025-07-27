# SuperClaude Core System

Core intelligence files that power SuperClaude's automatic expert detection and routing.

## Core System Files

| File | Purpose |
|------|---------|
| **superclaude-core.yml** | Core philosophy, standards, and workflows |
| **superclaude-personas.yml** | All 9 expert personas with domain knowledge |
| **superclaude-mcp.yml** | MCP server integration and optimization patterns |
| **superclaude-rules.yml** | Development rules and evidence-based standards |
| **CRITICAL_RULES_SUMMARY.yml** | Performance rules and system requirements |
| **terminal-multiplexer-patterns.yml** | tmux integration and session management |

## What This Powers

### Automatic Expert Detection
The personas system automatically assigns the right expert based on:
- File types (`.tsx` → frontend, `.py` → backend)
- Context keywords ("security" → security persona, "slow" → performance)
- Task complexity (simple → native tools, complex → MCP servers)

### Intelligence Patterns
- **Evidence-based development** - All decisions backed by data
- **Security-first approach** - Zero tolerance for vulnerabilities  
- **Performance optimization** - Automatic token and cost management
- **Quality standards** - Production-ready code generation

### MCP Integration
Smart routing to specialized tools:
- **Context7** for library documentation
- **Sequential** for complex analysis (with auto --uc)
- **Magic** for UI component generation
- **Puppeteer** for testing and automation
- **Serena** for AI optimization

## How It Works

1. **You make a request** → SuperClaude analyzes context
2. **Auto-detection** → Assigns appropriate persona(s) and MCP servers  
3. **Intelligent execution** → Routes to optimal command with right flags
4. **Quality assurance** → Applies evidence-based standards throughout

This core system is what makes SuperClaude feel like having a complete development team rather than just an AI assistant.