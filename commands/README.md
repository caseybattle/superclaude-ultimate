# SuperClaude Commands

25 intelligent commands with automatic expert detection and smart routing.

## How Commands Work

SuperClaude automatically detects what you're trying to do and assigns the right expert (persona) with the right tools (MCP servers) to complete your task.

## Core Commands

### Development Commands
- `/build` - Universal project builder with stack templates
- `/design` - Architectural design and system planning  
- `/deploy` - Production deployment and operations
- `/test` - Comprehensive testing and validation

### Analysis Commands
- `/analyze` - Multi-dimensional code and system analysis
- `/scan` - Security, quality, and compliance scanning
- `/troubleshoot` - Systematic problem investigation
- `/review` - Code review and quality assessment

### Quality Commands  
- `/improve` - Code quality and performance optimization
- `/cleanup` - Technical debt and maintenance
- `/monitor` - System monitoring and health checks

### Workflow Commands
- `/git` - Advanced Git operations and workflows
- `/task` - Task management and project coordination
- `/memory` - Configuration and knowledge management

## Universal Flags

All commands support universal flags:

```bash
--plan              # Show execution plan first
--think             # Multi-file analysis
--think-hard        # Deep architectural analysis  
--ultrathink        # Critical system redesign
--uc                # UltraCompressed mode
--c7 --seq --magic --pup  # MCP server control
--persona-*         # Expert persona control
```

## Auto-Detection Examples

```bash
# You say: "Build me a React dashboard"
# Auto-assigns: --persona-frontend + Magic MCP + /build --react

# You say: "This API is slow" 
# Auto-assigns: --persona-performance + Puppeteer + /analyze --profile

# You say: "Security audit needed"
# Auto-assigns: --persona-security + All MCPs + /scan --security
```

## Complete Reference

See `/commands/index.md` for complete command reference and `/docs/04-commands-reference.md` for detailed documentation.
