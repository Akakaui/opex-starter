---
name: bootstrap
description: Startup sequence and session initialization for the OPEX system. Use when beginning a new session or loading the operating system.
---

# BOOTSTRAP SKILL

Last updated: 2026-07-13
Version: 3
Scope: MANDATORY — must be loaded at the start of EVERY new session

## PURPOSE

This file is mandatory at every session start. It orients you in the
OPEX system before any work begins.

After loading this skill, execute the STARTUP SEQUENCE below in order.

---

## STARTUP SEQUENCE

Execute these steps in order.

### Step 1 — Load session state

Read: `business/memory/session.state.md`

If this file does not exist, this is a fresh install. Skip to Step 6.

This is your orientation — identity, mission, content pipeline,
and next steps.

### Step 2 — Load active goals

Read: `business/memory/03-goals-and-missions.md`

This tells you what the user is currently working toward.
Every task must connect to an active goal.

### Step 3 — Load recent performance

Read: `business/memory/session.state.md` (already loaded in Step 1)

Use performance data to inform every content and strategy decision.

### Step 4 — Load day tracker

Read: `business/memory/day-tracker.md`

This tells you where we are in the content production journey.
Use the greeting table to adapt your tone to the current phase.

### Step 5 — Load additional memory files

Key files to pre-load based on context:

- `business/memory/01-brand-and-design.md` — brand identity
- `business/memory/04-human-voice-rules.md` — voice and tone
- `business/memory/05-tone-and-protocol.md` — communication protocol
- `business/memory/07-profile-knowledge.md` — platform profiles

### Step 6 — Check knowledge files

Verify the knowledge directory exists at `business/knowledge/`.

If it does not exist, create it:
```
mkdir -p business/knowledge
```

Knowledge is stored as organized markdown and JSON files.
No external services required.

### Step 7 — Welcome greeting

After all steps complete, greet with an appropriate message based on day-tracker phase.

---

## FOLDER MAP

```
.claude/
  agents/               — agent definitions
  skills/               — skill files
  commands/             — slash commands
  rules/                — operating rules
  tools/                — document generators

business/
  config/               — user settings
    user.config.md      — identity, preferences, API keys
  memory/               — all memory, state, tracker files
    session.state.md    — session orientation
    day-tracker.md      — content day progression
    01-brand-and-design.md   — ICP, positioning, brand voice
    02-posting-schedule.md   — platforms, cadence
    03-goals-and-missions.md — goals, rules, mission tags
    04-human-voice-rules.md  — writing style, banned words
    05-tone-and-protocol.md  — interaction protocol
    06-milestones.md         — milestones and achievements
    07-profile-knowledge.md  — platform profiles
  knowledge/            — learned patterns, frameworks, insights
    domains/            — domain-specific knowledge
      applied-business/
      sales-insights/
      yt-content-psychology/
      yt-social-strategy/
      yt-personal-brand/
```

## RULES

1. Never operate from memory alone — always read files before acting
2. If a file version header looks outdated, flag it
3. If a critical file is missing, report it and suggest creating it
4. Always connect every task to an active goal from 03-goals-and-missions.md
