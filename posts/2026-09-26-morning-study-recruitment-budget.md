---
title: Budget the Next Online Research Study
slug: study-recruitment-budget
date: 2026-09-26
slot: morning
category: research participant recruitment
tagline: Researchers compare participant platforms and produce a defensible study budget before recruiting anyone
---

## The idea

Researchers who pay people to complete online studies must choose a new recruitment platform and justify the cost. Offer a neutral calculator that turns sample size, study length, researcher type, geography, and screening needs into comparable platform budgets and a source-dated brief. Researchers pay a proposed $12 monthly or $99 annual subscription to save studies, export budget notes, and receive policy-change alerts; a complete one-study comparison remains free.

## A customer example

Hypothetically, Priya needs 300 US adults for a 12-minute university study. She finds the site while searching for a Mechanical Turk replacement, enters her sample and a $12 hourly reward, and sees participant pay separated from each platform fee. She checks which services support her geography and screening, then exports a brief citing every rule for her grant administrator. The free comparison proves useful; Priya pays $12 when she saves three planned studies and asks to be alerted before their budgets go stale.

## Who pays, and for what

The initial customer is a university researcher or lab manager who repeatedly recruits online participants and must budget before launching. The same first version serves user researchers and small market-research teams, although specialist medical recruitment and managed panels are excluded.

This is recurring for active labs, not every academic. Amazon says Mechanical Turk closes September 30, 2026, forcing its remaining requesters to move ([AWS documentation](https://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI-legacy/Welcome.html)). Researchers are already asking where requesters will go, and one doctoral researcher described abandoning Mechanical Turk amid fraud concerns ([migration discussion](https://www.reddit.com/r/mturk/comments/1w8pyxq/hey_requesters_please_read/), [researcher experience](https://www.reddit.com/r/mturk/comments/1sdlgi5/is_mturk_just_full_of_fraud_getting_frustrated/)). Those signals establish a decision, not willingness to buy this tool.

## What the AI agent would build

Version one has a study-input form, a side-by-side cost table, eligibility and screening notes, saved scenarios, and a PDF or spreadsheet budget brief. A small database stores each fee, minimum reward, geography, source URL, and checked date. Deterministic formulas do the arithmetic; no participant data or artificial intelligence is required.

The coding agent builds calculation tests, authentication, Stripe billing, exports, analytics, and source-change alerts. The hardest risk is expressing policy differences without claiming two participant pools are methodologically interchangeable. Version one excludes recruitment, survey hosting, data-quality scoring, ethics advice, and recommendations for clinical studies.

## Launch and ongoing maintenance

The owner arranges hosting, Stripe, email, privacy terms, and a domain. Estimate 35–50 build hours, then 6–10 hours monthly to recheck sources, five for support, and 15–25 for examples and acquisition. The agent can flag changed pages; the owner approves interpretations.

For the first ten users, send 50 individual invitations to publicly listed behavioral-science lab managers and researchers whose lab pages mention online studies, offering to reproduce one real budget. This public contact route is verifiable but response rates are not. Search is the continuing channel: “MTurk alternatives for researchers” already returns Prolific, Labvanced, and new comparison pages, proving timely attention and strong competition. The entrant can target concrete calculators such as “300 participant Prolific vs Connect cost,” but ranking is unverified. Direct lab outreach is the fallback; community promotion permission was not established.

## Why now

The catalyst is explicit and immediate: [Amazon's API documentation](https://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI-legacy/Welcome.html) says Mechanical Turk permanently closes September 30, 2026. Replacement costs are also meaningfully different today. Prolific charges academic and nonprofit researchers 33.3% above participant rewards and normally requires at least $8 an hour, while CloudResearch Connect charges 25% and sets a $7.50 hourly floor. The opportunity is the forced comparison, not a claim that participant platforms are new or underserved.

## What exists today

[Prolific](https://www.prolific.com/pricing) has no subscription; academics pay participant rewards plus 33.3%, and corporate users usually pay 42.8%. [CloudResearch Connect](https://connect-researcher-help.cloudresearch.com/hc/en-us/articles/5046181555732-Project-Cost) charges 25% for academic or nonprofit researchers and 40% otherwise. [Clickworker](https://support-marketplace.clickworker.com/support/solutions/articles/80000715570-what-is-the-cost-of-my-order-) charges the chosen participant fees plus 40% and value-added tax for surveys. Each is better at estimating its own checkout and actually supplying participants.

Free vendor comparisons and the [Labvanced guide](https://www.labvanced.com/content/research/en/blog/2026-09-mturk-alternatives/) are the strongest substitutes. The decisive reason to use this entrant is one reproducible budget across platforms, with researcher status, pay floors, taxes, and dated citations exposed in the same export. Published differences in fees and minimum pay support the reconciliation job; whether a saved neutral brief is worth $12 remains unverified.

## How it makes money

The proposal is $12 monthly or $99 annually after one free comparison. Eighty-four monthly subscribers produce $1,008 monthly revenue. An annual-only equivalent requires 122 active subscribers to exceed $12,000 annual revenue; those are active accounts, not 122 new sales every month. Estimated hosting, email, monitoring, and payments cost $50–$120 monthly, so revenue is not profit.

Assume conservatively that 2% of qualified visitors subscribe: 4,200 monthly qualified visits are needed for 84 subscribers before churn. At an optimistic 6%, 1,400 are needed. For direct acquisition, a conservative 2% conversion from 50 tailored contacts produces one subscriber; an optimistic 10% produces five. Budget 20–30 owner hours monthly for 100–150 careful contacts and content, plus 11–15 for verification and support. Search pages for common sample sizes and repeat use by labs could continue acquisition, but neither free traffic nor retention is established.

## The riskiest assumption

The killing belief is that repeated researchers value a neutral, exportable comparison enough to pay $12. In one week, invite 50 publicly listed researchers who expect an online paid study within six months. Qualified participants must supply a real sample size, duration, audience, and institution type. Manually return the proposed three-platform budget, then offer a real $12 monthly purchase commitment without collecting payment. Pass if ten complete the task, six use the brief in planning or share it with an administrator, and three commit at the stated price. Fail if ten complete but fewer than two share it or none commits. Fewer than ten completions is an inconclusive channel test; ask committed users after their next study whether they would renew.

## What I rejected

- A wedding seating-chart app failed standalone value because WeddingWire already provides a capable free planner, and the observed paid-app complaint was promptly fixed.
- A robot-vacuum replacement-parts finder failed acquisition and standalone value because several exact-model US finders already target the same searches, leaving no supported entry advantage.

## The part I would argue against

A sceptic would say this is a temporary shutdown spike wrapped around arithmetic that every vendor already performs for free. Worse, participant quality and sample fit matter more than a fee table, yet a solo owner cannot responsibly rank those outcomes. That objection limits the product to transparent budgeting, but it does not erase the forced migration or the documented fee differences. Abandon the idea if ten qualified researchers use the manual comparison but fewer than two share it internally or none makes a price-aware commitment.

The prior benchmark is **Compare What Your School Fundraiser Keeps** (`2026-09-25-morning-school-fundraiser-return.md`). Test the fundraiser calculator first because confusing real invoices demonstrate the reconciliation benefit and directory prices support its payer. Move this study-budget tool ahead only if three researchers commit at $12, or if the fundraiser test produces no vendor commitments after organizers share its brief.

## Sources

- https://docs.aws.amazon.com/AWSMechTurk/latest/AWSMturkAPI-legacy/Welcome.html — official September 30 shutdown statement
- https://www.prolific.com/pricing — current fees, access model, pool, and screening claims
- https://researcher-help.prolific.com/en/articles/445239-what-is-your-pricing — academic eligibility, pay floor, fees, and tax treatment
- https://connect-researcher-help.cloudresearch.com/hc/en-us/articles/5046181555732-Project-Cost — Connect fees and minimum participant pay
- https://support-marketplace.clickworker.com/support/solutions/articles/80000715570-what-is-the-cost-of-my-order- — Clickworker survey fee formula
- https://www.labvanced.com/content/research/en/blog/2026-09-mturk-alternatives/ — free comparison substitute and current migration choices
- https://www.reddit.com/r/mturk/comments/1w8pyxq/hey_requesters_please_read/ — workers asking where established requesters will move
- https://www.reddit.com/r/mturk/comments/1sdlgi5/is_mturk_just_full_of_fraud_getting_frustrated/ — doctoral researcher describing a paid recruitment problem
