**Purpose**: Claude Code & Serena Usage Monitoring in Terminal

---

@include shared/universal-constants.yml#Universal_Legend

## Command Execution
Execute: immediate | --watch→continuous monitoring
Purpose: "Display detailed usage statistics and optimization metrics directly in terminal"

Shows real-time usage breakdown with horizontal bar graphs, token consumption, cost savings, and performance data directly in the terminal interface.

@include shared/flag-inheritance.yml#Universal_Always

## Custom Flags
**--usage**: Detailed token and cost usage breakdown
**--optimize**: Show optimization recommendations and savings
**--watch**: Continuous monitoring with auto-refresh in terminal
**--history**: Show usage patterns over time
**--breakdown**: Detailed component-by-component analysis

## Examples
- `/monitor` - Complete usage overview with horizontal bars
- `/monitor --usage --breakdown` - Detailed usage statistics
- `/monitor --watch` - Live monitoring in terminal
- `/monitor --optimize --uc` - Optimization recommendations

## Terminal Display Output

### Usage Statistics with Horizontal Bars
```
🔍 CLAUDE CODE USAGE MONITOR
════════════════════════════════════════════════════════════

📊 TOKEN USAGE (Current Session)
Input Tokens:     ████████████████████░░░░░░░░  2,847 / 4,096  (69%)
Output Tokens:    ██████████████░░░░░░░░░░░░░░░░  1,923 / 4,096  (47%)
Context Used:     ███████████████████████░░░░░░  7,234 / 8,192  (88%)

💰 COST OPTIMIZATION (Serena)
Original Cost:    $0.42
Optimized Cost:   $0.18  (57% savings)
Efficiency:       ███████████████████████████░░  92% optimization

⚡ PERFORMANCE METRICS
Response Time:    ████████████████████████░░░░░  847ms (avg)
MCP Calls:        ███████░░░░░░░░░░░░░░░░░░░░░░░  12 active
Cache Hits:       ███████████████████████████░░  89% hit rate

🎯 USAGE BREAKDOWN
Commands Used:    /analyze(3), /build(2), /monitor(1)
Personas Active:  architect, frontend, analyzer
MCP Servers:      Sequential, Magic, Serena (3/6 active)
```

### Detailed Component Analysis
```
📈 DETAILED USAGE ANALYSIS
════════════════════════════════════════════════════════════

🧠 COGNITIVE LOAD
Thinking Tokens:  ██████████████░░░░░░░░░░░░░░░░  1,234 tokens
Analysis Depth:   ████████████████████░░░░░░░░░  --think-hard (active)
Memory Usage:     ██████████░░░░░░░░░░░░░░░░░░░░  23 memories stored

🔧 MCP SERVER PERFORMANCE
Sequential:       ████████████████████████████░  98% (--uc active)
Magic:           █████████████████████░░░░░░░░░  78% efficiency  
Serena:          ███████████████████████████░░  94% optimization
Context7:        ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  Inactive
Puppeteer:       ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  Inactive

💡 OPTIMIZATION RECOMMENDATIONS
1. Consider using --uc with all Sequential calls (saves ~70% tokens)
2. Context usage at 88% - enable UltraCompressed mode soon
3. Cache hit rate excellent at 89% - continue current patterns
4. 3 MCP servers active - optimal for current workload
```

## Implementation

### Data Collection from Serena
```bash
# Get real-time metrics from Serena MCP
serena_stats=$(mcp__serena__read_memory usage_monitoring_status)

# Extract token usage from Claude Code
token_usage=$(echo $CLAUDE_CODE_USAGE_STATS)

# Calculate optimization metrics
cost_savings=$(calculate_serena_savings)
```

### Terminal Visualization
Uses ASCII progress bars and real-time data:
- **Horizontal bars** showing percentage filled
- **Color coding** for different metrics (if terminal supports)
- **Live updates** when using --watch flag
- **Detailed breakdowns** of each component

### Integration with Serena Memory
- Read current session stats: `mcp__serena__read_memory session_usage`
- Track optimization patterns: `mcp__serena__read_memory optimization_history` 
- Store monitoring snapshots: `mcp__serena__write_memory monitor_data`

@include shared/execution-patterns.yml#Standard_Workflow_Integration

## Workflow Integration
**Pre-Development**: `/monitor --usage` → check capacity before starting
**During Development**: `/monitor --watch` → real-time monitoring in terminal
**Post-Development**: `/monitor --breakdown` → analyze session efficiency

---
*Real-time usage monitoring displayed directly in terminal interface*