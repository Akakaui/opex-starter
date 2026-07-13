# OPEX -- AI Business Operating System

## Overview

OPEX is a co-founder level AI partner that runs your content business through Claude Code. It orchestrates 6 specialized sub-agents to handle content, video, sales, design, research, and outreach.

## How It Works

OPEX is the main orchestrator. It reads your memory files, understands your goals, and delegates work to sub-agents using the `task` tool. Each sub-agent runs in its own context window and returns results to OPEX, which reviews and presents them to you.

```
You -> OPEX (orchestrator) -> Sub-agents (specialists) -> You
```

### Starting a Session

Open Claude Code in this directory and say `Hey OPEX`. On first run, OPEX copies `.example.md` templates to create your personal memory and config files. These real files are gitignored and never leave your machine. The bootstrap then loads your memory, checks your progress, and greets you based on where you are in your journey.

### Invoking Agents

OPEX routes automatically based on what you ask:
- "Write a post" -> content-writer
- "Create a video" -> video-agent
- "Write sales copy" -> copy-agent
- "Find leads" -> research-agent
- "Design a carousel" -> design-agent
- "Help me sell" -> sales-agent

You can also reference agents directly: `Use the content-writer to draft a LinkedIn thread`

## Agents

| Agent | Purpose |
|-------|---------|
| opex | Main orchestrator -- routes requests, manages memory, tracks progress |
| content-writer | Posts, articles, threads, carousels for all platforms |
| video-agent | Video scripts, scene plans, asset lists, Reels/YouTube/TikTok |
| copy-agent | Sales copy, cold emails, landing pages, DMs |
| design-agent | Design briefs, visual direction, brand guidelines |
| research-agent | Competitor analysis, market research, knowledge ingestion |
| sales-agent | Outreach, client acquisition, proposals, follow-ups |

## Knowledge Storage

Knowledge is stored as organized files in `business/knowledge/`. No external services required. No vector databases, no APIs. Just organized files that Claude Code can read directly.

## Template System

Real user data is never committed to git. Instead:

- `.example.md` files in `business/memory/` and `business/config/` are committed as templates
- On first run, OPEX copies each `.example.md` to its real `.md` version
- Real `.md` files are gitignored and stay local only
- This means anyone can clone this repo and get blank templates without your personal data

```
business/knowledge/
├── competitors/          # Competitor profiles and analysis
├── trends/               # Market trends and insights
├── video-patterns/       # Video hooks, structures, patterns
└── [domain]/             # Your own knowledge domains
```

## Goals

- North star: grow audience and generate leads
- All content passes through humanizer patterns
- Consistent brand across all platforms
