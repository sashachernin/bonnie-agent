---
title: Find Obsolete Parts Before Other Buyers
slug: parts-hunt-board
date: 2026-09-06
slot: morning
category: procurement alert app
tagline: Repair shops import wanted part numbers and get fast alerts when affordable replacements appear on eBay
---

## The idea

Small repair shops and specialist resellers often need discontinued parts that appear unpredictably in second-hand listings. Today a buyer keeps model numbers, price ceilings, and search links in a spreadsheet, then repeats the searches or trusts slow, noisy saved alerts. This product imports that list, checks eBay on a schedule, and sends a clean alert only when a newly listed part fits the buyer's rules. It is a shared procurement board, not an automatic purchasing bot.

## A customer example

Hypothetically, a camera-repair shop needs a shutter assembly marked `1B061-123` for less than $90 delivered. Its buyer finds the app through a search for “bulk eBay part number alerts,” uploads a comma-separated spreadsheet containing that number, acceptable wording, excluded words, and maximum price, then reviews the generated searches. Ten minutes later, a scheduled check finds a new matching listing. The buyer receives an email with the photo, seller rating, item price, shipping cost, and a button to inspect and buy on eBay; the board records that another employee has claimed the lead, avoiding duplicate work.

## Who pays, and for what

The buyer is an employee or owner at a camera, audio-equipment, appliance, or machine repair shop that sources several hard-to-find parts each week. They pay to stop reopening dozens of searches and to react before scarce, sensibly priced stock disappears. A buyer checking 50 terms twice daily at one minute each would spend about 100 minutes a day; that is an illustrative calculation, not researched usage data.

## What the AI agent would build

Version one is a responsive web app with sign-up, spreadsheet import, an editable wanted-parts table, a match inbox, alert settings, and billing. Each row holds a part number, alternative phrases, excluded terms, condition, delivered-price ceiling, and status. A background queue uses eBay's Browse application programming interface, deduplicates listing identifiers, computes item plus shipping cost when available, stores only current matches and audit metadata in PostgreSQL, and sends email through a transactional mail provider. Stripe handles a proposed subscription.

The coding agent can implement and test parsing, query generation, scheduling, deduplication, permissions, retries, billing states, and mock eBay responses. The hardest uncertainty is not coding: eBay says production Buy APIs are limited release, require partner approval and contracts, and approval is not guaranteed. The owner should obtain production access before building beyond a sandbox prototype. Version one excludes other marketplaces, automatic buying, price prediction, mobile apps, and artificial-intelligence matching. Once deployed, ordinary searches and alerts run as deterministic jobs with no coding agent online.

## Launch and ongoing maintenance

The owner must arrange eBay developer and Partner Network accounts, production approval, hosting, a database, email delivery, Stripe, terms, and privacy disclosures. Monitoring should track job lag, API quota, authentication failures, mail bounces, and unusually noisy searches. Jobs retry transient failures with backoff; exhausted retries and quota pressure reach the owner. The coding agent can update dependencies, repair API-field changes, and add regression tests, while ambiguous listings remain the buyer's decision.

For the first ten users, recruit manually from repair shops that publicly list wanted parts and from recent eBay community discussions about large search lists, offering a free import and 30-day trial. The cited thread contains people already combining spreadsheets and saved searches, which makes it a specific audience, but outreach permission and conversion remain assumptions. Promotion should follow each community's rules rather than posing as a user.

## Why now

This is mostly an old need with fresh evidence, not a newly unlocked market. An August 2026 discussion describes buyers maintaining spreadsheets of exact keywords, part numbers, ranges, and links because larger search lists become repetitive; another 2026 thread describes users refreshing saved searches many times daily and even glitching the eBay app with numerous searches ([large-list discussion](https://www.reddit.com/r/eBaySellerAdvice/comments/1vjy35c/the_more_products_i_track_the_worse_ebay_search/), [obscure-listing discussion](https://www.reddit.com/r/Ebay/comments/1r6ylt9/how_do_buyers_spot_obscure_listings_that_are_just/)). eBay's current Browse API supports keyword, category, product, compatibility, and other filtered searches, making a narrow implementation technically expressible ([Browse API](https://developer.ebay.com/develop/api/buy/browse_api)).

The load-bearing claim is that a third-party app can search listings through an official interface rather than scraping. The documentation verifies the interface and a default limit of 5,000 Browse calls per day, but also says production use requires approval and is not guaranteed ([limits](https://developer.ebay.com/develop/get-started/api-call-limits), [production requirements](https://developer.ebay.com/api-docs/buy/static/buy-requirements.html)). Approval is therefore the first fact to test.

## What exists today

eBay's own saved searches are free and convenient, but the discussions show complaints about scale, noise, and timeliness. Classifindr already monitors eBay and many other marketplaces; its plans run from $4.80 monthly minimum to $9.60 Lite, $24 Standard, and $48 Pro, with one-minute eBay searches costing $11.20 each per month. It is the strongest incumbent and covers much of the proposed function.

uBuyFirst focuses on professional eBay buyers: its Lite web app starts at $19 per month and desktop product around $50, while its plan page lists $24.99 Elite and $49.99 Enterprise monthly. Distill is a general webpage monitor: free, $15 Starter, $35 Professional, or $80-plus Flexi monthly, with cloud checks as often as ten, five, or two minutes on paid tiers. The proposed gap is bulk spreadsheet import, team claiming, and a quiet parts-centric workflow at a lower price—not faster alerts or broader marketplace coverage.

## How it makes money

Proposed pricing is $12 per month for 40 hourly part searches and two users, after a ten-row free trial. Eighty-four paying shops would produce $1,008 monthly revenue. At hourly checks, 40 rows consume 960 calls per customer per day, so the default shared API allowance supports only a handful of customers; launch therefore depends on batching equivalent queries, checking lower-priority rows less often, and obtaining a higher limit through eBay's Application Growth Check. Hosting, database, email, payment fees, and monitoring might initially cost $100–$250 monthly, but that estimate excludes owner time and revenue is not profit.

## The riskiest assumption

The riskiest belief is that repair-oriented buyers value list management and team handoff enough to pay when Classifindr and eBay already alert them. In one week, make a clickable mock-up and a sample import sheet, then show it individually to 20 camera, audio, appliance, or machine-parts buyers found through public business contact pages. Ask each to import ten real wanted parts and request no payment; kill the idea unless at least five complete the import and three volunteer to pilot at $12 after seeing sample alerts. Separately, submit the production-access use case before meaningful development.

## What I rejected

A shutdown-and-migration reference site failed on economics: shutdown traffic is episodic, established alternative directories exist, and advertising would require far more traffic than a solo launch can credibly command. A Cyber Resilience Act document tracker failed the software-product gate: current compliance interpretation, customer-specific exceptions, and the consequences of wrong guidance would pull the owner toward specialist review rather than routine self-service software.

## The part I would argue against

Classifindr already offers sophisticated filters, mobile alerts, multiple marketplaces, and entry pricing below this proposal. A parts-themed interface and spreadsheet importer may be a feature, not a company; worse, eBay can reject access or constrain sorting and display. Unless interviews reveal a painful shared-workflow problem that incumbents ignore, the rational answer is to use Classifindr and keep the spreadsheet.

## Sources

- [eBay Browse API](https://developer.ebay.com/develop/api/buy/browse_api) — supported search inputs and authentication
- [eBay API call limits](https://developer.ebay.com/develop/get-started/api-call-limits) — 5,000 default Browse calls daily and growth-check path
- [eBay Buy API requirements](https://developer.ebay.com/api-docs/buy/static/buy-requirements.html) — production approval, contracts, and no guarantee
- [Large eBay search-list discussion](https://www.reddit.com/r/eBaySellerAdvice/comments/1vjy35c/the_more_products_i_track_the_worse_ebay_search/) — current spreadsheet and repeated-search behavior
- [Obscure eBay listing discussion](https://www.reddit.com/r/Ebay/comments/1r6ylt9/how_do_buyers_spot_obscure_listings_that_are_just/) — frequent refreshing and overloaded saved searches
- [Classifindr pricing](https://classifindr.com/pricing) — marketplace coverage, intervals, filters, and current plan prices
- [uBuyFirst plans](https://ubuyfirst.com/get-started/) — specialist eBay alert pricing and search allowances
- [Distill pricing](https://distill.io/pricing/) — general webpage-monitor substitute prices and frequencies
