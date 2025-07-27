# SuperClaude Agent Setup Guide

## Critical Step: Create Your 9 Specialized Agents

After installing SuperClaude, you **must** create 9 specialized agents in Claude Code to get the complete experience. This guide shows you exactly how.

## Why This Step is Required

The 9 agents handle complex tasks that go beyond normal commands:
- **divine-code-architect** → Complete application generation
- **master-code-reviewer** → Expert code review
- **database-backend-architect** → Database & backend systems
- **performance-optimizer** → Advanced optimization
- **devops-deployment-manager** → Production deployment
- **documentation-writer** → Comprehensive documentation
- **scrum-manager** → Project management
- **monetization-strategist** → Revenue strategies
- **shadcn-ui-design-reviewer** → UI/UX design review

## Step-by-Step Agent Creation

### Method 1: Manual Creation (Recommended for Beginners)

For each agent, follow these steps:

1. **Open the agent file:**
   ```bash
   cat ~/.claude/agents/divine-code-architect.md
   ```

2. **Find the YAML frontmatter (between the `---` lines):**
   ```yaml
   ---
   name: divine-code-architect
   description: Use this agent when you need to generate complete, production-ready code...
   color: purple
   ---
   ```

3. **In Claude Code, create the agent:**
   - Open Claude Code
   - Use the agent creation feature
   - **Name:** Copy from `name:` field
   - **Description:** Copy from `description:` field  
   - **Color:** Copy from `color:` field
   - **Prompt:** Copy everything AFTER the second `---` line

4. **Repeat for all 9 agents**

### Method 2: Quick Copy Script (Advanced Users)

This script displays each agent for easy copying:

```bash
#!/bin/bash
cd ~/.claude/agents

for agent in divine-code-architect master-code-reviewer database-backend-architect performance-optimizer devops-deployment-manager documentation-writer scrum-manager monetization-strategist shadcn-ui-design-reviewer; do
    echo "=========================================="
    echo "CREATING AGENT: $agent"
    echo "=========================================="
    echo
    
    # Extract YAML frontmatter
    echo "NAME:"
    grep "^name:" $agent.md | cut -d' ' -f2-
    echo
    
    echo "DESCRIPTION:"
    grep "^description:" $agent.md | cut -d' ' -f2-
    echo
    
    echo "COLOR:"
    grep "^color:" $agent.md | cut -d' ' -f2-
    echo
    
    echo "PROMPT (copy everything below):"
    echo "----------------------------------------"
    # Extract everything after the second ---
    sed -n '/^---$/,/^---$/d; /^---$/,$p' $agent.md
    echo "----------------------------------------"
    echo
    echo "Press Enter when you've created this agent in Claude Code..."
    read
done

echo "✅ All 9 agents should now be created!"
```

### Method 3: One-at-a-Time Helper

```bash
# Run this to get prompted for each agent individually
cd ~/.claude/agents
ls *.md | while read agent; do
    echo "Next agent to create: ${agent%.md}"
    echo "File contents:"
    cat "$agent"
    echo
    echo "Create this agent in Claude Code, then press Enter for the next one..."
    read
done
```

## Verification

After creating all agents, verify they work:

```bash
# Test that agents are available (these should work in Claude Code)
# Try invoking one of your new agents
claude "Use the divine-code-architect agent to create a simple React component"
```

## Troubleshooting

### "Agent not found" errors
- Make sure you created the agent with the exact name from the `name:` field
- Check that you're using the correct Claude Code agent syntax

### Missing agent files
- Ensure you cloned the SuperClaude repository to `~/.claude`
- Check that `~/.claude/agents/` contains 9 `.md` files

### Agent doesn't work as expected
- Verify you copied the entire prompt (everything after the second `---`)
- Make sure there are no extra characters or formatting issues

## What Each Agent Does

| Agent | Purpose | When to Use |
|-------|---------|-------------|
| `divine-code-architect` | Generates complete applications | "Build me a mobile app" |
| `master-code-reviewer` | Expert code review | "Review this code for production" |
| `database-backend-architect` | Database & backend design | "Design my database schema" |
| `performance-optimizer` | Performance optimization | "This app is slow, optimize it" |
| `devops-deployment-manager` | Production deployment | "Deploy this to production" |
| `documentation-writer` | Creates documentation | "Document this API" |
| `scrum-manager` | Project management | "Help me organize this project" |
| `monetization-strategist` | Revenue strategies | "How can I monetize this app?" |
| `shadcn-ui-design-reviewer` | UI/UX design review | "Review this interface design" |

## Next Steps

Once all agents are created:
1. Test SuperClaude commands: `claude /analyze --help`
2. Try using an agent: `claude "Use divine-code-architect to build..."`
3. Monitor your usage: `claude-monitor`
4. Read the full documentation: `cat ~/.claude/README.md`

**You now have the complete SuperClaude Ultimate experience!** 🚀