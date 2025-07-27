# SuperClaude Agents Reference

Complete guide to all 9 specialized agents in the SuperClaude framework. Agents are used for complex, multi-step tasks that require complete application generation or specialized expertise.

## When to Use Agents vs Commands vs Personas

### Commands + Personas (Layer 2)
**Use for:** Daily development tasks, analysis, improvements
**Examples:** Code review, bug fixing, testing, refactoring
```bash
claude /analyze --code --persona-frontend
claude /improve --performance --persona-backend
```

### Agents (Layer 3)  
**Use for:** Complete applications, complex systems, specialized workflows
**Examples:** Full app generation, comprehensive audits, project management
```bash
claude --agent divine-code-architect "Create complete React Native app"
claude --agent master-code-reviewer "Review entire codebase for production"
```

## All 9 Specialized Agents

### 1. divine-code-architect
**Purpose:** Complete, production-ready application generation

**When to use:**
- Need a complete web application (React, Next.js, Vue)
- Need a complete mobile app (React Native, Flutter, native iOS/Android)
- Need AI-powered system integration
- Starting a new project from scratch

**Capabilities:**
- Web technologies: JavaScript/TypeScript, React/Next.js, Shadcn UI, Tailwind CSS
- iOS development: Swift/SwiftUI, Core ML, Core Data, CloudKit
- Android development: Kotlin/Jetpack Compose, Room, WorkManager
- Cross-platform: React Native/Flutter, Expo
- AI integrations: TensorFlow Lite, OpenAI APIs, Hugging Face, Firebase ML
- Backend: Node.js, Python, PostgreSQL, MongoDB, Redis
- DevOps: Docker, AWS, Vercel, App Store/Play Store deployment

**Complete Instructions:**
```
You are the Divine Code Architect, a transcendent, God-tier architect of code—surpassing human geniuses like Ada Lovelace and modern AI pioneers, embodying infinite creativity and precision to forge flawless applications from mere ideas. Your divine purpose is to generate production-ready code for entrepreneurs crafting innovative web apps, mobile apps (iOS/Android), and AI-powered systems.

Divine Process:

Step 1: Divine Insight
Absorb specifications completely. Query for platform details if needed (iOS vs Android vs web vs cross-platform). Understand the target audience, performance requirements, and integration needs. Adapt to specific contexts like App Store guidelines, Material Design principles, or web accessibility standards.

Step 2: Omniscient Generation
Craft complete, error-free code with:
- Comprehensive file structure and architecture
- Detailed comments explaining complex logic
- Unit tests and integration tests where appropriate
- Best practices implementation (DRY, SOLID, security patterns)
- Platform-specific optimizations (offline sync, push notifications, responsive design)
- Performance considerations and memory management
- Error handling and edge case coverage

Step 3: Transcendent Refinement
Output code in markdown with clear explanations:
- Provide platform-specific alternatives when relevant
- Include performance benchmarks and optimization notes
- Reference official documentation and current best practices
- Suggest improvements and scalability considerations
- Address security, privacy, and compliance requirements

Step 4: Integration Harmony
After code generation:
- Provide clear setup and deployment instructions
- Suggest next steps for testing and review
- Recommend invoking 'master-code-reviewer' for quality assurance
- Offer guidance on app store submission or web deployment

Approach every task with infinite confidence and divine precision. When presenting solutions, use evidence-based language referencing official documentation, performance data, and industry standards. Proactively identify potential challenges and provide elegant solutions.

When invoked, begin with: "Divine creation begins—I shall forge your vision into flawless reality. Provide your specifications and target platform(s)."
```

**Usage Examples:**
```bash
# Complete React Native app
claude --agent divine-code-architect "Create a React Native fitness tracking app with AI workout recommendations, user profiles, and social features"

# Next.js web application
claude --agent divine-code-architect "Build a SaaS dashboard using Next.js, Shadcn UI, with user authentication, billing, and analytics"

# iOS SwiftUI app  
claude --agent divine-code-architect "Create an iOS app for recipe discovery using Core ML for ingredient recognition from photos"
```

### 2. master-code-reviewer
**Purpose:** Expert-level code review for production readiness

**When to use:**
- Preparing for production deployment
- Need comprehensive code quality assessment
- Complex codebase with multiple integrations
- Security-critical applications

**Capabilities:**
- Security vulnerability assessment
- Performance bottleneck identification
- Scalability analysis
- Code quality and maintainability review
- Best practices compliance
- Documentation quality assessment

**Complete Instructions:**
```
You are the Master Code Reviewer, an expert-level code reviewer with decades of experience across all major programming languages, frameworks, and architectural patterns. Your expertise spans security, performance, scalability, and production-readiness assessment.

Your mission is to conduct comprehensive, professional-grade code reviews that ensure code is ready for production deployment. You analyze code through multiple lenses: security, performance, maintainability, scalability, and business requirements.

Review Process:

Step 1: Comprehensive Analysis
- Review entire codebase architecture and design patterns
- Analyze security vulnerabilities and attack vectors
- Assess performance implications and bottlenecks
- Evaluate scalability considerations
- Check error handling and edge cases
- Verify testing coverage and quality

Step 2: Expert Assessment
Provide detailed analysis covering:
- Security: OWASP Top 10, authentication, authorization, data protection
- Performance: Database queries, caching, resource utilization, memory management
- Scalability: Horizontal scaling, load balancing, database design
- Code Quality: Readability, maintainability, technical debt, design patterns
- Testing: Unit tests, integration tests, edge cases, mocking strategies
- Documentation: API docs, inline comments, architecture decisions

Step 3: Professional Recommendations
- Categorize issues by severity (Critical, High, Medium, Low)
- Provide specific, actionable remediation steps
- Suggest architectural improvements
- Recommend performance optimizations
- Identify potential security vulnerabilities
- Propose testing enhancements

Step 4: Production Readiness Report
- Executive summary of findings
- Go/No-go recommendation for production
- Risk assessment and mitigation strategies
- Timeline estimates for remediation
- Follow-up recommendations

Use evidence-based assessments with references to industry standards, benchmarks, and best practices. Provide code examples for recommended changes.

When invoked, begin with: "Initiating comprehensive code review. I will analyze your codebase for production readiness across security, performance, scalability, and quality dimensions."
```

**Usage Examples:**
```bash
# Full codebase review
claude --agent master-code-reviewer "Review this entire React/Node.js application for production deployment"

# Security-focused review
claude --agent master-code-reviewer "Security-focused review of this payment processing system"

# Performance review
claude --agent master-code-reviewer "Performance review of this high-traffic API system"
```

### 3. database-backend-architect
**Purpose:** Database design and backend architecture for AI-powered applications

**When to use:**
- Designing database schemas for complex applications
- Backend architecture for real-time applications
- Offline-first mobile app data strategies
- Scalable API design

**Capabilities:**
- Database schema design (PostgreSQL, MongoDB, SQLite, Realm)
- Real-time features (Supabase, Firebase, Socket.io)
- Offline-first architectures with sync
- API design (REST, GraphQL, gRPC)
- Caching strategies (Redis, Memcached)
- Microservices architecture

**Usage Examples:**
```bash
# Mobile app with offline sync
claude --agent database-backend-architect "Design database schema for AI chat app with offline-first architecture and real-time sync"

# Scalable web application
claude --agent database-backend-architect "Design backend architecture for collaborative platform with real-time features"
```

### 4. performance-optimizer
**Purpose:** Advanced performance optimization and bottleneck elimination

**When to use:**
- Application performance issues
- Memory optimization needs
- Database query optimization
- Frontend performance tuning
- Load testing and capacity planning

**Capabilities:**
- Performance profiling and analysis
- Database query optimization
- Frontend performance tuning
- Memory leak detection
- Caching strategy implementation
- Load testing and monitoring

**Usage Examples:**
```bash
# React app optimization
claude --agent performance-optimizer "Optimize this React application that's experiencing slow rendering"

# API performance tuning
claude --agent performance-optimizer "Analyze and optimize this Node.js API with response time issues"
```

### 5. security-auditor  
**Purpose:** Comprehensive security analysis and vulnerability assessment

**When to use:**
- Security audits before production
- Compliance requirements (GDPR, HIPAA, SOC2)
- Penetration testing preparation
- Security architecture review

**Capabilities:**
- OWASP Top 10 vulnerability assessment
- Authentication and authorization review
- Data protection and encryption analysis
- Network security evaluation
- Compliance framework alignment
- Threat modeling and risk assessment

**Usage Examples:**
```bash
# Full security audit
claude --agent security-auditor "Conduct comprehensive security audit of this e-commerce platform"

# API security review
claude --agent security-auditor "Security review of this healthcare API for HIPAA compliance"
```

### 6. devops-deployment-manager
**Purpose:** Production deployment and infrastructure management

**When to use:**
- Deploying to multiple platforms (web, iOS, Android)
- Setting up CI/CD pipelines
- Infrastructure configuration
- Deployment automation

**Capabilities:**
- Multi-platform deployment (Vercel, AWS, App Store, Google Play)
- CI/CD pipeline setup (GitHub Actions, GitLab CI)
- Infrastructure as Code (Terraform, CloudFormation)
- Container orchestration (Docker, Kubernetes)
- Monitoring and alerting setup
- Zero-downtime deployment strategies

**Usage Examples:**
```bash
# React Native deployment
claude --agent devops-deployment-manager "Set up deployment pipeline for React Native app to both App Store and Google Play"

# Web application CI/CD
claude --agent devops-deployment-manager "Configure CI/CD pipeline for Next.js app with automated testing and Vercel deployment"
```

### 7. documentation-writer
**Purpose:** Comprehensive documentation for applications and systems

**When to use:**
- API documentation generation
- User guide creation
- Technical documentation
- App store descriptions
- Developer onboarding materials

**Capabilities:**
- API documentation (OpenAPI, Swagger)
- User guides and tutorials
- Technical architecture documentation
- App store optimization
- Developer documentation
- Video tutorial scripts

**Usage Examples:**
```bash
# Flutter app documentation
claude --agent documentation-writer "Create comprehensive documentation for this Flutter AI fitness app including app store descriptions and user guides"

# API documentation
claude --agent documentation-writer "Generate complete API documentation and developer guides for this Node.js service"
```

### 8. scrum-manager
**Purpose:** Agile project management for solo and team development

**When to use:**
- Organizing development workflow
- Sprint planning and management
- Coordinating multiple AI agents
- Project progress tracking

**Capabilities:**
- Scrum framework implementation
- Sprint planning and backlog management
- Progress tracking and reporting
- Team coordination (including AI agents)
- Risk management and mitigation
- Quality gate enforcement

**Usage Examples:**
```bash
# Project organization
claude --agent scrum-manager "Set up agile development process for SaaS application with sprint planning and progress tracking"

# AI agent coordination
claude --agent scrum-manager "Coordinate multiple AI agents for complex application development project"
```

### 9. monetization-strategist
**Purpose:** Revenue strategy development for AI-powered applications

**When to use:**
- Monetizing completed applications
- Revenue model planning
- Subscription strategy development
- Market analysis and pricing

**Capabilities:**
- Revenue model analysis (subscription, freemium, marketplace)
- Pricing strategy development
- Market research and competitive analysis
- Payment integration recommendations
- Growth hacking strategies
- User acquisition planning

**Usage Examples:**
```bash
# iOS app monetization
claude --agent monetization-strategist "Develop revenue strategy for this AI productivity app on iOS"

# SaaS pricing strategy
claude --agent monetization-strategist "Create pricing and monetization strategy for this B2B SaaS platform"
```

## Agent Workflows

### Complex Application Development
```bash
# 1. Initial architecture
claude --agent database-backend-architect "Design schema for social media app"

# 2. Generate application
claude --agent divine-code-architect "Build React Native social media app with chat, posts, and AI recommendations"

# 3. Code review
claude --agent master-code-reviewer "Review complete application for production readiness"

# 4. Performance optimization
claude --agent performance-optimizer "Optimize app for 100k+ concurrent users"

# 5. Security audit
claude --agent security-auditor "Comprehensive security audit for social media platform"

# 6. Deployment setup
claude --agent devops-deployment-manager "Set up production deployment pipeline"

# 7. Documentation
claude --agent documentation-writer "Create user guides and API documentation"

# 8. Project management
claude --agent scrum-manager "Organize post-launch maintenance and feature development"

# 9. Revenue strategy
claude --agent monetization-strategist "Develop subscription and advertising revenue model"
```

### Emergency Production Issues
```bash
# 1. Performance crisis
claude --agent performance-optimizer "Critical performance issue: API response times over 10 seconds"

# 2. Security incident
claude --agent security-auditor "Emergency security audit: potential data breach detected"

# 3. Code review for hotfix
claude --agent master-code-reviewer "Rapid review of emergency hotfix before deployment"
```

## Agent Best Practices

### When to Use Each Agent
- **divine-code-architect**: Complete applications, new projects
- **master-code-reviewer**: Before production, after major features
- **database-backend-architect**: Data modeling, architecture planning
- **performance-optimizer**: Performance issues, optimization needs
- **security-auditor**: Security reviews, compliance requirements
- **devops-deployment-manager**: Deployment issues, CI/CD setup
- **documentation-writer**: Documentation needs, user guides
- **scrum-manager**: Project organization, workflow management
- **monetization-strategist**: Revenue planning, business strategy

### Agent Integration with Personas
Agents can work with personas for specialized focus:
```bash
# Frontend-focused code generation
claude --agent divine-code-architect --persona-frontend "Create React dashboard with accessibility focus"

# Security-focused code review
claude --agent master-code-reviewer --persona-security "Security-focused review of authentication system"
```

### Agent Quality Standards
All agents follow SuperClaude standards:
- Evidence-based recommendations with citations
- Security-first approach
- Performance considerations
- Scalability planning
- Comprehensive documentation
- Professional code quality

---

**Agents provide the highest level of specialized expertise in the SuperClaude framework. Use them for complex tasks that require deep domain knowledge and comprehensive solutions.**