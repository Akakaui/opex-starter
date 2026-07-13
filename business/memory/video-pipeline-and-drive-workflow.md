# Video Pipeline & Drive Workflow

## System Philosophy

This is a complete video production operating system that:
- Manages a compounding asset library
- Plans frame-accurate productions
- Produces editor-ready briefs
- Builds a library valuable enough that editors would pay for access
- Gives every file a permanent home

---

## Folder Structure

```
/Video Assets/
├── SFX/                    -- Sound effects
├── BGM/                    -- Background music
├── B-Roll/                 -- Stock footage
├── Graphics/               -- Overlays, lower thirds, CTAs
├── Green-Screen/           -- Green screen clips
├── 3D-Models/              -- 3D assets
├── Backgrounds/            -- Static or motion backgrounds
├── Fonts/                  -- Typeface files
├── Illustrations/          -- Vector art
├── Templates/              -- Reusable project files
├── Voiceovers/             -- TTS or recorded audio
├── Style-References/       -- Reference videos
└── Finished/               -- Final MP4s
```

---

## Architecture

```
User: "Let's make a video about [topic]"

    |
VIDEO AGENT
    |
    ├── 1. INTAKE
    │     Topic, platform, type, style reference
    │
    ├── 2. DRIVE INVENTORY
    │     Check existing assets
    │     Identify usable, unsuitable, missing
    │
    ├── 3. ASSET REQUESTS (if needed)
    │     Exact description of what's needed
    │
    ├── 4. PATTERN RETRIEVAL
    │     Reference patterns from knowledge base
    │
    ├── 5. SCENE-BY-SCENE PLAN
    │     Every scene: visual, audio, text, assets
    │
    ├── 6. SCRIPT
    │     Tied to scenes
    │
    ├── 7. PRODUCTION BRIEF
    │     Complete editor-ready package
    │
    └── 8. POST-PRODUCTION
          Upload finished MP4, file everything
```

---

## Clean Machine Rule

**Nothing stays on the local machine. Ever.**

- All assets live on cloud storage
- Once uploaded, local copies deleted
- Machine is staging ground, not storage
- Any agent can access the same storage

---

## Session Flow

1. Bootstrap
2. User picks video topic
3. Agent checks existing assets
4. Agent reports what we have, what we need
5. User uploads missing assets
6. Agent plans scenes, writes script, assembles brief
7. User edits
8. User uploads finished video, agent files everything
9. Library grows, next production gets faster
