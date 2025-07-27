# /initialize-superclaude

**Purpose**: Initialize SuperClaude Ultimate System for any session

---

@include shared/universal-constants.yml#Universal_Legend

## Command Execution  
Execute: immediate | System initialization
Purpose: "Mandatory SuperClaude system onboarding and context loading"

Initialize the complete SuperClaude Ultimate system with full memory context recovery.

@include shared/flag-inheritance.yml#Universal_Always

## Custom Flags
**--force**: Force re-initialization even if already initialized
**--memory**: Load all available memories and context
**--validate**: Run system validation after initialization

## Examples
- `/initialize-superclaude` - Standard initialization
- `/initialize-superclaude --memory` - Initialize with full memory context
- `/initialize-superclaude --validate` - Initialize and validate system

## Implementation

### Step 1: Memory System Audit
```bash
# List all available memories
mcp__serena__list_memories

# Read critical system memories
mcp__serena__read_memory current_project_context
mcp__serena__read_memory superclaude_initialization_protocol
```

### Step 2: System Architecture Understanding
Load complete understanding of:
- ALL SuperClaude commands and personas
- ALL MCP server capabilities (Sequential, Context7, Magic, Serena, etc.)
- Universal flags and inheritance patterns
- Disabled tools and alternatives
- Evidence-based language requirements

### Step 3: Project Context Loading
```bash
# If in project directory, load project context
mcp__serena__read_memory current_project_context

# Load recent progress and session recovery
mcp__serena__list_memories | grep -E "session_recovery|progress"
```

### Step 4: Validation & Confirmation
Agent MUST provide detailed summary proving understanding of:
- Complete command structure (25+ commands)
- MCP server capabilities and token costs
- Persona specializations (9 personas)
- Evidence-based standards
- Security/performance requirements
- Current project status (if applicable)

## Auto-Execution
This command should be run:
- At start of every new session
- After session crashes/freezes
- When switching between projects
- Before beginning any complex work

## Success Criteria
✅ All memories loaded and understood
✅ System architecture comprehension validated
✅ Project context (if any) loaded
✅ Agent ready for SuperClaude Ultimate workflows

---
*Essential for proper SuperClaude Ultimate operation*