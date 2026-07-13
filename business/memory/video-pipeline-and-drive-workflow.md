# Video Pipeline & Drive Workflow — Full Production OS

## System Philosophy

This is NOT "an AI that helps make videos."

This is a **complete video production operating system** that:
- Manages a compounding asset library (sound, visuals, 3D, fonts, everything)
- Plans frame-accurate productions that pass as human-made
- Produces editor-ready briefs that don't ask questions
- Builds a library valuable enough that editors would pay for access
- Gives every file a permanent home so nothing is ever lost

---

## Expanded Folder Structure

```
/Video Assets/
├── SFX/                    ← Sound effects (whooshes, impacts, clicks, ambient)
├── BGM/                    ← Background music (grouped by mood)
├── B-Roll/                 ← Stock footage, supplementary clips
├── Graphics/               ← Overlays, lower thirds, CTAs, badges
├── Green-Screen/           ← Green screen talking head clips
├── 3D-Models/              ← GLB/3D assets (product rotations, data viz, etc.)
├── Backgrounds/            ← PNG/JPG static or motion backgrounds
├── Fonts/                  ← Typeface files (.otf, .ttf)
├── Illustrations/          ← Vector art, SVG, AI files
├── Templates/              ← Reusable After Effects project files (.aep)
├── Voiceovers/             ← TTS or recorded audio per video
├── Style-References/       ← Reference videos for pattern extraction
└── Finished/               ← Final MP4s (platform-suffixed)
```

**Folders are created on demand.** Need Matte-Paintings/ or Transitions/? It appears.

---

## Architecture

```
User: "Let's make a video about [topic]"

    ▼
VIDEO AGENT
    │
    ├── 1. INTAKE
    │     Topic, platform, type, any existing script/vo/style-ref
    │
    ├── 2. DRIVE INVENTORY
    │     ├── Walk every subfolder
    │     ├── ✅ Usable assets listed
    │     ├── ⚠️ Unsuitable assets flagged (with reason)
    │     └── ❌ Missing assets identified
    │
    ├── 3. ASSET REQUESTS (if needed)
    │     ├── Exact description of what's needed
    │     ├── Duration, mood, visual style, where to find it
    │     └── User uploads → agent renames + files them
    │
    ├── 4. PATTERN RETRIEVAL
    │     ├── Qdrant patterns (hook, pacing, retention)
    │     ├── Style reference patterns (if one exists)
    │     └── Mixed into the structure
    │
    ├── 5. VOICEOVER LOAD (if exists)
    │     ├── Load from Voiceovers/
    │     ├── Note total duration → adjust scene timing
    │     └── Per-scene timecodes in brief
    │
    ├── 6. SCENE-BY-SCENE PLAN
    │     ├── Every scene: visual, audio, text, assets
    │     ├── Every asset referenced by exact filename
    │     └── Frame-accurate timing
    │
    ├── 7. SCRIPT
    │     ├── Delegated to Writer
    │     └── Tied to scenes
    │
    ├── 8. PRODUCTION BRIEF
    │     ├── Drive inventory summary
    │     ├── Asset requests with specs
    │     ├── Scene plan (editor-ready)
    │     ├── After Effects notes
    │     └── Script
    │
    ├── 9. USER EDITS IN AFTER EFFECTS
    │
    └── 10. POST-PRODUCTION
          ├── User uploads finished MP4
          ├── Agent renames → files to Finished/
          ├── All uploaded assets renamed + filed to correct subfolders
          └── No orphan files remain
```

---

## Asset Suitability Logic

Before using an asset, the agent evaluates:

```
ASSET: upbeat-corporate.mp3
  For: cinematic-tension video about revenue audits
  Result: ❌ NOT SUITABLE
  Reason: This track is bright and upbeat. The video needs dark, tense, minor-key.
  Request: Find me a track — slow build, minor key, strings/pads, no percussion first 15s.
  Suggested source: Artlist → "cinematic tension drone"
```

```
ASSET: typing-hands.mp4
  For: "I spent hours doing this manually" — Scene 2
  Result: ✅ USABLE
  Note: Trim to 4 seconds, speed ramp 120% for energy
```

---

## Asset Request Format

Every missing asset gets a full spec:

```
REQUEST: [Category]
─────────────────────
Description: [What it is, what it looks/sounds like]
Duration: [Seconds needed in video]
Use: [Which scene, what it supports visually/audibly]
Style: [Mood, color, lighting, texture]
Source suggestion: [Where user should look]
Fallback: [DIY alternative if user can't find it]
```

---

## The Compounding Library Effect

```
Production 1:  5 assets exist → 3 requested → 3 uploaded → 8 total
Production 5:  20 assets exist → 2 requested → 2 uploaded → 22 total
Production 10: 45 assets exist → 1 requested → 1 uploaded → 46 total
Production 20: 90+ assets exist → rarely need requests
```

Each production feeds the next. The library is the product.

---

## Why This Has Standalone Value

The production briefs + organized library = a sellable system:

**For editors:**
- "Walk into any project with a 200+ asset library, pre-organized, pre-named"
- "Production briefs so detailed you never need to ask what the creator wants"
- "Style reference database — see how X creator does their text overlays"

**For creators:**
- "Never lose a file. Every asset has a permanent home."
- "Your library compounds. Year 1: 500 assets. Year 2: 2000+."
- "Multiple AI agents can use the same Drive — Claude, ChatGPT, future tools"

---

## Voiceover Workflow

1. User records VO (phone, mic, ElevenLabs, whatever)
2. Uploads to Voiceovers/ — `2026-07-04_[title]_vo.mp3`
3. Agent loads it, notes duration (e.g. 47 seconds)
4. Scene timing adjusted to match actual VO pacing
5. Brief says: "VO file: `2026-07-04_why-audits-matter_vo.mp3` — Scene 1: 0:00-0:08, Scene 2: 0:08-0:22..."

---

## Clean Machine Rule

**Nothing stays on the local machine. Ever.**

- All assets live on Google Drive — not on your PC
- Once a file is uploaded and filed on Drive, the local copy is deleted
- The machine is a staging ground, not storage
- If the PC dies, you lose nothing. Everything is in the cloud.
- Any agent (Claude, ChatGPT, future tools) can access the same Drive

---

## Session Flow

1. Bootstrap
2. User picks video topic
3. Agent: "Let me check what we've got..." (Drive inventory)
4. Agent reports: "We have X, Y, Z. We need A, B. Here's exactly what I need."
5. User uploads A, B
6. Agent renames + files everything
7. If style reference exists → load patterns
8. Plan scenes → write script → assemble brief
9. User edits in After Effects
10. User uploads finish → agent files to Finished/
11. All assets cleaned up, no orphans
12. Library grows. Next production gets faster.
