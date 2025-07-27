#!/bin/bash
# SuperClaude Configuration Validation Script
# Version: 2.0.1
# Purpose: Validate all configuration files for consistency and correctness

echo "═══════════════════════════════════════════════════════"
echo " SuperClaude Configuration Validator v2.0.1"
echo "═══════════════════════════════════════════════════════"
echo ""

# Color codes for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Counters
TOTAL=0
VALID=0
INVALID=0

# Function to validate JSON files
validate_json() {
    local file=$1
    TOTAL=$((TOTAL + 1))
    if python3 -m json.tool "$file" > /dev/null 2>&1; then
        echo -e "${GREEN}✓ Valid JSON${NC}: $file"
        VALID=$((VALID + 1))
        return 0
    else
        echo -e "${RED}✗ Invalid JSON${NC}: $file"
        INVALID=$((INVALID + 1))
        return 1
    fi
}

# Function to validate YAML files
validate_yaml() {
    local file=$1
    TOTAL=$((TOTAL + 1))
    if python3 -c "import yaml; yaml.safe_load(open('$file'))" 2>/dev/null; then
        echo -e "${GREEN}✓ Valid YAML${NC}: $file"
        VALID=$((VALID + 1))
        return 0
    else
        echo -e "${RED}✗ Invalid YAML${NC}: $file"
        INVALID=$((INVALID + 1))
        return 1
    fi
}

# Check for duplicate MCP configurations
check_mcp_consistency() {
    echo ""
    echo "Checking MCP Server Consistency..."
    echo "──────────────────────────────────"
    
    if [ -f "settings.local.json" ] && [ -f "mcp-config.json" ]; then
        echo -e "${YELLOW}⚠ Warning${NC}: Both settings.local.json and mcp-config.json contain MCP servers"
        echo "  Primary configuration: settings.local.json"
        echo "  Deprecated: mcp-config.json (marked for removal)"
    fi
}

# Check for duplicate YAML keys
check_yaml_duplicates() {
    echo ""
    echo "Checking for Duplicate YAML Keys..."
    echo "──────────────────────────────────"
    
    if [ -d "shared" ]; then
        cd shared
        duplicates=$(grep -h "^[A-Za-z_]*:" superclaude-*.yml 2>/dev/null | sort | uniq -c | sort -rn | awk '$1 > 1')
        if [ ! -z "$duplicates" ]; then
            echo -e "${YELLOW}⚠ Found duplicate keys:${NC}"
            echo "$duplicates"
        else
            echo -e "${GREEN}✓ No duplicate keys found${NC}"
        fi
        cd ..
    fi
}

# Main validation
echo "Validating JSON Files..."
echo "──────────────────────────────────"
for file in $(find . -name "*.json" -not -path "./todos/*" -not -path "./node_modules/*" 2>/dev/null); do
    validate_json "$file"
done

echo ""
echo "Validating YAML Files..."
echo "──────────────────────────────────"
for file in $(find . -name "*.yml" -o -name "*.yaml" -not -path "./node_modules/*" 2>/dev/null); do
    validate_yaml "$file"
done

# Additional checks
check_mcp_consistency
check_yaml_duplicates

# Summary
echo ""
echo "═══════════════════════════════════════════════════════"
echo " Validation Summary"
echo "═══════════════════════════════════════════════════════"
echo "Total files checked: $TOTAL"
echo -e "Valid files: ${GREEN}$VALID${NC}"
echo -e "Invalid files: ${RED}$INVALID${NC}"

# Check configuration versions
echo ""
echo "Configuration Versions:"
echo "──────────────────────────────────"
if [ -f "settings.local.json" ]; then
    version=$(python3 -c "import json; print(json.load(open('settings.local.json')).get('version', 'Not specified'))" 2>/dev/null)
    echo "settings.local.json: v$version"
fi

if [ -f "shared/superclaude-core.yml" ]; then
    echo "SuperClaude Framework: v2.0.1"
fi

echo ""
if [ $INVALID -eq 0 ]; then
    echo -e "${GREEN}✓ All configuration files are valid!${NC}"
    exit 0
else
    echo -e "${RED}✗ Some configuration files have issues. Please review above.${NC}"
    exit 1
fi