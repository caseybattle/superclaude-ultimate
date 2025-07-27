# /refresh - Configuration & Instruction Review Command

Reviews and validates SuperClaude configuration files, instructions, and reference patterns line by line.

## Purpose
Systematically review and validate all SuperClaude configuration files, ensuring consistency, detecting conflicts, and maintaining synchronization between global instructions and command implementations.

## Usage
```
/refresh [options]
```

## Core Functionality

### 1. Configuration Review
- Parse CLAUDE.md line by line
- Validate all @include references
- Check for circular dependencies
- Verify YAML syntax in all referenced files
- Detect conflicting directives

### 2. Instruction Validation
- Compare global instructions with command implementations
- Identify deprecated patterns
- Validate persona configurations
- Check MCP server integrations
- Verify flag inheritance patterns

### 3. Reference File Analysis
- Scan all .yml files in shared/
- Validate cross-references
- Check for missing includes
- Detect orphaned configurations
- Ensure consistency across patterns

## Flags

### Review Scope
- `--global`: Review global CLAUDE.md only
- `--commands`: Review command files only
- `--shared`: Review shared configuration patterns only
- `--all`: Complete system review (default)

### Analysis Depth
- `--quick`: Basic syntax validation
- `--standard`: Standard review with cross-references (default)
- `--deep`: Deep analysis with dependency tracing
- `--exhaustive`: Complete line-by-line analysis with recommendations

### Output Options
- `--verbose`: Show all processing details
- `--quiet`: Only show errors and warnings
- `--report`: Generate detailed report in .claudedocs/reports/
- `--fix`: Attempt to fix simple issues automatically

### Validation Focus
- `--syntax`: YAML/Markdown syntax validation
- `--references`: Validate all @include references
- `--personas`: Validate persona configurations
- `--mcp`: Validate MCP server configurations
- `--flags`: Validate flag inheritance patterns
- `--security`: Security configuration validation

### Production Quality Mode
- `--no-bluff`: Enable "No Bluff" mode - production-quality fixes only
- `--evidence`: Require evidence for all changes (diffs/code blocks)
- `--minimal`: Apply minimal, professional fixes only
- `--production`: Production-ready changes with full validation

## Examples

### Basic Review
```bash
/refresh
# Reviews all configuration files with standard depth
```

### Deep Global Review
```bash
/refresh --global --deep --verbose
# Deep review of CLAUDE.md with detailed output
```

### Fix Simple Issues
```bash
/refresh --all --fix --report
# Review everything, fix simple issues, generate report
```

### Validate References
```bash
/refresh --references --exhaustive
# Exhaustive validation of all @include references
```

### Security Focus
```bash
/refresh --security --deep --report
# Deep security configuration review with report
```

### No Bluff Mode
```bash
/refresh --no-bluff --fix --evidence
# Production-quality fixes with evidence only
```

### Production Ready
```bash
/refresh --production --minimal --report
# Minimal production-ready fixes with full report
```

## Review Process

### Phase 1: File Discovery
1. Locate CLAUDE.md in ~/.claude/
2. Scan commands/ directory
3. Index shared/ configuration files
4. Build dependency graph

### Phase 2: Syntax Validation
1. Validate Markdown syntax
2. Check YAML formatting
3. Verify include syntax
4. Detect malformed patterns

### Phase 3: Reference Resolution
1. Parse @include statements
2. Resolve file paths
3. Validate anchors (#Section_Name)
4. Check circular dependencies

### Phase 4: Content Analysis
1. Line-by-line parsing
2. Pattern recognition
3. Consistency validation
4. Conflict detection

### Phase 5: Reporting
1. Generate findings summary
2. Categorize issues by severity
3. Provide fix recommendations
4. Create actionable report

## Integration with SuperClaude

### Automatic Triggers
- After major configuration updates
- Before critical operations
- On system initialization
- When conflicts detected

### Workflow Integration
```yaml
Refresh_Workflow:
  triggers:
    - configuration_change
    - version_update
    - conflict_detection
  
  actions:
    - validate_syntax
    - resolve_references
    - check_consistency
    - generate_report
```

### Error Handling
```yaml
Error_Categories:
  CRITICAL:
    - missing_core_files
    - circular_dependencies
    - security_violations
  
  WARNING:
    - deprecated_patterns
    - unused_configurations
    - inconsistent_naming
  
  INFO:
    - optimization_opportunities
    - style_improvements
    - documentation_gaps
```

## Output Format

### Console Output
```
[REFRESH] Starting configuration review...
[PARSING] CLAUDE.md (2,847 lines)
  ✓ Syntax valid
  ✓ 47 @include references resolved
  ⚠ 3 deprecated patterns found
  
[SCANNING] Commands (18 files)
  ✓ All commands validated
  ✓ Flag inheritance consistent
  
[VALIDATING] Shared patterns (24 files)
  ✓ YAML syntax valid
  ✗ 2 orphaned references found
  
[SUMMARY] Review complete
  - 89 files processed
  - 3 warnings
  - 2 errors
  - Report saved to: .claudedocs/reports/refresh-2024-01-18.md
```

### Report Structure
```markdown
# SuperClaude Configuration Review Report

## Executive Summary
- Total files reviewed: 89
- Critical issues: 0
- Warnings: 3
- Suggestions: 12

## Detailed Findings

### CLAUDE.md Analysis
- Lines processed: 2,847
- Include statements: 47
- Validation status: PASSED

### Command Validation
[Detailed command analysis...]

### Pattern Consistency
[Pattern validation results...]

## Recommendations
1. Update deprecated patterns in...
2. Remove orphaned references in...
3. Consider consolidating...
```

## Best Practices

### Regular Reviews
- Run weekly for active development
- Run before major deployments
- Run after configuration changes
- Include in CI/CD pipeline

### Fix Priority
1. Security violations (CRITICAL)
2. Broken references (HIGH)
3. Deprecated patterns (MEDIUM)
4. Style inconsistencies (LOW)

### Maintenance Workflow
1. `/refresh --all --report`
2. Review generated report
3. `/refresh --fix` for auto-fixes
4. Manual fixes for complex issues
5. `/refresh --all` to verify

## Advanced Features

### Production-Quality "No Bluff" Mode

When enabled with `--no-bluff`, the command operates under strict evidence-based rules:

#### Non-Negotiable Rules
1. **Never claim success without evidence**
2. **Evidence requirement - ONE of:**
   - A unified diff of every file changed
   - A before-and-after code block that can be copy-pasted and compiled
3. **Explicit unchanged files**: If a file was checked but not modified, state "UNCHANGED: <filename>"
4. **No filler or inventions**: No apologies, no invented functions, no silent edits

#### Output Format for No Bluff Mode
```
### PATCH
<unified diff or side-by-side code before/after>
### END PATCH
```

If unable to produce evidence, the command will respond with: **UNRESOLVED**

#### Workflow in No Bluff Mode
1. **Scan entire project** - Infer language, framework, and build system
2. **Locate violations** - Find every place violating design or causing bugs
3. **Apply minimal fixes** - Professional, production-ready changes only
4. **Output evidence** - Diffs or code blocks for every change

#### Example No Bluff Output
```
[REFRESH] No Bluff Mode Active
[SCANNING] Configuration files...
[FIXING] Issue in shared/security-patterns.yml

### PATCH
--- a/.claude/shared/security-patterns.yml
+++ b/.claude/shared/security-patterns.yml
@@ -15,7 +15,7 @@ Security_Patterns:
     severity: CRITICAL
   
   SQL_Injection:
-    pattern: "query.*\\${.*}"
+    pattern: "query.*\\$\\{.*\\}"
     message: "Potential SQL injection vulnerability"
     severity: CRITICAL

UNCHANGED: .claude/shared/quality-patterns.yml
UNCHANGED: .claude/commands/analyze.md
### END PATCH
```

### Custom Validation Rules
```yaml
Custom_Rules:
  file_patterns:
    - "*.yml"
    - "*.md"
  
  validation_rules:
    - name: "no_tabs"
      pattern: "\t"
      severity: "WARNING"
      message: "Use spaces instead of tabs"
    
    - name: "consistent_headers"
      pattern: "^#{1,6} "
      validate: "markdown_headers"
```

### Integration Hooks
```yaml
Hooks:
  pre_refresh:
    - backup_configurations
    - notify_team
  
  post_refresh:
    - update_documentation
    - commit_fixes
    - deploy_updates
```

## Related Commands
- `/analyze --config`: Analyze specific configurations
- `/troubleshoot --config`: Debug configuration issues
- `/document --config`: Generate configuration docs
- `/improve --config`: Optimize configurations

## Notes
- First run may take longer due to indexing
- Cached results expire after 24 hours
- Use `--force` to bypass cache
- Reports are kept for 30 days