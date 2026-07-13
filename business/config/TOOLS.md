# TOOLS INVENTORY

Last updated: 2026-07-13

Both OPEX and CODE systems must check this file BEFORE installing any
new tool or dependency. If a tool is listed here, it is already
installed and configured. Do not re-install or duplicate.

---

## Audio Transcription

### Groq (Audio Transcription)
  Status: CONFIGURED
  API Key: In ~/.bashrc as GROQ_API_KEY
  Use: Free Whisper audio transcription
  Limit: 25MB per file (auto-chunking applied for larger)
  Endpoint: https://api.groq.com/openai/v1/audio/transcriptions

---

## Content Extraction

### yt-dlp (Universal Video/Audio Downloader)
  Status: INSTALLED
  Supports: YouTube, Instagram, TikTok, Twitter, Facebook, LinkedIn, Vimeo, SoundCloud, +1000 sites

### ffmpeg (Audio/Video Processing)
  Status: INSTALLED
  Use: Audio conversion (.webm → .wav), video frame extraction

### Groq Whisper (Audio Transcription)
  Status: CONFIGURED (see above)
  Use: Transcribe audio after yt-dlp download
  Auto-chunking: Files >24MB split into 5-min chunks

---

## Development Tools

### Node.js & npm
  Status: INSTALLED
  Use: JavaScript runtime for tools and scripts

### Git
  Status: INSTALLED
  Use: Version control

---

## Knowledge Storage

All knowledge is stored as JSON files in `business/knowledge/domains/[domain]/`.
No external services required. Just organized files that Claude Code reads directly.

---

## RULE

Before installing any tool or dependency, check this file.
If not listed, ask the user for confirmation.
If listed, USE IT — do not re-install or duplicate.
