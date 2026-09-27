---
title: Finish the Church Bulletin Before Sunday
slug: weekly-bulletin-builder
date: 2026-09-27
slot: morning
category: church bulletins
tagline: Small church offices turn weekly worship details into a print-ready folded bulletin without desktop publishing software
---

## The idea

Church administrators need to turn changing service details and announcements into a folded paper bulletin every week. Offer a browser form that remembers the church's recurring sections and produces a correctly ordered, print-ready PDF without requiring layout work. A church pays a proposed $19 monthly; version one serves ordinary four-page bifolds, not general graphic design or old-file conversion.

## A customer example

Hypothetically, Anne's Thursday email contains Sunday's hymns, readings, announcements, and volunteer names. She finds the builder while searching for a Microsoft Publisher replacement, chooses a four-page template, pastes each item into its labelled section, and previews the folded pages. Ten minutes later she downloads a PDF whose panels and margins are ready for the office copier. A free first issue proves the workflow; the church pays $19 to retain its logo, recurring text, and next-week duplicate.

## Who pays, and for what

The initial payer is a small US church that prints a weekly bulletin but lacks a designer. The same first version can serve chapels and small religious schools using a letter-size bifold; multilingual services, licensed hymn text, and complex liturgical planning are excluded.

The job repeats weekly. One church-technology discussion says Canva makes its bulletin editor do more work than Word and explains the awkward panel and booklet-printing setup ([discussion](https://www.reddit.com/r/churchtech/comments/1vnlmjo/publisher_substitute_for_bulletins_and_newsletters/)). A separate church bulletin product explicitly prices a weekly workflow, while the United Methodist directory contains thousands of congregations ([competitor](https://churchbulletinsoftware.com/pricing), [directory](https://www.umc.org/find-a-church)). These establish a sizable reachable job, not willingness to choose this narrower tool.

## What the AI agent would build

Version one has church setup, four structured content sections, three restrained bifold templates, live page preview, duplicate-last-week, and PDF export. The backend stores accounts, branding, reusable blocks, and issues; Stripe handles subscriptions. Browser layout code places content into fixed panels and warns before text overflows.

The coding agent implements authentication, deterministic PDF snapshots, copier-margin tests, backups, billing, and error monitoring. The hardest risk is producing consistent pagination across variable content and printers. Version one excludes artificial-intelligence writing, mobile bulletins, contributor collaboration, hymn or scripture libraries, and importing `.pub` files.

## Launch and ongoing maintenance

The owner arranges hosting, Stripe, email, privacy terms, and test prints on common duplex printers. Estimate 45–60 build hours, then 8–12 hours monthly for software and PDF regression checks, five for support, and 20–30 for acquisition and template guidance. The owner reviews templates; the agent can test layout changes. No weekly editorial work is performed for customers.

For the first ten users, use the official United Methodist finder and Episcopal Asset Map, which exposes more than 6,000 congregations, to identify 80 church websites that publish a current folded PDF and a public office contact ([Episcopal finder](https://www.episcopalchurch.org/find-a-church/)). Send individual invitations offering to let the administrator rebuild one real issue themselves. Directories verify discovery, not permission or response rate; outreach must be personal. Search pages for “Publisher substitute for church bulletin” are the continuing route, but an exact church-specific competitor already ranks, so search acquisition is unproven.

## Why now

The catalyst is unusually specific. [Microsoft says](https://support.microsoft.com/en-us/publisher/microsoft-publisher-will-no-longer-be-supported-after-october-2026) Microsoft 365 subscribers lose Publisher on October 1, 2026, and Publisher 2021 support ends October 13. It recommends converting existing files and points users to Word or PowerPoint. The opportunity is not rescuing archives; it is replacing one recurring publication after offices preserve their old files.

## What exists today

[Church Bulletin Software](https://churchbulletinsoftware.com/pricing) charges $39 monthly or $348 annually and offers print PDF, mobile publishing, contributors, and a $149 migration service. It is the strongest direct substitute and is better for collaboration and multiple channels.

[Canva](https://www.canva.com/pricing/) is free, or $144 annually for Pro, with far more templates and creative control. [Microsoft 365 Personal](https://www.microsoft.com/en-us/microsoft-365/buy/compare-all-microsoft-365-products) costs $9.99 monthly or $99.99 annually and includes Word; [Adobe Express](https://www.adobe.com/express/pricing) is free or $9.99 monthly. All are better general design tools. The entrant's decisive reason is a weekly form that preserves recurring blocks and outputs a copier-ready bifold without arranging panels; the discussion supports that layout friction, while preference for a constrained $19 tool remains unverified.

## How it makes money

Proposed pricing is one free issue, then $19 monthly. Fifty-three active churches produce $1,007 monthly revenue. Estimated hosting, email, storage, monitoring, and payment fees are $70–$150 monthly; revenue is not profit.

At an assumed conservative 2% qualified-visitor conversion, 2,650 monthly visits are needed to hold 53 accounts before churn; at an optimistic 8%, 663. For outreach, an assumed 3% conversion requires 334 tailored contacts for ten customers; 10% requires 100. Budget 25–35 owner hours monthly for 100–150 researched contacts and examples, plus 13–17 for maintenance and support. Search pages about the shutdown and referrals between church administrators could continue acquisition, but neither traffic nor retention is established.

## The riskiest assumption

The killing belief is that small churches will pay $19 rather than rebuild once in Word or Canva. In one week, invite 80 public-contact churches that publish a current weekly PDF and still mention Publisher or request a replacement. A qualified administrator supplies the real content for next Sunday's issue and personally completes the structured prototype. Pass if 12 complete it, eight produce a usable print without layout help, six say it saves at least 20 minutes, and three make a real $19 purchase commitment without payment collection. Fail if 12 complete but fewer than six save 20 minutes or none commits. Fewer than 12 completions is an inconclusive channel test; ask committed churches after four Sundays whether they would renew.

## What I rejected

- An overhead-bin stroller affiliate checker failed standalone value and acquisition because recent search results already contain several airline-by-airline checkers and affiliate comparisons.
- A school-uniform resale marketplace failed the business-feasibility gate because useful inventory requires school-by-school liquidity while established free marketplaces already cover thousands of schools.

## The part I would argue against

A sceptic would say Word and Canva are already cheap or free, a bulletin template only needs rebuilding once, and Church Bulletin Software already serves anyone who wants a dedicated workflow. That is stronger than a generic competition objection: the proposed product may save too little after week one, and supporting printer quirks could consume a $19 margin. A test is still warranted because Publisher disappears within days, the task recurs weekly, administrators describe the layout friction, and the direct competitor's $39 price shows this outcome is sold separately. Abandon it if real users do not save 20 minutes or none of 12 makes the price-aware commitment.

The prior benchmark is **Give Every Player Their Game Photos** (`2026-09-26-evening-jersey-photo-galleries.md`). Test this bulletin builder first because the verified deadline creates immediate reachable intent and one retained church is recurring revenue; the photo sorter has a clearer demonstration but seasonal one-time sales and child-photo trust work. Put the photo idea first if fewer than three churches commit here, or if its own test gets three of 12 teams to commit at $24.

## Sources

- https://support.microsoft.com/en-us/publisher/microsoft-publisher-will-no-longer-be-supported-after-october-2026 — official dates, access consequences, and migration advice
- https://www.reddit.com/r/churchtech/comments/1vnlmjo/publisher-substitute-for-bulletins-and-newsletters/ — church user's Canva workload and booklet-layout friction
- https://churchbulletinsoftware.com/pricing — direct competitor's weekly workflow, prices, and migration offer
- https://www.canva.com/pricing/ — free and Pro substitute terms
- https://www.microsoft.com/en-us/microsoft-365/buy/compare-all-microsoft-365-products — Word bundle and current prices
- https://www.adobe.com/express/pricing — free and premium design substitute prices
- https://www.umc.org/find-a-church — official directory of thousands of congregations
- https://www.episcopalchurch.org/find-a-church/ — official congregation finder and stated directory scale
