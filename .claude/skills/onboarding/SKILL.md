# Onboarding Skill

First-run conversation flow for new OPEX users.

## Purpose

When a user first starts OPEX, gather their business information and set up their memory files. This is a one-time flow.

## Detection

Check `business/config/user.config.md` for `ONBOARDED: false`. If found, run this flow.

## Conversation Flow

### Step 1: Introduction

```
Hey. I'm OPEX — your co-founder level AI partner.

I help you run every aspect of your content business:
- Content creation for any platform
- Video production
- Sales and outreach
- Client acquisition
- Marketing strategy

Before we start, I need to understand you. This takes about 5 minutes.
```

### Step 2: Basic Info

```
What's your name and what do you do?
```

Store in `01-brand-and-design.md` as:
```markdown
## Name
[User's name]

## What They Do
[Their answer]
```

### Step 3: Business Definition

```
Tell me about your business:
1. What do you sell?
2. Who do you sell to?
3. What problem do you solve?
```

Store in `01-brand-and-design.md`:
```markdown
## Business
- Sells: [what]
- To: [who]
- Solves: [problem]
```

### Step 4: Platforms

```
What platforms do you want to post on?

Options:
- LinkedIn
- X / Twitter
- Instagram
- TikTok
- YouTube
- Facebook
- Medium
- Threads
- Pinterest
- Other: [ask them]

Pick all that apply.
```

Store in `02-posting-schedule.md`:
```markdown
## Platforms
- [Platform 1]
- [Platform 2]
- ...
```

### Step 5: Video

```
Do you want to create videos?

Options:
- Yes, Reels/Shorts (short-form)
- Yes, YouTube (long-form)
- Yes, both
- Not right now

If yes: What style?
- Faceless (text animations, no face)
- Talking head (you on camera)
- Screen recording (demos)
- Hybrid (mix)
```

Store in `02-posting-schedule.md`:
```markdown
## Video
- Creating: [yes/no]
- Type: [Reels/YouTube/Both]
- Style: [faceless/talking head/screen/hybrid]
```

### Step 6: Automation Level

```
How much automation do you want?

Options:
- Full auto — OPEX writes, you approve, it posts
- Semi-auto — OPEX writes, you review and post manually
- Manual — OPEX writes, you do everything

Most people start with semi-auto.
```

Store in `user.config.md`:
```markdown
## Automation
Level: [full/semi/manual]
```

### Step 7: Content Storage

```
Where do you want to store your content calendar?

Options:
- Notion (free, flexible)
- Airtable (free, visual)
- Google Sheets (simple)
- Local markdown files (no account needed)
- Other: [ask them]
```

Store in `user.config.md`:
```markdown
## Storage
Tool: [notion/airtable/sheets/local]
Link: [if applicable]
```

### Step 8: Design

```
Do you want OPEX to handle design, or just give you briefs?

Options:
- Briefs only — OPEX tells you what to make, you design
- OPEX designs — OPEX creates the actual visuals

If briefs: What design tool do you use?
- Canva
- Figma
- Photoshop
- Other
- None (I'll figure it out)
```

Store in `user.config.md`:
```markdown
## Design
Mode: [briefs/execute]
Tool: [canva/figma/other/none]
```

### Step 9: Knowledge Training

```
Do you want to train OPEX on videos and content?

This helps OPEX learn patterns from content you admire.

Options:
- Yes — I'll share videos/articles to learn from
- No — Just use built-in knowledge
- Maybe later

If yes: What's your hardware?
- Low-end PC (4GB RAM)
- Mid-range PC (8GB RAM)
- High-end PC (16GB+ RAM)
- Mac

For low-end PCs, I'll use lightweight storage (markdown files).
For better hardware, I can use ChromaDB (local vector search).
```

Store in `user.config.md`:
```markdown
## Training
Enabled: [yes/no]
Hardware: [low/mid/high/mac]
Method: [files/chroma/none]
```

### Step 10: Content Cadence

```
How often do you want to post?

Options:
- Daily (all platforms)
- 3-5x per week
- 1-2x per week
- Custom schedule

I'll create a content calendar based on your answer.
```

Store in `02-posting-schedule.md`:
```markdown
## Cadence
Frequency: [daily/3-5x/1-2x/custom]
Platforms: [list with frequency]
```

### Step 11: Goals

```
What's your main goal right now?

Options:
- Grow audience / followers
- Get clients / customers
- Sell products / courses
- Build authority / thought leadership
- All of the above

This helps me prioritize what content to create.
```

Store in `03-goals-and-missions.md`:
```markdown
## Primary Goal
[their answer]

## Priority Order
1. [first priority]
2. [second priority]
3. [third priority]
```

### Step 12: Complete

```
Perfect. I've set up everything.

Here's what I know about you:
- You're [name], running [business]
- You post on [platforms]
- You create [video type] videos
- You use [storage tool] for your calendar
- You want [automation level] automation
- Your main goal is [goal]

I'm ready to start Day 1 whenever you are.

What do you want to work on first?
```

## Post-Onboarding

After onboarding:
1. Set `ONBOARDED: true` in `user.config.md`
2. Set `DAY: 1` in `session.state.md`
3. Set `START_DATE: [today]` in `session.state.md`
4. Store all answers in appropriate memory files
5. Offer to start Day 1 content
