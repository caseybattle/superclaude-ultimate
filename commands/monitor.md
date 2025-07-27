**Purpose**: Claude Code usage monitoring and optimization

---

@include shared/universal-constants.yml#Universal_Legend

## Command Execution
Execute: immediate | --watch→continuous monitoring
Purpose: "Monitor Claude usage and optimize token consumption"

Monitor Claude Code usage, token limits, and provide optimization recommendations.

@include shared/flag-inheritance.yml#Universal_Always

## Custom Flags
**--usage**: Show current usage statistics
**--optimize**: Suggest optimization strategies  
**--watch**: Continuous monitoring (real-time)
**--reset-time**: Show time until reset
**--history**: Show usage history patterns

## Examples
- `/monitor` - Basic usage overview
- `/monitor --usage --optimize` - Usage with optimization tips
- `/monitor --watch` - Continuous monitoring
- `/monitor --history --uc` - Compressed history view

## Implementation

### Basic Monitoring
```bash
# Run monitoring script
./claude-monitor.sh

# Check token limit
echo $CLAUDE_CODE_MAX_OUTPUT_TOKENS

# Quick status
echo "Token Limit: $CLAUDE_CODE_MAX_OUTPUT_TOKENS"
```

### Optimization Actions
1. **High Usage (>80%)**: Enable UltraCompressed mode (--uc)
2. **Token Limit Exceeded**: Use memory management, shorter responses  
3. **Near Reset Time**: Plan heavy operations post-reset
4. **High Burn Rate**: Batch operations, reduce MCP usage

### Integration with Serena
- Update usage status in memory: `mcp__serena__write_memory`
- Read previous patterns: `mcp__serena__read_memory usage_monitoring_status`
- Track optimization effectiveness

@include shared/execution-patterns.yml#Standard_Workflow_Integration

## Workflow Integration
**Pre-Development**: `/monitor --usage` → optimize if needed
**During Development**: `/monitor --watch` → adjust strategy
**Post-Development**: `/monitor --history` → learn patterns

---
*Custom command for AspasiaUI project*