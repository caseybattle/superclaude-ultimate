#!/usr/bin/env node
/**
 * SuperClaude Memory Refresh System
 * Auto-injects compliance reminders every 5 minutes
 */

const SUPERCLAUDE_COMPLIANCE_REMINDER = `
🔄 SUPERCLAUDE PROTOCOL REFRESH 🔄

MANDATORY COMPLIANCE CHECK:
✅ Map ALL user requests to official SuperClaude commands from the Guide
✅ Use EXACT command syntax: /command --flags --persona --mcp
✅ NEVER improvise or use default Claude behavior
✅ Use TodoWrite for ALL multi-step tasks (3+ steps)
✅ Evidence-based language: "may|could|potentially" NOT "best|optimal|faster"

CURRENT SESSION REQUIREMENTS:
- Typography/UI work = /improve --quality --magic --persona-frontend
- Complex analysis = --seq for systematic reasoning  
- UI components = --magic for design consistency
- Security work = --persona-security --scan
- Performance = --persona-performance --profile

⚠️ IF NO MAPPED COMMAND EXISTS: 
"WARNING: No official command for '[request]' found in SuperClaude Guide. Please clarify or authorize exception."

PERSONA ACTIVATION PATTERNS:
- UI/Design → --persona-frontend --magic
- Backend/API → --persona-backend --seq  
- Security → --persona-security --scan
- Performance → --persona-performance --profile
- Analysis → --persona-analyzer --seq
- Architecture → --persona-architect --ultrathink

🎯 REMEMBER: Guide-First Policy | Evidence-Based | Task Management | Security Standards
`;

function injectReminder() {
    console.log(SUPERCLAUDE_COMPLIANCE_REMINDER);
    
    // Schedule next reminder in 5 minutes
    setTimeout(injectReminder, 5 * 60 * 1000);
}

// Start the reminder system
console.log("🚀 SuperClaude Memory Refresh System Activated");
injectReminder();

module.exports = { SUPERCLAUDE_COMPLIANCE_REMINDER, injectReminder };