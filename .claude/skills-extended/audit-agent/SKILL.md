---
name: audit-agent
description: >-
  Collaborative diagnostic framework for client delivery.
  Used by OPEX and the user together during client engagements
  to diagnose revenue system problems, generate fixes, and track results.
---

# Audit Agent — Collaborative Diagnostic Framework

## Identity

This is NOT an autonomous agent. This is a structured framework
that OPEX and the user work through **together** during client delivery.

The Audit Agent:
- Knows what access to request
- Diagnoses the real problem (not the symptom)
- Generates the fix
- Tracks whether the fix worked
- Knows when to ask for a testimonial

## When to Activate

The Audit Agent is used during the **delivery phase** of a client engagement.
It is NOT for discovery calls or prospecting.

Trigger: Client has signed, scoped, and we're in delivery.

## Pre-Flight: What Access to Request

Before the audit begins, request these from the client:

| Access | Why | Priority |
|--------|-----|----------|
| Email system (Mailchimp, ConvertKit, etc.) | Check automations, sequences, deliverability | Critical |
| Analytics (GA4, Plausible, etc.) | Traffic sources, conversion paths, drop-off | Critical |
| Funnel pages / landing pages | Copy audit, CTA flow, conversion points | Critical |
| Social media accounts (or links) | Content audit, brand positioning, engagement patterns | High |
| CRM (if sales-heavy) | Lead lifecycle, follow-up cadence, pipeline health | High |
| Payment system (Stripe, Shopify, etc.) | Revenue data, MRR, churn rate, transaction patterns | Medium |
| Community / email list | Engagement levels, segmentation, list health | Medium |

## Diagnosis Matrix

Diagnose the problem by checking each layer in this order.
**Always start at the top.** Most people blame "copy" when the real
issue is upstream.

### Layer 1: Positioning & Offer
*"Is the value proposition clear?"*

| Symptom | What to check | If broken |
|---------|--------------|-----------|
| "Nobody is interested" | ICP definition — is it specific enough? | Refine target audience |
| "People say 'not right for me'" | Messaging clarity — does it name their exact problem? | Rewrite value prop |
| "Comparisons are wrong" | Category framing — what bucket are they in? | Change category |
| "They don't see the value" | ROI articulation — is benefit quantified? | Add specific numbers |

### Layer 2: Funnel & Flow
*"Is the path to conversion clear?"*

| Symptom | What to check | If broken |
|---------|--------------|-----------|
| High traffic, no conversions | CTA strength and placement | Move CTA higher, make it specific |
| Drop-off at specific step | That step's friction | Reduce steps, improve clarity |
| People start but don't finish | Commitment escalation | Lower ask per step |
| Form abandons | Field count, questions asked | Cut fields by 50% |

### Layer 3: Copy & Messaging
*"Is the writing doing its job?"*

| Symptom | What to check | If broken |
|---------|--------------|-----------|
| People don't read past headline | Hook strength | Test 5 new hooks |
| Scrolling without clicking | Benefit density per section | Add specific benefit every 2-3 lines |
| "Tell me more" but no buy | Objections not addressed | Add objection-handling section |
| Forgettable | Personality/voice missing | Inject brand voice |

### Layer 4: Automation & Systems
*"Is the machine running?"*

| Symptom | What to check | If broken |
|---------|--------------|-----------|
| Cold leads go nowhere | Follow-up sequence missing | Build 3-email nurture sequence |
| Hot leads get lost | No lead routing or tagging | Set up segmentation |
| Conversions not tracked | Analytics not configured | Install tracking |
| Time wasted on manual | No automation for repetitive tasks | Set up 3 automations |

### Layer 5: Trust & Proof
*"Why should they believe you?"*

| Symptom | What to check | If broken |
|---------|--------------|-----------|
| "Looks good but not yet" | Social proof missing | Add testimonials, case studies |
| Competitors win on trust | Authority signals weak | Add media logos, client logos, certifications |
| Price objections frequent | Value not proven before ask | Add ROI calculator, before/after |

## Fix Generation

Once the layer is identified:

1. **Diagnose** — Which layer? What specific symptom?
2. **Hypothesize** — What change would fix this?
3. **Fix** — Generate the specific change (copy, flow, tracking, etc.)
4. **Verify** — Did the client implement it? Did it work?
5. **Track** — Log the fix, the date, the before/after metric

### Fix Types by Layer

| Layer | Typical Fix |
|-------|------------|
| Positioning | Rewrite homepage value prop, refine ICP doc |
| Funnel | Restructure page flow, add/remove steps |
| Copy | Rewrite hooks, add benefits, address objections |
| Automation | Build sequence, set up tagging, install analytics |
| Trust | Collect testimonial, add proof to site |

## When to Request Testimonials

**Timing:** Right when a fix delivers a **visible result the client can see**.
Not at end of engagement. Strike while the win is fresh.

Trigger moments:
- A rewrite improves a metric (CTR, conversion, engagement)
- An automation saves them time they notice
- A funnel change produces a first sale
- They say "wow, that's working"

Request format:
> "The [fix] is producing [result]. Would you be open to recording
> a quick testimonial on this? It'll take 2 minutes and helps
> other businesses like yours see what's possible."

## Results Tracking

For each client audit, log:

| Field | Example |
|-------|---------|
| Client | SaaS founder - $15K MRR |
| Layer diagnosed | Copy & Messaging |
| Symptom | Scrolling without clicking |
| Fix applied | Rewrote hero CTA + added objection section |
| Before | 1.2% CTR on hero CTA |
| After (7 days) | 3.8% CTR |
| Client reaction | "This is the first time people are actually clicking" |
| Testimonial collected | Yes |
