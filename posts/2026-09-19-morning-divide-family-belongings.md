---
title: Divide Family Belongings Without a Spreadsheet
slug: divide-family-belongings
date: 2026-09-19
slot: morning
category: estate settlement
tagline: Executors let distant heirs rank ordinary belongings and record a fair family-approved division
---

## The idea

Executors often need several heirs to choose among furniture, keepsakes, and household goods without everyone visiting the house together. Offer a private, one-estate website where the executor photographs items, heirs rank what they want, and the family runs an agreed snake draft, reversing the pick order each round. The executor pays a proposed $79 once for a clear allocation record. It organizes a family decision; it does not interpret a will, value property, mediate disputes, or replace a lawyer.

## A customer example

Hypothetically, Luis is clearing his mother's house with three siblings in different states. He finds the site while searching how to divide inherited items, pays $79, photographs 60 ordinary items, and sends each sibling a private link. They rank the items, agree to a four-person snake draft, and complete their picks over a weekend. Luis exports a photo list showing who receives each item and which items remain for sale or donation; the estate payment is the revenue event.

## Who pays, and for what

The initial buyer is a US executor or trustee dividing ordinary household property among two to five cooperative adult heirs. The same first version can serve a living parent downsizing with adult children. It excludes disputed authority, minors, contested estates, valuables needing appraisal, and families that need mediation.

This is an episodic but common executor job. California Courts says a personal representative inventories property and distributes what remains to entitled beneficiaries ([guide](https://selfhelp.courts.ca.gov/probate)); a current five-sibling discussion asks how to divide a houseful of sentimental property fairly, with multiple families describing rotating drafts ([discussion](https://www.reddit.com/r/inheritance/comments/1u5nl9n/how_to_divide_inherited_items/)). A Texas executor handbook independently recommends an early inventory and either ordered selection or ranked wish lists ([handbook](https://www.koeneckelaw.com/attorneys/resources/Executor_Handbook.pdf)). No national count of estates needing this exact workflow was verified.

## What the AI agent would build

Version one has an estate setup page, mobile item capture, heir invitations, private rankings, a configurable snake draft, an unresolved-items queue, and photo PDF/CSV exports. A database stores items, preferences, selections, consent to the chosen method, and an append-only activity log; object storage holds images. Stripe takes the one-time payment. Heirs use expiring email links rather than creating passwords.

The coding agent implements authorization, encrypted storage, image compression, backups, deletion, accessible mobile screens, and deterministic draft tests. The hardest risk is preventing an invitation or export from exposing sensitive family data. Version one excludes artificial-intelligence valuations, legal forms, money transfers, bidding, shipping, appraisals, and conflict resolution.

## Launch and ongoing maintenance

The owner arranges hosting, transactional email, Stripe, backups, terms, a privacy policy, and a support inbox. Estimate 45–65 owner hours to test permissions and exports, then 8–12 hours monthly for support and security plus 8–12 hours for two useful search pages and outreach to referral partners. The agent can monitor failures; the owner handles deletion and access exceptions, not family disagreements.

For the first ten buyers, individually contact 40 estate-sale companies and probate attorneys through published business addresses and ask them to offer a free manual pilot to suitable cooperative families. Public professional contact is accessible, but willingness to refer is unverified. The search fallback is a worked example for “how to divide inherited items among siblings” and “divide estate personal property”; results inspected this run included FairSplit, legal guidance, and forum questions, so the queries show intent but not attainable ranking.

## Why now

Nothing material changed this month. The entry case is current evidence of the same manual problem alongside unusually high prices for specialized tools. A September 2026 search for dividing inherited items surfaced a recent family question and FairSplit rather than many low-cost self-service choices. The decisive reason to try this entrant is a complete small-family draft for a proposed $79, compared with current one-estate substitutes starting at $149 and $350; whether families prefer the limited product over spreadsheets is unverified.

## What exists today

[FairSplit](https://www.fairsplit.com/plans/pricing-estate-division/) is the strongest substitute: $350 for up to three heirs and 300 items, including multiple division methods, reports, support, and a consultation. [split.deals](https://www.split.deals/en) offers a free 15-item preview and a $149 one-time Basic Pass for 50 items and five participants. [EstateExec](https://www.estateexec.com/Docs/FAQ) costs $199 per estate after ten free days and manages the broader executor process. [Atticus](https://www.weareatticus.com/for-families) starts at $175 and combines estate guidance with human help.

Those products are broader, more established, and better for complicated estates. Spreadsheets and an in-person draft are free. This business can win only among cooperative small families that want photo capture, private ranking, and a recorded draft but reject a $149–$350 tool; the price gap is observed, but preference for this narrower tradeoff needs testing.

## How it makes money

The proposal is $79 per estate, including five heirs, 150 items, and 12 months of access. Thirteen sales produce $1,027 monthly revenue, not profit. At an assumed conservative 1% purchase rate, that requires 1,300 qualified visits or referrals monthly; at an optimistic 4%, 325. Alternatively, if 40 individually contacted professionals yield an assumed 10 referrals and 20% buy, two sales result, showing that outreach alone will not reach the milestone.

At 13 monthly sales, hosting, storage, email, payments, and backups are estimated at $80–$180. Assume 30 minutes of support per estate, or 6.5 owner hours, plus 16–24 monthly maintenance and content hours and roughly five hours weekly on referral outreach initially. Continued acquisition therefore needs indexed worked examples and repeat referrals from estate professionals; neither is proven.

## The riskiest assumption

The killing belief is that cooperative families will pay $79 rather than coordinate in a spreadsheet. In one week, ask 30 probate attorneys and estate-sale firms with public business contacts to invite 20 executors currently dividing 20–150 items among two to five adult heirs. Manually provide a photo catalog, private ranking form, and completed draft record. Pass if 12 families start, eight get every heir to rank items, and three sign a written commitment to pay $79 for the same delivered workflow; fail if eight complete it and none commits. Fewer than eight completed family tasks is an inconclusive channel test. Do not collect payment during this research run.

## What I rejected

- A private home-insurance inventory failed standalone value because the National Association of Insurance Commissioners already provides a free app and several free browser-local tools export the same records.
- A caregiver appointment binder failed the business feasibility gate because medication and medical-summary errors carry consequences that a lightly supported solo product should not accept.

## The part I would argue against

A sceptic would say the target family is too narrow: harmonious siblings can use a spreadsheet, while conflicted siblings need a lawyer or mediator, and FairSplit already owns the middle ground. That is the strongest objection. The case still merits a manual test because independent legal guidance recommends exactly the inventory-and-ranked-selection workflow, families currently improvise drafts, and verified competitors charge enough to leave a measurable price-positioning hypothesis. Abandon if none of eight completing families commits at $79, or if professionals say they cannot ethically recommend a non-legal organizer.

The prior benchmark is **Find a Rack That Fits Your E-Bike** (`2026-09-18-morning-ebike-rack-fit.md`). Test the rack finder next: its purchase intent, affiliate terms, and no-code click test are stronger than this idea's sensitive acquisition and episodic demand. Three $79 estate commitments plus eight fully completed family divisions would move this idea ahead because its revenue needs far fewer transactions.

## Sources

- https://selfhelp.courts.ca.gov/probate — official executor inventory and distribution duties
- https://www.alameda.courts.ca.gov/divisions/probate/property-transfers/administering-estate — official inventory timing and appraisal requirements
- https://www.koeneckelaw.com/attorneys/resources/Executor_Handbook.pdf — inventory, communication, ranked-list, and draft guidance
- https://www.reddit.com/r/inheritance/comments/1u5nl9n/how_to_divide_inherited_items/ — current five-sibling need and manual draft methods
- https://www.reddit.com/r/GenX/comments/1kgebra — independent family methods for selecting sentimental property
- https://www.fairsplit.com/plans/pricing-estate-division/ — exact estate-plan prices and limits
- https://www.fairsplit.com/ — incumbent workflow and division methods
- https://www.split.deals/en — free preview and one-time pass prices
- https://www.estateexec.com/Docs/FAQ — $199 price and broader executor features
- https://www.weareatticus.com/for-families — starting price and guided-service scope
