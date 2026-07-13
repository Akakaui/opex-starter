---
name: cleanup
description: End-of-session cleanup procedures. Use when wrapping up a session, clearing temp files, or resetting state.
---
# CLEANUP SKILL

Version: 3
Scope: ALL AGENTS

## PURPOSE

Every session must end with a clean system. No leftover temp
files, no orphaned processes, no stale state. The system must
be ready for the next session with zero manual intervention.

## CLEANUP SEQUENCE

Run these in order. Do not skip steps.

### Step 1: Session State Update
Update: business/memory/session.state.md
Log:
- Date and time
- What was done this session
- What is pending
- First suggested action for next session

### Step 2: Day Tracker Update
If content was produced today:
- Update the current day count
- Log: what platforms, what topic, what mission tag
- Note: next suggested milestone

### Step 3: Temp File Cleanup
Delete all temporary files from this session:
```bash
rm -rf /tmp/opex-*
```
Delete video/audio processing temps:
```bash
rm -f /tmp/*.webm /tmp/*.wav /tmp/*.mp3 /tmp/*.mp4 /tmp/*.mkv
rm -f /tmp/*.jpg /tmp/*.png /tmp/*.vtt /tmp/*.srt
rm -rf /tmp/opex-frames-* /tmp/opex-extract-* /tmp/opex-transcript-*
```

### Step 4: Memory File Sync
Check: business/memory/ files are current
If anything is stale → update before closing

### Step 5: Knowledge File Check
Check: business/knowledge/domains/ is current
If anything new was ingested → verify storage

### Step 6: Notion Sync (if applicable)
If content was produced and approved → push to Notion
If goals were updated → push to Notion
If any new lead → log in Notion

### Step 7: Human Check
Ask the user:
"Anything else before I close this session?"
Wait for response. If nothing → proceed to goodbye.

## CLEANUP TRIGGERS

### Automatic Cleanup
- End of every session (before goodbye)
- After content production completes
- After audit completes
- After lead gen session

### Manual Cleanup
User says: "Clean up", "Reset", "Start fresh"
Run full cleanup sequence.

### Emergency Cleanup
User says: "System is broken", "Something went wrong"
Run cleanup immediately. Log error before cleaning.

## CLEANUP FORMATS

### Session End
Hey [name]. Day [X] done.

Today:
- [what was accomplished]
- [what is pending]

Next session: [first suggested action]

System clean. Ready for tomorrow.

### Emergency Cleanup
Cleaning up now.
Issue logged: [brief description of what went wrong]
System reset. Ready to try again.

### Manual Cleanup
Cleaning up as requested.
- Temp files: cleared
- Session state: updated
- Memory files: current
- Knowledge files: verified
System clean. Ready for next session.

## RULES

1. Never leave temp files behind
2. Never leave stale state in memory files
3. Always update session.state.md before closing
4. Always ask before closing
5. Always log what was done and what is pending
