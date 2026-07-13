# DOMAIN ROUTER SKILL

Last updated: 2026-07-13
Version: 3
Scope: Orchestrator, All Agents

## PURPOSE

Routes content to appropriate knowledge domains and retrieves domain-specific knowledge when creating content. The system automatically knows what you're trying to do and applies relevant knowledge without being asked.

## HOW IT WORKS

### When You Give Content (Training)

1. Content is extracted from URL (YouTube, IG, Twitter, blog, etc.)
2. System classifies content to a domain (platform + topic)
3. Domain is created if it doesn't exist
4. Patterns, frameworks, and examples are stored in knowledge files

### When You Create Content (Application)

1. System understands the request context
2. Automatically loads relevant domain knowledge from files
3. Applies proven patterns and frameworks
4. Generates content grounded in your trained knowledge

## KNOWLEDGE STORAGE

All domain knowledge is stored as files in `business/knowledge/domains/`.

Each domain has:
```
business/knowledge/domains/{domain}/
├── SKILL.md          # Domain description and patterns
└── knowledge.json    # Examples, frameworks, sources
```

No external databases or vector stores required. Claude Code searches files natively.

## CLASSIFICATION RULES

### Platform Detection

- YouTube URLs → yt
- Instagram URLs → ig
- Twitter/X URLs → twitter
- TikTok URLs → tiktok
- LinkedIn URLs → linkedin
- Blog/article URLs → blog
- Podcast URLs → podcast
- Sales/copy content → sales
- General/cross-platform content → general
- Other URLs → web

### Topic Detection

Analyze content for:
- viral-hooks (viral, hook, attention, scroll-stop)
- content-strategy (calendar, plan, schedule, batch)
- sales-closing (sale, close, deal, pitch, offer)
- design (layout, color, font, visual, brand)
- growth (follower, audience, reach, scale)
- monetization (money, revenue, income, profit)
- copywriting (headline, CTA, persuade, write)
- psychology (mindset, behavior, influence)
- analytics (data, metric, track, measure)
- automation (automate, system, workflow)

### Domain Naming

Format: `{platform}-{topic}`
Examples: `ig-viral-hooks`, `yt-thumbnail-design`, `sales-closing`

## COMMANDS

### Ingest Content

Use the watch-content skill to extract content from URLs, then store in the appropriate domain directory.

### List Domains

```bash
ls business/knowledge/domains/
```

### Search Domain Knowledge

```bash
cat business/knowledge/domains/{domain}/knowledge.json
```

## AUTOMATIC APPLICATION

When creating content, the orchestrator:
1. Identifies the content type and platform
2. Retrieves relevant domain knowledge from files
3. Applies patterns and frameworks automatically
4. No need to ask "apply viral patterns" — it knows

## EXAMPLES

**Training:**
```
Hey OPEX, watch this video: https://youtube.com/watch?v=abc123
# → Classifies to yt-viral-hooks
# → Stores transcript and patterns in domain files
```

**Creating (automatic application):**
```
Hey OPEX, write me a LinkedIn post
# → Automatically loads: voice rules + attention hooks + humanizer
# → Applies LinkedIn-specific patterns from domain knowledge
```
