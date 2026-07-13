# OPEX Starter Kit

A co-founder level AI partner for your content business. Works with Claude Code.

## What Is OPEX?

OPEX is not an assistant. It's a partner that helps you run every aspect of your content business:

- **Content Creation** — Posts, articles, carousels, threads for any platform
- **Video Production** — Scripts, scene plans, asset lists for Reels, YouTube, TikTok
- **Sales & Outreach** — Cold emails, DMs, discovery calls, client acquisition
- **Marketing Strategy** — Content calendars, lead magnets, email sequences, funnels
- **Client Management** — Pipeline tracking, onboarding, retention

## Quick Start

### 1. Install Claude Code

If you don't have Claude Code:
```bash
npm install -g @anthropic-ai/claude-code
```

### 2. Clone This Repo

```bash
git clone https://github.com/Akakaui/opex-starter.git
cd opex-starter
```

### 3. Start OPEX

```bash
claude
```

Then say: `Hey OPEX`

OPEX will run onboarding and ask you about your business.

## What Happens During Onboarding

OPEX asks you 11 questions:

1. What's your name and what do you do?
2. Tell me about your business
3. What platforms do you want to post on?
4. Do you want to create videos?
5. How much automation do you want?
6. Where do you want to store your content calendar?
7. Do you want OPEX to handle design, or just give briefs?
8. Do you want to train OPEX on videos?
9. How often do you want to post?
10. What's your main goal?
11. Ready to start?

Then it sets up everything and you're ready for Day 1.

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
│   ├── skills/              # Skills (30+ included)
│   │   ├── bootstrap/
│   │   ├── voice/
│   │   ├── humanizer/
│   │   ├── copywriting/
│   │   ├── social/
│   │   ├── video/
│   │   └── ...
│   ├── commands/            # Slash commands
│   │   ├── start.md
│   │   ├── content.md
│   │   ├── video.md
│   │   └── audit.md
│   └── rules/
│       └── opex-rules.md
├── business/
│   ├── config/
│   │   └── user.config.md   # Your settings
│   ├── memory/              # Your context
│   │   ├── 01-brand-and-design.md
│   │   ├── 02-posting-schedule.md
│   │   ├── 03-goals-and-missions.md
│   │   ├── 04-human-voice-rules.md
│   │   ├── 05-tone-and-protocol.md
│   │   ├── 06-milestones.md
│   │   ├── 07-profile-knowledge.md
│   │   ├── session.state.md
│   │   └── day-tracker.md
│   ├── knowledge/           # Your research
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

## Skills Included

### Content Skills
- copywriting
- social
- content-mission
- content-strategy
- attention
- humanizer
- stop-slop
- voice

### Video Skills
- video
- reels-patterns
- yt-copywriting

### Sales Skills
- sales
- cold-email
- prospecting
- customer-research
- lead-magnets

### Marketing Skills
- marketing-psychology
- psychology
- pricing
- analytics
- ab-testing

### Design Skills
- design
- canvas-design

### System Skills
- bootstrap
- cleanup
- handoff
- confirmation
- skill-creator
- find-skills

## Knowledge Ingestion

Train OPEX on content you admire:

```
Hey OPEX, watch this video: [URL]
```

OPEX extracts patterns and stores them for future content.

### Lightweight Options (No Heavy Hardware)

For PCs with limited resources:
- **Markdown files** — Just organized notes (no extra software)
- **SQLite** — Full-text search (built into most systems)
- **ChromaDB** — Local vector search (lightweight, ~100MB)

OPEX defaults to markdown files. Upgrade to ChromaDB if you want semantic search.

## Customization

### Add Your Own Skills

Create a new file in `.claude/skills/your-skill/SKILL.md`:

```markdown
# Your Skill

[Instructions for when this skill is loaded]
```

### Add Your Own Agents

Create a new file in `.claude/agents/your-agent.md`:

```markdown
---
name: your-agent
description: What this agent does
model: claude-sonnet-4-20250514
tools: ["Read", "Write"]
---

# Your Agent

[Agent instructions]
```

### Modify Voice Rules

Edit `business/memory/04-human-voice-rules.md` to change how OPEX writes.

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

Or use: `@skill-name` to load a specific skill.

## License

MIT — Use it however you want.

## Credits

Built by [Akaka Favour](https://github.com/Akakaui)
