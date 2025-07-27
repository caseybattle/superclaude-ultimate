# SuperClaude Quick Start Guide
*Essential information for agents - read this first*

## 🚨 CRITICAL RULES (Non-Negotiable)
```yaml
@include shared/CRITICAL_RULES_SUMMARY.yml#MANDATORY_SYSTEM_RULES
@include shared/CRITICAL_RULES_SUMMARY.yml#PERFORMANCE_CRITICAL
```

**Key Points:**
- ALWAYS use Serena tools (mcp__serena__*)
- ALWAYS use --uc with Sequential
- Auto --uc when context >75%

## 🎯 Quick Command Reference

### Most Common Commands
```bash
/build --react --magic        # Build React app with UI components
/test --coverage --watch      # Run tests with coverage monitoring  
/analyze --code --seq --uc    # Analyze codebase (note: --uc required with --seq)
/improve --quality --iterate  # Improve code quality iteratively
/scan --security --owasp     # Security vulnerability scan
```

### Universal Flags (Work with ALL commands)
```yaml
Planning: --plan --dry-run --interactive
Thinking: --think --think-hard --ultrathink  
MCP: --c7 --seq --magic --pup
Performance: --uc --profile --watch
Quality: --validate --strict --coverage
```

## 🎭 Auto-Activation (You don't need to choose)

**Personas activate automatically:**
- `.tsx/.jsx` files → `--persona-frontend`
- API/server code → `--persona-backend`  
- test files → `--persona-qa`
- security issues → `--persona-security`

**MCP servers by task:**
- External libraries → `--c7` (Context7)
- Complex analysis → `--seq --uc` (Sequential + compression)
- UI components → `--magic` (Magic)
- Testing → `--pup` (Puppeteer)

## 📋 Decision Flow

### 1. Choose Command Type
- **Build something:** `/build`
- **Analyze/investigate:** `/analyze` or `/troubleshoot`  
- **Improve existing:** `/improve`
- **Test:** `/test`
- **Deploy:** `/deploy`
- **Security check:** `/scan`

### 2. Add Relevant Flags
- **Simple task:** Use command alone
- **Complex task:** Add `--seq --uc`
- **UI work:** Add `--magic`
- **Need docs:** Add `--c7`
- **Want to see plan:** Add `--plan`

### 3. Let Auto-Activation Handle The Rest
- Personas will activate based on file types
- Compression will trigger automatically
- Quality checks will run as needed

## 🔧 Development Workflows

### Frontend Development
```bash
/build --react --magic --watch    # Creates tmux session with dev server
/test --e2e --pup                 # E2E testing with Puppeteer
```

### Backend Development  
```bash
/build --api --c7                 # API with documentation
/test --integration               # Integration testing
/scan --security --strict         # Security validation
```

### Full-Stack Development
```bash
/build --init --fullstack         # Initialize full-stack project
# Creates tmux sessions for frontend, backend, database
```

## 🚀 Terminal Management (tmux)
Agents can create multiple terminal sessions automatically:
- Development servers run in background
- Testing runs continuously  
- Monitoring persists across sessions

*No need to manage manually - agents handle tmux automatically*

## 📚 When You Need More Info
- **Memories:** Quick references stored in project
- **Full docs:** Complete configuration in CLAUDE.md
- **Critical rules:** CRITICAL_RULES_SUMMARY.yml
- **Command help:** Each command has detailed documentation

## ⚡ Performance Tips
- Use `--uc` with Sequential to prevent freezing
- Let auto-activation choose personas and MCP servers
- Use `--plan` to see what will happen before execution
- Use `--dry-run` for safe preview of changes

---
*Start with simple commands, let auto-activation handle complexity*