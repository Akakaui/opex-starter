# Client & Lead Tracker (Notion DB)

## Overview
This dashboard tracks all prospects, leads, and paying clients across your 3 client segments. It gives you a real-time view of your pipeline from "Who filled your form?" to "Who paid you?"

## 🆕 Free Audit Pipeline (First 3 Model)

**The Strategy:**
- First 3 leads get **free audits** — loss leaders to build case studies and social proof
- After 3 free audits delivered → **PAID MODE** ($500 flat per audit)
- Free clients can: (A) implement fixes themselves, or (B) hire Akaka to implement ($500+)
- Every free audit outcome → testimonial → case study → content

**Free Audit Counter:**
```
Free audits given: ___ of 3
Current status: PRE-LAUNCH (no leads yet)
Next milestone: When counter hits 3 → flip to PAID
```

**Lead → Client Flow:**
1. Tally form entry → Zapier MCP → Notion as "Lead" (when MCP connected)
2. OPEX detects new lead → asks Akaka about it
3. DM + email drafted → Akaka approves → sent
4. Calendly booked → discovery call
5. Audit-agent framework loaded → diagnosis delivered
6. Client implements OR hires Akaka to fix
7. Results tracked → testimonial → case study → content

## Pricing

| Tier | Price | Details |
|------|-------|---------|
| Launch (first paid clients) | **$500 flat** | Full revenue system audit |
| Future | Scale up | After case studies stack up |

**Rule:** Akaka decides when to raise prices. OPEX suggests when ready.

## Setup Instructions

1. Create this database in Notion with these columns:
2. Link this database to the "08-client-segments.md" page for easy reference

## Database Columns

| Column | Type | Description |
|--------|------|-------------|
| Contact Name | Title | Person's full name |
| Email | Email | Primary contact for outreach |
| Status | Select | Lead | Free Audit | Paid Client | Completed | Lost |
| Audit # | Number | 1, 2, 3 (tracks free bucket) |
| Stage | Select | New → Contacted → Auditing → Delivered → Done |
| Segment | Select | Revenue Strategy | Productivity | Vibe Coder Builder |
| Company | Text | Business name |
| Size | Select | 1-5, 1-10, 1-3, etc |
| MRR/Revenue | Number | Current monthly revenue |
| Revenue Ceiling | Number | Maximum monthly revenue reached |
| Stage | Select | Form Submittor | Contacted | DM Sent | Call Booked | Free Audit | Paid | Demo |
| Last Touch | Date | Date/time of your last interaction |
| CTA | Text | What you offer them today |
| Comments | Text | Notes about their personality, pain level, etc. |

## Segment-Specific Filters

### Revenue Strategy Lead Criteria
- SaaS companies (email domain contains \"@\" or \".\" typical SaaS domains)
- Current MRR under $20K
- Growth stage: Pre-$20K MRR
- Ready for audit this month
- Unable to improve conversion rates

### Productivity Client Criteria
- Course, coaching, community brands
- 1-10 employees
- Ready for system this week
- Annoyed by admin/friction
- Want systems that run themselves

### Vibe Coder Builder Criteria
- Built tools/apps/products
- Ready for 3-month marketing cycle
- 1-3 developers/product team
- Already have builders using the tool
- Understanding why nobody pays

## Next Steps

1. Create this Notion database
2. Set up automatic status updates based on your outreach
3. Track segments and conversion metrics
4. Review weekly to see what's working, what needs adjustment

## Weekly Review Columns

Add these columns to track your client progression:

| Week | Revenue Strategy | Productivity | Vibe Coder | Total New Leads | Revenue Generated | Conversion Rate | Notes |
|---|---|---|---|---|---|---|---|

## Scoring System

Score each lead 1-10 based on:
- Fit to ICP (4 points)
- Readiness to engage (3 points)
- budget available (2 points)
- Timeline urgency (1 point)

Use this score to prioritize which leads to pursue first.

## Segment Attribution

Every lead belongs to exactly one segment. This is non-negotiable because:

1. **Different message, different value**
2. **Different offer, different credibility**
3. **Different follow-up cadence**

## 📊 Weekly Automation

Create these automated views:

1. **This Week's New Leads (last 7 days)**
2. **High Priority (Score 7+)**
3. **Ready to Contact (DM sent within 24h)**
4. **Following Up (Called/email sent in past 7 days)**
5. **Lost Or Closed**

## 🎯 Client Onboarding Process

### Revenue Strategy Client

**Form Entry:** SaaS metrics, current issues, availability
**Day 1:** Email sequence with audit booking
**Day 2:** Free audit delivered
**Day 3:** Results presentation
**Day 4:** Paid engagement offer
**Day 5-7:** Negotiation/closing

### Productivity Client

**Form Entry:** Course/agency metrics, pain points, timeline
**Day 1:** Email sequence with systems review
**Day 2:** 30-min strategy call
**Day 3:** Systems worksheet delivered
**Day 4:** Custom implementation proposal
**Day 5-7:** Negotiation/closing

### Vibe Coder Builder

**Form Entry:** Tool metrics, conversion rate, availability
**Day 1:** Email sequence with 3-day marketing test
**Day 2:** Marketing test delivered
**Day 3:** Results presentation
**Day 4:** Paid engagement offer
**Day 5-7:** Negotiation/closing

## 📈 Success Metrics

### Lead to Call Conversion

| Segment | Form Tests | DM Sent | Calls Booked | 30-Day Conversion |
|---|---|---|---|---|
| Revenue Strategy | | | | |
| Productivity | | | | |
| Vibe Coder | | | | |

### Client Value

| Segment | Avg Contract Size | Avg Timeline to Close | Avg Revenue/Year | Expansion Rate |
|---|---|---|---|---|
| Revenue Strategy | | | | |
| Productivity | | | | |
| Vibe Coder | | | | |

## 🔄 Follow-Up Cadence

### Revenue Strategy Client

- **Day 1:** Follow up with case study competition
- **Day 3:** Free audit delivery
- **Day 5:** Results presentation + paid offer
- **Day 7:** Final offer
- **Day 10:** Negotiation follow-up
- **Day 14:** Schedule demo if interested

### Productivity Client

- **Day 1:** Follow up with systems workshop
- **Day 3:** Systems worksheet delivered
- **Day 5:** Implementation proposal
- **Day 7:** Final offer
- **Day 10:** Negotiation follow-up
- **Day 14:** Schedule implementation

### Vibe Coder Builder

- **Day 1:** Follow up with marketing test
- **Day 3:** Marketing test results + paid offer
- **Day 5:** Implementation proposal
- **Day 7:** Final offer
- **Day 10:** Negotiation follow-up
- **Day 14:** Schedule implementation

## 📝 Notes & Custom Fields

Add these custom fields for deeper tracking:

- **Email Follow-up Sent:** [Yes/No]
- **Demo Scheduled:** [Yes/No] + Date
- **Free Deliverable Sent:** What (audit, worksheet, test)
- **Pain Point:** "Revenue leaks", "Admin friction", "No traction"
- **Funding Status:** "Fresh", "Raising", "Bootstrapped"
- **Industry:** SaaS, Education, Community, etc.

## ✅ Weekly Review Form

```
Week of [Date]

What worked this week:
1. Revenue Strategy: ______
2. Productivity: ______
3. Vibe Coder: ______

What didn’t:
1. Revenue Strategy: ______
2. Productivity: ______
3. Vibe Coder: ______

Adjustment for next week:

NEW LEADS BY CHANNEL:
- Facebook groups: _____
- Slack communities: _____
- LinkedIn: _____
- Direct from content: _____
- Other: _____

LEADS QUALIFIED:
- Revenue Strategy: _____
- Productivity: _____
- Vibe Coder: _____

LEADS CONTACTED:
- Revenue Strategy: _____
- Productivity: _____
- Vibe Coder: _____

CALLS SCHEDULED:
- Revenue Strategy: _____
- Productivity: _____
- Vibe Coder: _____

CONTRACTS SIGNED:
- Revenue Strategy: _____
- Productivity: _____
- Vibe Coder: _____

Payments Received:
- Revenue Strategy: _____
- Productivity: _____
- Vibe Coder: _____

NEW TESTIMONIALS:
- Revenue Strategy: _____
- Productivity: _____
- Vibe Coder: _____

Next week's focus / adjustment:
1. ______
2. ______
```

## 🔧 Quick Actions (Add these buttons to your Notion sidebar)

- **All New Leads (last 7 days)**
- **High Priority (Score 7+)**
- **Ready to Contact**
- **Revenue Strategy Progress**
- **Productivity Progress**
- **Vibe Coder Progress**

## 📈 Weekly Report Template

### Week of [Start Date] - [End Date]

#### Executive Summary
Total leads: ____ | Contracts: ____ | Revenue: ____ | Conversion: __%

#### Segment Performance
| Segment | Form Tests | Leads | Calls | Contracts | Revenue | Conversion |
|---|---|---|---|---|---|---|---|

#### Key Insights
1. ______
2. ______
3. ______

#### What to Focus Next Week
1. ______
2. ______
3. ______

#### Objections/Rookie Mistakes
1. ______
2. ______
3. ______

## 🚀 Getting Started

1. Create this database in Notion now
2. Import the first few leads from your current lists
3. Set up the weekly review form template
4. Add the quick action buttons to your sidebar
5. Schedule the first weekly review

## 💡 Tips & Tricks

- **Color-code segments:** Green = Revenue Strategy, Orange = Productivity, Purple = Vibe Coder
- **Status emojis:** 🆕 = New, 📞 = Contacted, 🤝 = Booked, 💰 = Paid
- **Weekly: Delete >99% of leads**
- **Only keep leads that are in the last 7 days or have active status**
- **Use templates for fast data entry**

## 🔄 Segment Solvers (How to identify segment)

### Revenue Strategy Solver
Look for:
- SaaS product companies
- Revenue ceilings they hit
- Frustration with conversion rates
- Need for revenue fixes, not systems

### Productivity Client Solver
Look for:
- Course, coaching, community brands
- Admin/friction issues
- Want systems that run themselves
- Familiar with subscription/funnel concepts

### Vibe Coder Builder Solver
Look for:
- Built tools, apps, SaaS projects
- Already have builders using their tool
- No traction from paying customers
- Need marketing that resonates with builders

## 📊 Monthly Analysis

- **Which segment is converting the fastest?**
- **Which channels are driving the best leads?**
- **Which CTAs are resonating?**
- **Which time windows are best for outreach?**
- **What are the common objections?**
