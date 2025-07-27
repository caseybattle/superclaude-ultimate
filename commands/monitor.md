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

### Claude Code Usage Monitor (Maciek-roboblog)
Uses the installed claude-monitor tool for real-time monitoring:

```bash
# Basic monitoring with horizontal progress bars
claude-monitor

# Alternative command names
claude-code-monitor    # Full descriptive name
cmonitor              # Short alias  
ccmonitor             # Short alternative
ccm                   # Shortest alias

# Plan-specific monitoring
claude-monitor --plan pro          # Claude Pro (19k tokens)
claude-monitor --plan max5         # Claude Max5 (88k tokens)
claude-monitor --plan max20        # Claude Max20 (220k tokens)
claude-monitor --plan custom       # Auto-detection with P90 analysis
```

### Advanced Features
- **P90 Analysis**: Machine learning-based limit detection
- **Burn Rate Calculation**: Predicts session exhaustion
- **Cost Analytics**: Model-specific pricing with cache tokens
- **Session Tracking**: 5-hour rolling windows
- **Multi-view Support**: realtime, daily, monthly analysis

### Configuration Options
```bash
# Custom refresh rates
claude-monitor --refresh-rate 5 --refresh-per-second 1.0

# Timezone and time format
claude-monitor --timezone America/New_York --time-format 24h

# Theme and display
claude-monitor --theme dark --view realtime

# Reset schedule
claude-monitor --reset-hour 9
```

### Integration with SuperClaude
- Store monitoring data: `mcp__serena__write_memory monitor_results`
- Track usage patterns: `mcp__serena__read_memory usage_monitoring_status`
- Compare optimization effectiveness across sessions

@include shared/execution-patterns.yml#Standard_Workflow_Integration

## Workflow Integration
**Pre-Development**: `/monitor --usage` → check capacity before starting
**During Development**: `/monitor --watch` → real-time monitoring in terminal
**Post-Development**: `/monitor --breakdown` → analyze session efficiency

---
*Real-time usage monitoring displayed directly in terminal interface*