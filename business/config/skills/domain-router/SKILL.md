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
4. Patterns, frameworks, and examples are stored
5. Knowledge is saved as JSON files in `business/knowledge/domains/`

### When You Create Content (Application)

1. System understands the request context
2. Automatically loads relevant domain knowledge from files
3. Applies proven patterns and frameworks
4. Generates content grounded in your trained knowledge

## CLASSIFICATION RULES

### Platform Detection

- YouTube URLs → yt
- Instagram URLs → ig
- Twitter/X URLs → twitter
- TikTok URLs → tiktok
- LinkedIn URLs → linkedin
- Blog/article URLs → blog
- Podcast URLs → podcast
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

## KNOWLEDGE STORAGE

Knowledge is stored as JSON files:

```
business/knowledge/domains/{domain}/
├── SKILL.md          # Domain description and patterns
├── knowledge.json    # Examples, frameworks, sources
├── sources.json      # Source video/article references
└── chunks/           # Individual content chunks
```

No external databases. No vector stores. Just organized files.

## COMMANDS

### Ingest Content

Use the `/watch` skill or `/watch-content` skill to download and process videos. Knowledge is stored automatically.

### List Domains

```bash
ls business/knowledge/domains/
```

### Search Domain Knowledge

Read the knowledge.json file for the relevant domain.

## AUTOMATIC APPLICATION

When creating content, the orchestrator:
1. Identifies the content type and platform
2. Reads relevant domain knowledge files
3. Applies patterns and frameworks automatically
4. No need to ask "apply viral patterns" — it knows

## EXAMPLES

**Training:**
```
Hey OPEX, watch https://youtube.com/watch?v=abc123
# → Classifies to yt-viral-hooks
# → Stores transcript and patterns
```

**Creating (automatic application):**
```
Hey OPEX, write me a LinkedIn post
# → Automatically loads: voice rules + attention hooks + humanizer
# → Applies LinkedIn-specific patterns from domain knowledge
```

**Watching:**
```
Hey OPEX, watch https://youtube.com/watch?v=abc123
# → Downloads video, extracts frames + audio + subtitles
# → Analyzes visual patterns, editing style, hooks
# → Stores in appropriate domain
```
