# SuperClaude Workflows

Real-world usage patterns and complete workflows for common development scenarios.

## Workflow Categories

### Frontend Development Workflows
### Backend Development Workflows  
### Mobile Development Workflows
### Security & Quality Workflows
### Debugging & Investigation Workflows
### Complete Project Workflows

---

## Frontend Development Workflows

### 1. React Application Development

**Scenario:** Building a React dashboard application with authentication

```bash
# Step 1: Project initialization
claude /build --init --react --magic --tdd
# Auto-detects: Frontend work
# Auto-assigns: --persona-frontend + Magic MCP
# Creates: React project with testing setup

# Step 2: Component development
claude /build --react --magic "create responsive dashboard layout with sidebar navigation"
# Generates: Complete dashboard components with Shadcn UI

# Step 3: Authentication implementation  
claude /build --feature --react --c7 "implement user authentication with NextAuth.js"
# Auto-assigns: --persona-security + Context7 MCP
# Creates: Secure authentication flow

# Step 4: Testing
claude /test --e2e --pup --coverage "test authentication and dashboard navigation"
# Auto-assigns: --persona-qa + Puppeteer MCP
# Creates: Comprehensive E2E tests

# Step 5: Performance optimization
claude /analyze --performance --pup --profile
# Auto-assigns: --persona-performance + Puppeteer
# Result: Performance analysis and optimization recommendations
```

### 2. Component Library Development

**Scenario:** Creating a reusable component library

```bash
# Step 1: Design system setup
claude /design --ui --magic "create design system with Shadcn UI components"
# Creates: Design system foundation

# Step 2: Component generation
claude /build --react --magic --tdd "create button component with variants (primary, secondary, danger)"
# Generates: Button component with tests

# Step 3: Documentation
claude --agent documentation-writer "create comprehensive component library documentation"
# Generates: Storybook stories, usage examples, API docs

# Step 4: Quality assurance
claude --agent master-code-reviewer "review component library for production readiness"
# Result: Comprehensive code review and recommendations
```

---

## Backend Development Workflows

### 1. API Development

**Scenario:** Building a RESTful API with authentication and database

```bash
# Step 1: API design
claude /design --api --ddd --seq --uc --think-hard
# Auto-assigns: --persona-architect + Sequential MCP
# Creates: API architecture and design patterns

# Step 2: Database schema
claude --agent database-backend-architect "design database schema for user management and content system"
# Creates: Complete database schema with relationships

# Step 3: API implementation
claude /build --api --tdd --c7 "implement Express.js API with authentication and CRUD operations"
# Auto-assigns: --persona-backend + Context7 MCP
# Creates: Complete API with tests

# Step 4: Security audit
claude /scan --security --owasp --strict
# Auto-assigns: --persona-security
# Result: Security vulnerability assessment

# Step 5: Performance optimization
claude /analyze --profile --performance --seq --uc
# Result: Performance bottleneck analysis
```

### 2. Microservices Architecture

**Scenario:** Converting monolith to microservices

```bash
# Step 1: Architecture analysis
claude /analyze --architecture --seq --uc --ultrathink
# Auto-assigns: --persona-architect + Sequential MCP
# Result: Comprehensive architecture analysis

# Step 2: Service decomposition
claude /design --microservices --ddd --seq --uc
# Creates: Service boundaries and communication patterns

# Step 3: Implementation planning
claude --agent scrum-manager "create implementation plan for microservices migration"
# Creates: Sprint planning and task breakdown

# Step 4: Service implementation
claude /build --api --microservices --docker --tdd
# Creates: Individual microservices with containerization
```

---

## Mobile Development Workflows

### 1. React Native Application

**Scenario:** Complete mobile app development

```bash
# Step 1: Complete app generation
claude --agent divine-code-architect "create React Native e-commerce app with product catalog, shopping cart, user authentication, and payment processing"
# Result: Complete mobile application

# Step 2: Performance optimization
claude --agent performance-optimizer "optimize React Native app for smooth 60fps performance"
# Result: Performance improvements and optimizations

# Step 3: Security review
claude --agent security-auditor "security audit of mobile app focusing on payment processing and user data"
# Result: Security assessment and fixes

# Step 4: App store preparation
claude --agent documentation-writer "create app store descriptions, screenshots, and user guides for iOS and Android"
# Result: App store ready materials

# Step 5: Deployment setup
claude --agent devops-deployment-manager "set up CI/CD for React Native app deployment to App Store and Google Play"
# Result: Automated deployment pipeline
```

### 2. Native iOS Development

**Scenario:** iOS app with Core ML integration

```bash
# Step 1: App architecture
claude --agent divine-code-architect "create SwiftUI app for photo organization with Core ML image recognition"
# Result: Complete iOS application

# Step 2: Performance optimization  
claude --agent performance-optimizer "optimize Core ML performance and battery usage"
# Result: Optimized ML implementation

# Step 3: App Store submission
claude --agent devops-deployment-manager "prepare iOS app for App Store submission with automated builds"
# Result: App Store ready deployment
```

---

## Security & Quality Workflows

### 1. Comprehensive Security Audit

**Scenario:** Pre-production security assessment

```bash
# Step 1: Automated security scan
claude /scan --security --owasp --deps --strict
# Auto-assigns: --persona-security
# Result: OWASP Top 10 vulnerability assessment

# Step 2: Deep security analysis
claude --agent security-auditor "comprehensive security audit including threat modeling and penetration testing preparation"
# Result: Complete security assessment

# Step 3: Security fixes
claude /improve --security --harden --validate
# Auto-assigns: --persona-security + --persona-refactorer
# Result: Security improvements and hardening

# Step 4: Compliance check
claude --agent security-auditor "verify GDPR, SOC2, and industry compliance requirements"
# Result: Compliance assessment and recommendations
```

### 2. Code Quality Improvement

**Scenario:** Legacy codebase improvement

```bash
# Step 1: Code analysis
claude /analyze --code --quality --seq --uc --think-hard
# Auto-assigns: --persona-analyzer + Sequential MCP
# Result: Comprehensive code quality assessment

# Step 2: Refactoring plan
claude --agent master-code-reviewer "create refactoring plan for legacy codebase improvement"
# Result: Systematic refactoring strategy

# Step 3: Incremental improvements
claude /improve --quality --iterate --threshold 90%
# Auto-assigns: --persona-refactorer
# Result: Iterative code quality improvements

# Step 4: Technical debt assessment
claude /analyze --tech-debt --seq --uc
# Result: Technical debt analysis and prioritization
```

---

## Debugging & Investigation Workflows

### 1. Performance Investigation

**Scenario:** Application performance degradation

```bash
# Step 1: Problem investigation
claude /troubleshoot --performance --investigate --seq --uc --introspect
# Auto-assigns: --persona-analyzer + --persona-performance
# Result: Systematic performance investigation

# Step 2: Deep analysis
claude /analyze --profile --bottlenecks --pup --seq --uc
# Auto-assigns: --persona-performance + Puppeteer + Sequential
# Result: Detailed performance profiling

# Step 3: Optimization implementation
claude --agent performance-optimizer "implement performance optimizations based on profiling results"
# Result: Performance improvements with measurable results

# Step 4: Monitoring setup
claude /monitor --performance --watch --alerts
# Result: Continuous performance monitoring
```

### 2. Bug Investigation

**Scenario:** Complex production bug

```bash
# Step 1: Evidence gathering
claude /troubleshoot --investigate --evidence --seq --uc --introspect
# Auto-assigns: --persona-analyzer + Sequential MCP
# Result: Systematic evidence collection

# Step 2: Root cause analysis
claude /analyze --debug --seq --uc --ultrathink
# Result: Deep root cause analysis

# Step 3: Solution implementation
claude /improve --fix --validate --tdd
# Result: Bug fix with tests to prevent regression

# Step 4: Post-incident review
claude --agent scrum-manager "create post-incident review and prevention strategy"
# Result: Process improvements and prevention measures
```

---

## Complete Project Workflows

### 1. SaaS Application Development

**Scenario:** Complete SaaS platform from concept to production

```bash
# Phase 1: Planning & Architecture
claude /design --saas --architecture --seq --uc --ultrathink
# Result: Complete SaaS architecture plan

claude --agent scrum-manager "create development roadmap for SaaS platform with user management, billing, and analytics"
# Result: Project planning and sprint organization

# Phase 2: Backend Development
claude --agent database-backend-architect "design scalable database schema for multi-tenant SaaS"
# Result: Database architecture

claude --agent divine-code-architect "create Node.js backend with GraphQL API, authentication, billing integration, and analytics"
# Result: Complete backend system

# Phase 3: Frontend Development  
claude --agent divine-code-architect "create React dashboard with Shadcn UI, user management, billing interface, and analytics"
# Result: Complete frontend application

# Phase 4: Quality Assurance
claude --agent master-code-reviewer "comprehensive code review of entire SaaS platform"
# Result: Production readiness assessment

claude /test --e2e --coverage --integration --pup
# Result: Comprehensive testing suite

# Phase 5: Security & Performance
claude --agent security-auditor "complete security audit for SaaS platform including compliance requirements"
# Result: Security assessment and compliance

claude --agent performance-optimizer "optimize SaaS platform for high availability and performance"
# Result: Performance optimization

# Phase 6: Deployment & Monitoring
claude --agent devops-deployment-manager "set up production deployment with CI/CD, monitoring, and scaling"
# Result: Production deployment pipeline

# Phase 7: Go-to-Market
claude --agent monetization-strategist "develop pricing strategy and revenue optimization for SaaS platform"
# Result: Business strategy and monetization plan

claude --agent documentation-writer "create user documentation, API docs, and marketing materials"
# Result: Complete documentation package
```

### 2. E-commerce Platform

**Scenario:** Complete e-commerce solution

```bash
# Phase 1: Architecture & Planning
claude /design --ecommerce --microservices --seq --uc
# Result: E-commerce architecture

# Phase 2: Core Services
claude --agent divine-code-architect "create product catalog service with search, filtering, and inventory management"
claude --agent divine-code-architect "create user service with authentication, profiles, and preferences"  
claude --agent divine-code-architect "create order service with cart, checkout, and payment processing"
claude --agent divine-code-architect "create notification service with email, SMS, and push notifications"

# Phase 3: Frontend Applications
claude --agent divine-code-architect "create React web store with product browsing, cart, and checkout"
claude --agent divine-code-architect "create React Native mobile app with offline support and push notifications"
claude --agent divine-code-architect "create admin dashboard with inventory, order, and user management"

# Phase 4: Integration & Testing
claude /test --integration --e2e --performance --pup
# Result: Comprehensive testing across all services

# Phase 5: Security & Compliance
claude --agent security-auditor "security audit focusing on payment processing and user data protection"
# Result: PCI compliance and security hardening

# Phase 6: Performance & Scaling
claude --agent performance-optimizer "optimize for high traffic and concurrent users"
claude --agent devops-deployment-manager "set up auto-scaling and load balancing"

# Phase 7: Launch Preparation
claude --agent documentation-writer "create user guides, seller documentation, and API references"
claude --agent monetization-strategist "develop pricing, commission structure, and growth strategy"
```

---

## Emergency Workflows

### 1. Production Incident Response

**Scenario:** Critical production issue

```bash
# Step 1: Immediate assessment (URGENT)
claude /troubleshoot --prod --critical --ultrathink --seq --uc --introspect
# Result: Rapid incident assessment

# Step 2: Hotfix development
claude /improve --hotfix --critical --validate --dry-run
# Result: Emergency fix with safety validation

# Step 3: Rapid deployment
claude /deploy --hotfix --env prod --validate --monitor
# Result: Safe emergency deployment

# Step 4: Post-incident analysis
claude --agent scrum-manager "create incident post-mortem and prevention strategy"
# Result: Process improvements and prevention measures
```

### 2. Security Incident Response

**Scenario:** Security breach or vulnerability

```bash
# Step 1: Security assessment (URGENT)
claude --agent security-auditor "emergency security audit - potential breach detected"
# Result: Immediate security assessment

# Step 2: Incident containment
claude /improve --security --emergency --isolate
# Result: Immediate security measures

# Step 3: Comprehensive audit
claude /scan --security --comprehensive --forensic
# Result: Complete security forensics

# Step 4: Recovery planning
claude --agent security-auditor "create security incident recovery and hardening plan"
# Result: Recovery strategy and improved security posture
```

---

## Workflow Best Practices

### 1. Auto-Detection Optimization
Let SuperClaude automatically detect what you need:
```bash
# Instead of manually specifying everything:
claude /build --react --magic --persona-frontend --c7 --tdd

# Simply describe what you want:
claude "build a React dashboard with authentication"
# SuperClaude automatically applies appropriate personas, MCPs, and flags
```

### 2. Progressive Complexity
Start simple and add complexity as needed:
```bash
# Start simple
claude /analyze --code

# Add depth if needed
claude /analyze --code --think

# Add comprehensive analysis
claude /analyze --code --think-hard --seq --uc
```

### 3. Flag Combination Patterns
Use proven flag combinations:
```bash
# Research and implementation
claude /build --react --magic --c7 --tdd

# Deep analysis
claude /analyze --seq --uc --think-hard --introspect

# Production safety
claude /deploy --env prod --validate --security --strict
```

### 4. Agent Workflows for Complex Tasks
Use agents for comprehensive solutions:
```bash
# Complete application development
claude --agent divine-code-architect "specification"

# Followed by quality assurance
claude --agent master-code-reviewer "review for production"

# Followed by deployment
claude --agent devops-deployment-manager "set up production deployment"
```

---

**These workflows represent real-world usage patterns that leverage SuperClaude's intelligence to automatically assign the right experts with the right tools for any development challenge.**