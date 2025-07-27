# MCP Servers - Global Installation Reference

## 🚀 **Installed MCP Servers**

### **Core MCP Servers**
1. **@modelcontextprotocol/server-filesystem**
   - **Purpose**: File system access and manipulation
   - **Usage**: File operations, directory traversal, file reading/writing
   - **Command**: `npx @modelcontextprotocol/server-filesystem`

2. **@modelcontextprotocol/server-sequential-thinking** 
   - **Purpose**: Sequential thinking and problem solving
   - **Usage**: Step-by-step reasoning, complex problem breakdown
   - **Command**: `npx @modelcontextprotocol/server-sequential-thinking`

3. **@upstash/context7-mcp**
   - **Purpose**: Context7 MCP server for enhanced context management
   - **Usage**: Advanced context handling and state management
   - **Command**: `npx @upstash/context7-mcp`

### **Magic MCP Servers**
4. **@21st-dev/magic**
   - **Purpose**: Magic MCP UI builder by 21st.dev
   - **Usage**: AI-powered UI generation and frontend development
   - **Command**: `npx @21st-dev/magic`

5. **@mseep/magic** 
   - **Purpose**: Alternative Magic MCP UI builder
   - **Usage**: UI building with AI assistance
   - **Command**: `npx @mseep/magic`

### **Web Automation**
6. **puppeteer**
   - **Purpose**: Web browser automation and scraping
   - **Usage**: Automated testing, web scraping, PDF generation
   - **Command**: `npx puppeteer`

## 📁 **Configuration File**
- **Location**: `~/.claude/mcp-config.json`
- **Purpose**: Claude Code UI automatic MCP server detection
- **Scope**: Available globally for any project

## 🎯 **How to Use**

### **In Claude Code UI:**
1. MCP servers are automatically available when Claude Code starts
2. No manual setup required for each project
3. Available across all agents and sessions

### **Manual Testing:**
```bash
# Test filesystem server
npx @modelcontextprotocol/server-filesystem /home/casbattle

# Test sequential thinking
npx @modelcontextprotocol/server-sequential-thinking

# Test Context7
npx @upstash/context7-mcp

# Test Magic UI builders
npx @21st-dev/magic
npx @mseep/magic
```

## 🔧 **Troubleshooting**

### **If MCP server doesn't start:**
1. Check if globally installed: `npm list -g | grep mcp`
2. Reinstall if needed: `npm install -g [package-name]`
3. Verify config file: `cat ~/.claude/mcp-config.json`

### **Adding New MCP Servers:**
1. Install globally: `npm install -g [new-mcp-server]`
2. Add to `~/.claude/mcp-config.json`
3. Restart Claude Code UI

## 📋 **Available for Any Project**
These MCP servers are now permanently available for:
- ✅ Electric Night UI project
- ✅ Any future React/Node.js projects
- ✅ General development workflows
- ✅ AI-assisted coding sessions
- ✅ Web automation tasks

---
*Installation completed: July 10, 2025*
*Location: WSL Ubuntu environment*
*Global access: Enabled for all Claude Code sessions*