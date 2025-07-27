**Purpose**: Serena AI Dashboard Monitoring and Usage Analytics

---

@include shared/universal-constants.yml#Universal_Legend

## Command Execution
Execute: immediate | --watch→continuous monitoring
Purpose: "Display Serena dashboard with real-time usage metrics and cost optimization data"

Connects to Serena's live dashboard to show actual usage data, horizontal bar graphs, token consumption, and optimization recommendations.

@include shared/flag-inheritance.yml#Universal_Always

## Custom Flags
**--usage**: Focus on token/cost usage statistics
**--optimize**: Show optimization recommendations from Serena
**--watch**: Continuous monitoring with auto-refresh
**--screenshot**: Capture dashboard image for analysis
**--metrics**: Detailed performance metrics view

## Examples
- `/monitor` - Live Serena dashboard with usage graphs
- `/monitor --usage --screenshot` - Usage stats with screenshot
- `/monitor --watch` - Continuous dashboard monitoring
- `/monitor --optimize --uc` - Optimization recommendations

## Implementation

### Serena Dashboard Connection
```javascript
// Connect to live Serena dashboard
const dashboardUrl = 'http://127.0.0.1:24282/dashboard/index.html';

// Use Puppeteer to capture real-time data
await page.goto(dashboardUrl);
await page.screenshot({ path: 'serena-dashboard.png', fullPage: true });

// Extract usage metrics
const usageData = await page.evaluate(() => {
  return {
    tokenUsage: document.querySelector('.token-usage')?.textContent,
    costSavings: document.querySelector('.cost-savings')?.textContent,
    optimizationLevel: document.querySelector('.optimization-level')?.textContent
  };
});
```

### Live Dashboard Features
1. **Horizontal Bar Graphs**: Real-time token usage visualization
2. **Cost Optimization**: Savings from Serena's AI optimization  
3. **Performance Metrics**: Response times and efficiency data
4. **Usage Patterns**: Historical usage analysis and trends

### Dashboard Data Display
- **Token Usage**: Visual bars showing current consumption vs limits
- **Cost Metrics**: Real-time cost tracking and savings achieved
- **Optimization Status**: Current Serena optimization effectiveness
- **Performance Graphs**: Response times and system efficiency

### Integration with MCP Servers
Use Puppeteer MCP to:
- Navigate to Serena dashboard: `mcp__puppeteer__puppeteer_navigate`
- Capture dashboard screenshots: `mcp__puppeteer__puppeteer_screenshot`
- Extract usage data: `mcp__puppeteer__puppeteer_evaluate`
- Monitor real-time updates: `mcp__puppeteer__browser_snapshot`

### Serena Memory Integration
- Store dashboard snapshots: `mcp__serena__write_memory`
- Track optimization patterns: `mcp__serena__read_memory dashboard_metrics`
- Compare performance trends: Historical analysis

@include shared/execution-patterns.yml#Standard_Workflow_Integration

## Workflow Integration
**Pre-Development**: `/monitor --usage` → check current capacity
**During Development**: `/monitor --watch` → real-time optimization tracking
**Post-Development**: `/monitor --metrics` → analyze session performance

---
*Live connection to Serena dashboard for real-time monitoring*