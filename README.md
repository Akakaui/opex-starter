# OPEX Starter Kit

A co-founder level AI partner for your content business. Works with Claude Code.

## What Is OPEX?

OPEX is not an assistant. It's a partner that helps you run every aspect of your content business:

- **Content Creation** -- Posts, articles, carousels, threads for any platform
- **Video Production** -- Scripts, scene plans, asset lists for Reels, YouTube, TikTok
- **Sales & Outreach** -- Cold emails, DMs, discovery calls, client acquisition
- **Marketing Strategy** -- Content calendars, lead magnets, email sequences, funnels
- **Client Management** -- Pipeline tracking, onboarding, retention

## How It Works

```
You -> OPEX (orchestrator) -> Sub-agents (specialists) -> You
```

OPEX is the main orchestrator. It reads your memory files, understands your goals, and delegates work to 6 specialized sub-agents. Each agent runs in its own context window and returns results to OPEX, which reviews and presents them to you.

## Quick Start

### Option 1 -- Claude Web (Recommended)

1. Go to [claude.ai](https://claude.ai)
2. Create a new project
3. Upload or paste the contents of this repo
4. Say `Hey OPEX`

### Option 2 -- Claude Code (Local)

1. Install Claude Code:
```bash
npm install -g @anthropic-ai/claude-code
```

2. Clone this repo:
```bash
git clone https://github.com/Akakaui/opex-starter.git
cd opex-starter
```

3. Start Claude Code:
```bash
claude
```

4. Say `Hey OPEX`

## What Happens During Onboarding

OPEX asks you questions about your business, goals, and platforms. Then it sets up everything and you're ready for Day 1.

## Template System

Real user data is never committed to git. The `.example.md` files in `business/memory/` and `business/config/` are committed as templates. On first run, OPEX copies each `.example.md` to its real `.md` version. These real files are gitignored and stay local only. This means anyone can clone this repo without getting your personal data.

## File Structure

```
opex-starter/
├── .claude-plugin/
│   └── plugin.json          # Plugin manifest
├── .claude/
│   ├── agents/              # AI agents
│   │   ├── opex.md          # Main orchestrator
│   │   ├── content-writer.md
│   │   ├── video-agent.md
│   │   ├── copy-agent.md
│   │   ├── design-agent.md
│   │   ├── research-agent.md
│   │   └── sales-agent.md
│   ├── skills/              # Core skills
│   │   ├── bootstrap/
│   │   ├── onboarding/
│   │   ├── voice/
│   │   ├── humanizer/
│   │   ├── copywriting/
│   │   ├── social/
│   │   ├── video/
│   │   ├── domain-router/
│   │   └── ...
│   ├── skills-extended/     # Optional third-party skills
│   │   ├── hyperframes/
│   │   ├── embedded-captions/
│   │   └── ... (100+ skills)
│   └── commands/            # Slash commands
│       ├── start.md
│       ├── content.md
│       ├── video.md
│       └── audit.md
├── business/
│   ├── config/
│   │   ├── user.config.example.md  # Template (committed to git)
│   │   ├── user.config.md          # Your real config (generated locally, never committed)
│   │   └── TOOLS.md                # Installed tools inventory
│   ├── memory/              # Your context
│   │   ├── *.example.md     # Templates (committed to git)
│   │   └── *.md             # Your real data (generated locally, never committed)
│   ├── knowledge/           # Your research (file-based storage)
│   └── agents/              # Your custom agents
├── settings.json
└── README.md
```

## Commands

| Command | What It Does |
|---------|--------------|
| `Hey OPEX` | Start session, check status |
| `Start Day 1` | Begin content creation |
| `Write a post about X` | Create content |
| `Create a video about X` | Video pipeline |
| `Find leads` | Research prospects |
| `Audit my content` | Performance review |
| `What's next?` | Check schedule |

## Sub-Agent System

OPEX delegates work to 6 specialized agents. Each runs in its own context window.

| Agent | What It Does |
|-------|--------------|
| content-writer | Writes posts, articles, threads, carousels |
| video-agent | Scripts videos, creates scene plans and asset lists |
| copy-agent | Writes sales copy, cold emails, landing pages |
| design-agent | Creates design briefs and visual direction |
| research-agent | Researches competitors, markets, and ingests knowledge |
| sales-agent | Handles outreach, client acquisition, proposals |

### How Delegation Works

1. You make a request to OPEX
2. OPEX reads your memory files for context
3. OPEX decides which agent handles it
4. OPEX uses the `task` tool to spawn that agent
5. OPEX passes your brand voice, goals, and platform context
6. Agent does the work in its own context
7. Agent returns result to OPEX
8. OPEX reviews against quality gates
9. OPEX presents to you

## Skills Included

### Core Skills (Always Loaded)
- bootstrap -- Session initialization
- onboarding -- First-time setup
- voice -- Brand voice rules
- humanizer -- Strip AI patterns
- copywriting -- Persuasive copy
- social -- Social media content
- attention -- Hooks and openings
- stop-slop -- Remove AI tells
- content-mission -- Mission tags
- content-strategy -- Content planning

### Domain Skills (Auto-Loaded)
- domain-router -- Routes knowledge by topic
- hooks-pi -- Hook patterns
- reels-patterns -- Short-form video structures
- yt-content-psychology -- Audience psychology
- yt-social-strategy -- Platform growth
- yt-personal-brand -- Personal branding
- sales-insights -- Sales patterns
- applied-business -- Business frameworks

### Extended Skills (Optional)
100+ third-party skills in `skills-extended/` for specialized tasks:
- Video production (HyperFrames, embedded-captions, etc.)
- Web design (open-design, frontend-design, etc.)
- Marketing (ads, email, CRO, etc.)
- Development (git, testing, deployment, etc.)

## Knowledge Ingestion

Train OPEX on content you admire:

```
Hey OPEX, watch this video: [URL]
```

OPEX extracts patterns and stores them as organized files.

### Supported Input Types
- **YouTube URLs** -- Downloads, transcribes, extracts frameworks
- **Blog post URLs** -- Scrapes, extracts key insights
- **Local video files** -- Transcribes and analyzes
- **Text articles** -- Direct pattern extraction

### How Knowledge Storage Works

```
business/knowledge/
├── competitors/          # Competitor profiles
├── trends/               # Market trends
├── video-patterns/       # Video structures and hooks
└── [domain]/             # Custom knowledge domains
```

- **No external services required** -- No vector databases, no APIs
- **Just organized files** -- Claude Code reads them directly
- **Lightweight** -- Works on any machine
- **Upgradeable** -- Want semantic search later? Add ChromaDB or SQLite

## Customization

### Add Your Own Skills

Create a new file in `.claude/skills/your-skill/SKILL.md`:

```markdown
---
name: your-skill
description: When to use this skill
---

# Your Skill

[Instructions for when this skill is loaded]
```

### Add Your Own Agents

Create a new file in `.claude/agents/your-agent.md`:

```markdown
---
name: your-agent
description: What this agent does
tools: ["Read", "Write"]
---

# Your Agent

[Agent instructions]
```

### Modify Voice Rules

Edit `business/memory/04-human-voice-rules.md` to change how OPEX writes. (If you just cloned the repo, this file is created automatically from `.example.md` on first run.)

## Platform Support

OPEX works with any platform. During onboarding, tell it where you post:

- LinkedIn
- X / Twitter
- Instagram
- TikTok
- YouTube
- Facebook
- Medium
- Threads
- Pinterest
- Your blog
- Any other platform

## What OPEX Doesn't Do

- Post directly to social media (you approve first)
- Replace your creativity (amplifies it)
- Make decisions without your input (suggests, you decide)
- Access private data without permission

## Getting Help

Say: `Hey OPEX, help me with [topic]`

Or use: `/project:start` to restart the session.

## License

MIT -- Use it however you want.

## Credits

Built by [Akaka Favour](https://github.com/Akakaui)
