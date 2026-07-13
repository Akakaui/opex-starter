# TOOLS SKILL

Last updated: 2026-07-13
Version: 2
Scope: ALL AGENTS

## PURPOSE

Every agent must know what tools are available, what each
tool does, and when to reach for it. This file is the
complete tool literacy guide for the OPEX system.

## TOOL SELECTION LOGIC

Before calling any tool, run this check:

1. Can I answer this from files already in context? → No tool needed
2. Do I need current information? → web_search
3. Do I need stored OPEX knowledge? → file_read (knowledge directory)
4. Do I need to save something permanently? → file_write (knowledge directory)
5. Do I need to analyze a video? → watch_video
6. Do I need to produce a visual? → image_generation or design skill
7. Do I need to produce a video? → video skill
8. Do I need to push content to Notion? → notion
9. Am I missing a tool entirely? → REQUEST_HUMAN_INPUT

## TOOL DESCRIPTIONS

### web_search

What it does: Searches the web for current information
Use when: Research, competitor analysis, trending topics,
          finding data to support content, current events
Do not use when: The answer is already in system files
Query style: Short, specific, 1-6 words preferred

### file_read [READ]

What it does: Reads any file in the project
Use when: Loading a skill, reading memory, checking config,
          searching domain knowledge
No confirmation needed for read operations
Knowledge lives in: business/knowledge/domains/

### file_write [REQUIRES CONFIRMATION]

What it does: Writes or updates any file in the project
Always: Read the file first, increment version, log the change
Format for version header:
  Last updated: [DATE]
  Version: [N+1]
  Changed by: [Agent Name]
  Reason: [why this update was made]

### image_generation [REQUIRES CONFIRMATION]

What it does: Generates images via available APIs
Use when: Blog headers, social visuals, article covers
Process: Draft prompt first → present to user → confirm → generate
Never: Generate without showing the prompt first

### watch_video

What it does: Downloads video, extracts frames and transcript,
              hands both to the agent for analysis
Reference: bradautomates/claude-video (MIT license)
Use when: Analyzing a reel for patterns, processing expert video
          for knowledge ingestion, competitive content analysis
Invoke: /watch [URL] [specific question or instruction]
Frame budget: auto-scaled to video duration, max 100 frames
Whisper: fallback transcription when captions unavailable

### notion [REQUIRES CONFIRMATION]

What it does: Creates/updates pages in Notion
Use when: Daily brief, goal updates, content calendar,
          push approved content for posting
Structure: Content database, Goals dashboard, Daily briefs
Invoke: Notion MCP

## WHEN A TOOL IS MISSING

Use this format exactly:

BLOCKED — [Agent Name]

Task: [what was being attempted]
Missing: [tool or access needed]
Why: [why this blocks progress]
Format needed: [API key / MCP connection / file / approval]
Once you provide this: [what will happen next]

Never guess. Never hallucinate. Always ask.
