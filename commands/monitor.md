**Purpose**: Real-time Claude Code Usage Monitoring

**EXECUTE COMMAND**: `claude-monitor`

**Description**: Launches the real Claude Code Usage Monitor v3.1.0 with horizontal progress bars, session tracking, burn rate analytics, and cost optimization in terminal.

---

## Real-Time Monitoring Interface

When you run this command, you'll see:

### 📊 Live Usage Display
- **Horizontal progress bars** with █ (filled) and ░ (empty) blocks  
- **Token consumption** showing current vs limits with percentages
- **Session tracking** with 5-hour rolling windows
- **Burn rate analytics** predicting when you'll hit limits
- **Cost tracking** with model-specific pricing
- **Plan detection** (Pro/Max5/Max20/Custom with auto-switching)

### 🎯 Available Commands
```bash
# Main monitoring interface
claude-monitor                    # Auto-detection with custom plan
claude-monitor --plan pro         # Pro plan (19k tokens)
claude-monitor --plan max5        # Max5 plan (88k tokens)  
claude-monitor --plan max20       # Max20 plan (220k tokens)
claude-monitor --plan custom      # P90 analysis auto-detection

# Short aliases
cmonitor                          # Short alias
ccmonitor                         # Alternative short alias
ccm                              # Shortest alias

# View modes
claude-monitor --view realtime    # Live monitoring (default)
claude-monitor --view daily       # Daily usage breakdown
claude-monitor --view monthly     # Monthly analysis  

# Advanced options
claude-monitor --refresh-rate 5   # Faster refresh (5 seconds)
claude-monitor --theme dark       # Force dark theme
claude-monitor --timezone UTC     # Specific timezone
```

### 📈 Features
- **P90 Analysis**: Machine learning-based limit detection
- **Smart Auto-Detection**: Automatic plan switching when limits exceeded
- **Multi-Session Tracking**: Monitors overlapping 5-hour windows
- **Real-Time Updates**: Configurable refresh rates (1-60 seconds)
- **Rich Terminal UI**: WCAG-compliant themes with color coding
- **Cost Analytics**: Model-specific pricing with cache token calculations

### 🚀 Example Output
```
🎯 Claude Code Usage Monitor v3.1.0
════════════════════════════════════════════════════════════

📊 TOKEN USAGE (Current Session)
Input Tokens:     ████████████████████░░░░░░░░  2,847 / 4,096  (69%)
Output Tokens:    ██████████████░░░░░░░░░░░░░░░░  1,923 / 4,096  (47%)
Context Used:     ███████████████████████░░░░░░  7,234 / 8,192  (88%)

💰 COST TRACKING
Original Cost:    $0.42
Current Cost:     $0.18  (57% savings)
Burn Rate:        $0.05/hour

⏰ SESSION INFO
Time Remaining:   2h 34m 12s
Reset Time:       14:30 UTC
Next Reset:       Tomorrow 09:00
```

### 🔄 Exit Instructions
- Press **Ctrl+C** to exit monitoring
- Monitor runs continuously with real-time updates
- Safe to leave running in background terminal

---

**This is the ACTUAL monitoring tool showing real usage data with horizontal bars filling up as you described!**