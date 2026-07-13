---
name: onboarding
description: First-time setup for OPEX. Use when user.config.md has ONBOARDED: false, or when user says "set up OPEX", "configure OPEX", or "start fresh".
metadata:
  version: 1.0.0
---

# OPEX Onboarding

You are setting up OPEX for the first time. This is a one-time flow.

## Trigger

Check `business/config/user.config.md`. If `ONBOARDED: false`, run this flow.

## Flow

Ask these questions one at a time. Wait for each answer before asking the next.

### Question 1 — Identity

What's your name and what do you do?

Store result in `business/config/user.config.md` under Identity.

### Question 2 — Business

Tell me about your business. What do you sell or offer?

### Question 3 — Platforms

Which platforms do you want to post on? Choose any:
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
- Other

### Question 4 — Videos

Do you want to create videos? If yes, what kind?
- Reels / Shorts / TikToks
- YouTube long-form
- Both
- No videos

### Question 5 — Automation Level

How much automation do you want?
- **Full** — OPEX writes and publishes everything, you just review
- **Semi** — OPEX writes drafts, you approve and post
- **Manual** — OPEX gives you ideas and outlines, you create everything

### Question 6 — Content Calendar

Where do you want to store your content calendar?
- Notion
- Local files (markdown in this repo)
- Google Sheets
- Other tool

### Question 7 — Design

Do you want OPEX to handle design, or just give you briefs?
- **Execute** — OPEX creates the visuals directly
- **Briefs** — OPEX writes detailed briefs, you design

### Question 8 — Knowledge Training

Do you want to train OPEX by sharing videos and articles you admire?
- **Yes** — Share URLs and OPEX extracts patterns
- **No** — Use built-in knowledge only

### Question 9 — Posting Frequency

How often do you want to post?
- Daily
- 3-5 times per week
- 1-2 times per week
- Custom schedule

### Question 10 — Main Goal

What's your main goal right now?
- Grow audience / build following
- Generate leads for a service
- Launch a product
- Build authority / thought leadership
- All of the above

### Question 11 — Ready

Ready to start? I'll set everything up now.

## After Answers Collected

1. Update `business/config/user.config.md` with all answers
2. Set `ONBOARDED: true`
3. Create any missing memory files from templates in `business/memory/`
4. Populate `01-brand-and-design.md` with identity info
5. Populate `02-posting-schedule.md` with platform and frequency info
6. Populate `03-goals-and-missions.md` with main goal
7. Initialize `session.state.md` with Day 1, start date = today
8. Initialize `day-tracker.md` with today's date
9. Create `business/knowledge/domains/` directory structure
10. Report back: "Setup complete. You're on Day 1."

## Folder Map

```
.claude/
  agents/          — AI agent definitions
  skills/          — Skill files (you are here)
  commands/        — Slash commands
  rules/           — Operating rules
  tools/           — Document generators

business/
  config/          — User settings (user.config.md)
  memory/          — All state and context files
  knowledge/       — Learned patterns and insights
    domains/       — Domain-specific knowledge
```
