**Purpose**: AspasiaUI Portal Playground development and testing

---

@include shared/universal-constants.yml#Universal_Legend

## Command Execution
Execute: immediate | Portal-specific development workflow
Purpose: "Develop and test portal-based component playground features"

Specialized command for AspasiaUI portal playground development and testing.

@include shared/flag-inheritance.yml#Universal_Always

## Custom Flags
**--dev**: Start portal development server
**--test**: Test portal components and animations
**--render**: Test universal rendering engine
**--debug**: Debug portal playground issues
**--optimize**: Optimize portal performance

## Examples
- `/portal --dev` - Start portal development
- `/portal --test --pup` - E2E portal testing
- `/portal --render --magic` - Test component rendering
- `/portal --debug --seq` - Deep portal debugging

## Implementation

### Development Workflow
```bash
# Start development
npm run dev

# Test portal components
ls components/preview/
ls components/playground/

# Check portal status
git status | grep -E "(portal|playground|preview)"
```

### Portal Components
- **PortalPlayground**: Main playground interface
- **WorkingRealExecutor**: Universal component renderer
- **PortalCanvas**: Animation canvas system
- **UniversalPropertiesPanel**: Dynamic property editor

### Testing Strategy
1. **Component Rendering**: Test universal executor
2. **Portal Animations**: Validate portal effects
3. **Property Editing**: Test dynamic properties
4. **Framework Detection**: Verify universal framework support

### Performance Optimization
- **Rendering Engine**: Optimize component execution
- **Portal Animations**: Smooth 60fps portal effects
- **Memory Management**: Efficient component cleanup
- **Bundle Size**: Minimize portal playground bundle

## Specialized Operations
**Portal Animation Testing**: Validate portal entrance/exit effects
**Universal Rendering**: Test component execution across frameworks
**Property Panel Sync**: Ensure property changes reflect in real-time
**Framework Detection**: Verify React/Vue/Angular component support

---
*Specialized for AspasiaUI portal development*