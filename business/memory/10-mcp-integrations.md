# MCP Integrations — Connection Status & Reminders

**Purpose:** Track which MCP servers are connected, in progress, or planned.
OPEX checks this file at session start. Reminders are shown based on pending status.

---

## ✅ Connected (Operational)

| MCP | Purpose | Status |
|-----|---------|--------|
| Open Design | Design direction, carousel slide briefs, visual mood | ✅ Active |
| Notion | Content Calendar, CRM, databases | ✅ Active |
| **Google Drive** | Video asset library backbone — Video Agent manages directly | ✅ **Active** |
| **Zapier** | Connected (apps enabled, needs OAuth for specific actions) | ✅ Connected |

### Google Drive — Video Asset Library
- **This is the storage backbone.** NOT a custom MCP. Video Agent manages Drive directly.
- Full subfolder taxonomy: SFX/, BGM/, B-Roll/, Graphics/, 3D-Models/, Backgrounds/, Fonts/, Illustrations/, Templates/, Voiceovers/, Style-References/, Green-Screen/, Finished/
- Video Agent runs inventory before every production — flags usable, unsuitable, and missing assets
- Clean Machine Rule: everything lives on Drive, local copies are staging only
- Library compounds: 5 assets → 46+ over 10 productions
- See `video-pipeline-and-drive-workflow.md` for full architecture

---

## 📋 Planned (Needs Setup)

| MCP | Purpose | Action Needed |
|-----|---------|---------------|
| Gmail (via Zapier) | Auto-send outreach DMs/emails | Zapier has Gmail actions but needs OAuth auth |
| Calendly | Booking visibility in OPEX | Ask Akaka: "Calendly link ready for me to monitor bookings?" |

---

## 🔔 Reminder Schedule

| Check | Frequency |
|-------|-----------|
| "Zapier Gmail OAuth done?" | When first outreach round begins |
| "Calendly ready?" | When first paid client is ready |
| "Ready to flip reel mode from SCRIPT to PRODUCTION?" | After Akaka wants to start producing videos |
