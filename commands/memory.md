**Purpose**: Serena memory management for project context preservation

---

@include shared/universal-constants.yml#Universal_Legend

## Command Execution  
Execute: immediate | Context preservation system
Purpose: "Manage project memories and context for seamless development"

Manage Serena memories to prevent context loss between sessions.

@include shared/flag-inheritance.yml#Universal_Always

## Custom Flags
**--list**: List all available memories
**--read**: Read specific memory content
**--write**: Create/update memory
**--context**: Current project context summary
**--refresh**: Update all project memories

## Examples
- `/memory --list` - Show all memories
- `/memory --context` - Current project status
- `/memory --write "feature_progress"` - Save current progress
- `/memory --refresh --uc` - Update all memories (compressed)

## Implementation

### Memory Operations
```bash
# List memories
mcp__serena__list_memories

# Read project context
mcp__serena__read_memory current_project_context

# Update memory
mcp__serena__write_memory "session_$(date +%Y%m%d)" "Current session progress..."
```

### Auto-Context Recovery
1. **Session Start**: Read project context, recent progress
2. **Feature Work**: Update progress memories frequently  
3. **Session End**: Summarize accomplishments
4. **Emergency Recovery**: Read all memories to rebuild context

### Memory Categories
- **current_project_context**: Overall project state
- **usage_monitoring_status**: Token/cost tracking
- **quick_access_commands**: Frequently used commands
- **feature_progress_[date]**: Development progress tracking
- **troubleshooting_log**: Issue resolution history

## Integration
**Before Starting Work**: `/memory --context` → understand current state
**During Development**: `/memory --write progress` → save incremental progress  
**Context Loss Recovery**: `/memory --list` → `/memory --read` → rebuild understanding

---
*Essential for maintaining development continuity*