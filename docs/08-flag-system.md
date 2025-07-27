# SuperClaude Flag System

Complete reference for the universal flag system that powers SuperClaude's intelligent command routing and execution.

## Flag System Overview

SuperClaude uses a sophisticated flag inheritance system where flags are organized into categories and inherit across all commands. This means you can use the same flags with any command, and they will be interpreted intelligently based on context.

### Flag Hierarchy
1. **Universal Flags** - Available on ALL commands
2. **Command Group Flags** - Available on related commands (e.g., all analysis commands)
3. **Command-Specific Flags** - Unique to individual commands

## Universal Flags (Available on ALL Commands)

These flags work with every SuperClaude command:

### Planning & Execution Control
```bash
--plan              # Show execution plan before running
--dry-run           # Preview changes without execution  
--interactive       # Step-by-step guided process
--force             # Override safety checks and confirmations
--watch             # Continuous monitoring with real-time feedback
```

**Examples:**
```bash
claude /build --plan --react        # Show build plan before creating React app
claude /cleanup --dry-run --all     # Preview what will be cleaned up
claude /deploy --interactive --env prod  # Step-by-step production deployment
```

### Thinking Modes (Context & Analysis Depth)
```bash
--think             # Multi-file analysis with context (4K tokens)
--think-hard        # Deep architectural analysis (10K tokens)  
--ultrathink        # Critical system redesign (32K tokens)
```

**When to Use:**
- `--think`: Multi-file coordination, cross-component analysis
- `--think-hard`: System architecture, complex debugging
- `--ultrathink`: Major refactoring, architectural decisions

**Examples:**
```bash
claude /analyze --code --think           # Analyze multiple related files
claude /design --api --think-hard        # Deep API architecture planning
claude /troubleshoot --ultrathink --seq  # Complex system debugging
```

### Performance & Compression
```bash
--uc                # UltraCompressed mode (~70% token reduction)
--ultracompressed   # Alias for --uc
--profile           # Detailed performance profiling and metrics
```

**Critical Performance Rule:**
**ALWAYS use `--uc` with `--seq`** to prevent system freezing:
```bash
# Correct usage
claude /analyze --seq --uc

# WILL FREEZE SYSTEM (Don't do this!)
claude /analyze --seq
```

**Examples:**
```bash
claude /analyze --seq --uc              # Safe complex analysis
claude /improve --performance --profile # Performance optimization with metrics
```

### MCP Control Flags
```bash
--c7                # Enable Context7 (library documentation lookup)
--seq               # Enable Sequential (complex analysis) ⚠️ REQUIRES --uc
--magic             # Enable Magic (UI component generation)
--pup               # Enable Puppeteer (browser automation & testing)
--all-mcp           # Enable all MCP servers
--no-mcp            # Disable all MCP servers (native tools only)
--no-c7             # Disable Context7 specifically  
--no-seq            # Disable Sequential specifically
--no-magic          # Disable Magic specifically
--no-pup            # Disable Puppeteer specifically
```

**MCP Server Details:**
- **Context7**: Official library documentation and examples
- **Sequential**: Multi-step complex analysis (REQUIRES --uc)
- **Magic**: UI component generation and design systems
- **Puppeteer**: Browser automation, E2E testing, performance validation

**Examples:**
```bash
claude /build --react --magic --c7      # React app with components and docs
claude /analyze --complex --seq --uc    # Complex analysis with Sequential
claude /test --e2e --pup                # End-to-end testing with Puppeteer
claude /analyze --no-mcp                # Use only native tools
```

### Persona Control Flags
```bash
--persona-architect     # Systems architect (scalability, patterns)
--persona-frontend      # Frontend developer (UI/UX, accessibility)
--persona-backend       # Backend developer (APIs, performance)
--persona-analyzer      # Root cause analyst (evidence-based investigation)
--persona-security      # Security expert (threat modeling, compliance)
--persona-mentor        # Technical educator (teaching, documentation)
--persona-refactorer    # Code quality specialist (cleanup, maintainability)
--persona-performance   # Performance engineer (optimization, profiling)
--persona-qa            # Quality assurance (testing, validation)
```

**Auto-Activation:**
Personas usually activate automatically based on context, but you can override:

```bash
claude /build --react --persona-frontend    # Force frontend focus
claude /analyze --security --persona-security # Force security focus
claude /explain --depth beginner --persona-mentor # Force teaching mode
```

### Quality & Security Flags
```bash
--security          # Security analysis and vulnerability scanning
--coverage          # Comprehensive test coverage analysis
--validate          # Pre-execution safety and validation checks
--strict            # Zero-tolerance quality mode with enhanced validation
--tdd               # Test-driven development workflow
```

**Examples:**
```bash
claude /scan --security --owasp          # OWASP security scan
claude /test --coverage --strict         # Comprehensive testing with strict quality
claude /build --tdd --coverage           # TDD with coverage tracking
```

### Introspection & Transparency
```bash
--introspect        # Deep transparency mode - expose thinking and decisions
--introspection     # Alias for --introspect
```

**Examples:**
```bash
claude /analyze --code --introspect      # Show detailed reasoning process
claude /troubleshoot --introspect --seq  # Expose debugging thought process
```

## Command Group Flags

### Analysis Commands (`/analyze`, `/scan`, `/troubleshoot`)
```bash
--code              # Analyze code quality and structure
--arch              # Analyze system architecture and design
--perf              # Analyze performance and bottlenecks
--security          # Security vulnerability analysis
--deps              # Dependency analysis and audit
--investigate       # Deep investigation mode
--evidence          # Evidence-based analysis with documentation
```

### Build Commands (`/build`, `/design`, `/deploy`)
```bash
--init              # Initialize new project with stack setup
--feature           # Implement feature using existing patterns
--api               # API-focused development
--react             # React/frontend focused build
--tdd               # Test-driven development workflow
--env               # Target environment (dev|staging|prod)
```

### Quality Commands (`/test`, `/improve`, `/cleanup`)
```bash
--coverage          # Generate comprehensive test coverage
--quality           # Focus on code quality improvements
--iterate           # Iterative improvement until threshold met
--threshold         # Set quality target (default: high)
--all               # Comprehensive operation across all areas
--quick             # Fast operation focusing on critical issues
```

### Documentation Commands (`/document`, `/explain`)
```bash
--api               # API documentation and reference
--user              # User-friendly guides and tutorials
--depth             # Explanation depth (ELI5|beginner|intermediate|expert)
--visual            # Include diagrams and visual aids
--examples          # Include practical code examples
```

## Flag Inheritance Rules

### Inheritance Priority
1. **Command-specific flags** override group flags
2. **Group flags** override common flags  
3. **Common flags** override universal flags
4. **Universal flags** are always available

### Conflict Resolution
```bash
--force             # Overrides: --validate, --dry-run, --interactive
--no-mcp            # Overrides: --c7, --seq, --magic, --pup, --all-mcp
--strict            # Enhances: --validate, --security, --coverage
```

### Auto-Combinations
```bash
--all + group_flags     # Enables all flags in command's group
--strict + quality      # Enhanced validation for quality operations
--watch + interactive   # Real-time guided operations
```

## Advanced Flag Combinations

### Power User Patterns
```bash
# Deep architectural analysis
claude /analyze --architecture --seq --uc --think-hard

# Complete UI development workflow
claude /build --react --magic --pup --watch --tdd

# Production deployment safety
claude /scan --validate --seq --uc && claude /deploy --env prod --think-hard

# Emergency debugging
claude /troubleshoot --prod --ultrathink --seq --uc --introspect
```

### Research & Learning Patterns
```bash
# Library research and implementation
claude /explain --c7 --seq --uc --depth expert "React hooks best practices"

# Architecture with documentation
claude /design --ddd --seq --uc --think-hard && claude /document --api

# Performance optimization cycle
claude /analyze --profile --seq --uc && claude /improve --iterate --threshold 95%
```

### Token Optimization Patterns
```bash
# Compressed documentation workflow
claude /document --uc && claude /explain --uc --c7

# Efficient analysis workflow  
claude /analyze --uc --no-mcp && claude /improve --uc

# Rapid development workflow
claude /build --uc && claude /test --uc && claude /deploy --uc
```

### Safety & Best Practice Patterns
```bash
# Pre-deployment safety gate
claude /test --coverage && claude /scan --security && claude /scan --validate && claude /deploy

# Staged deployment with rollback readiness
claude /deploy --env staging && claude /test --e2e && claude /deploy --env prod --plan

# Quality-first development
claude /cleanup --code && claude /build --tdd && claude /test --coverage && claude /git --commit
```

## Flag Validation Rules

### Conflicting Flags (Warnings)
```bash
--dry-run + --force     # Warning: dry-run negates force
--no-mcp + --seq        # Warning: no-mcp overrides Sequential  
--quick + --all         # Warning: quick contradicts comprehensive
```

### Required Combinations
```bash
--seq                   # MUST include --uc (system requirement)
--env prod              # SHOULD include --validate (safety)
--security              # SHOULD include --strict (thoroughness)
```

### Invalid Combinations
```bash
--persona-frontend + --persona-backend  # Only one persona at a time
--init + --feature                      # Conflicting build modes
```

## Flag Auto-Detection

### File Type Detection
```bash
# Auto-activates based on file analysis
*.tsx, *.jsx, *.css    → --persona-frontend
*.py, *.go, *.java     → --persona-backend  
*test*, *spec*         → --persona-qa
*security*, *auth*     → --persona-security
```

### Context Intelligence
```bash
# Auto-activates based on request content
"error", "bug", "broken"       → --persona-analyzer + --investigate
"slow", "performance"          → --persona-performance + --profile
"deploy", "production"         → --validate + --security
"explain", "teach"             → --persona-mentor + --depth
```

### Keyword Triggers
```bash
# External library mentioned  → --c7
# Complex system mentioned    → --seq --uc
# UI components mentioned     → --magic
# Testing mentioned          → --pup
```

## Environment Variables

You can set default flags via environment variables:

```bash
# Set default thinking mode
export SUPERCLAUDE_DEFAULT_THINK="--think-hard"

# Set default MCP servers
export SUPERCLAUDE_DEFAULT_MCP="--c7 --magic"

# Set default safety mode
export SUPERCLAUDE_DEFAULT_SAFETY="--validate --strict"
```

## Flag Performance Impact

### Token Usage by Flag
```bash
# No extra tokens
--plan, --dry-run, --interactive, --force, --watch

# Low tokens
--c7, --magic, --pup, --validate, --coverage

# Medium tokens  
--think, --profile, --security, --persona-*

# High tokens
--think-hard, --seq --uc, --ultrathink

# Very high tokens (use sparingly)
--ultrathink + --seq --uc + --all-mcp
```

### Performance Optimization
```bash
# Use --uc to reduce token usage
claude /analyze --seq --uc --think-hard

# Use --no-mcp for simple tasks
claude /cleanup --code --no-mcp

# Batch operations efficiently
claude /build --react --magic --tdd --watch  # All related flags together
```

## Troubleshooting Flags

### Flag Not Working
```bash
# Check flag availability
claude /command --help

# Verify MCP servers
claude /analyze --c7 --help

# Test with simple flags first
claude /analyze --plan
```

### System Freezing
```bash
# Always use --uc with --seq
claude /analyze --seq --uc  # Correct

# Avoid Sequential without compression
claude /analyze --seq       # WILL FREEZE
```

### Unexpected Behavior
```bash
# Use --introspect to see reasoning
claude /analyze --code --introspect

# Use --plan to preview actions
claude /build --react --plan

# Check for conflicting flags
claude /analyze --quick --all --plan  # Shows conflict
```

---

**The flag system is the heart of SuperClaude's intelligence. Master these flags to unlock the full power of automated development.**