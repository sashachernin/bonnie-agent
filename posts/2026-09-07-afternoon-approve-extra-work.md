---
title: Get Extra Work Approved
slug: approve-extra-work
date: 2026-09-07
slot: afternoon
category: freelancer workflow software
tagline: Freelancers turn an extra client request into a priced approval and payment link before doing the work
---

## The idea

A freelancer midway through a fixed-price project gets asked for “one quick change” that was not in the agreement. Instead of absorbing the work or starting an awkward email negotiation, they open a short form that turns the request into a clear change page: what changed, added price, added time, and what remains unchanged. The client can approve it and pay a deposit from the same link. The software preserves a dated record and produces a PDF for both sides.

## A customer example

Hypothetically, a designer agreed to deliver a five-page website, then the client asks for a booking system. The designer finds the tool through a free “scope change template” search page, pastes the original deliverable, describes the booking addition, enters $600 and three extra days, and chooses a 50% deposit. In two minutes the tool emails a branded review link. The client clicks approve, pays through the designer’s Stripe link, and both receive a PDF showing the original scope, the addition, price, schedule change, timestamp, and approval record; the designer starts with less ambiguity and $300 collected.

## Who pays, and for what

The initial payer is a solo web developer, designer, marketer, writer, or video producer doing fixed-price client projects. They pay to prevent informal requests from becoming unpaid hours and to avoid composing a new document each time. This is recurring within project work, although not every freelancer gets a change on every project.

The same first version can serve small agencies and independent trades that already have a written project scope; it is not for hourly engagements, marketplace-only jobs whose terms must stay inside the marketplace, or regulated contracts needing specialist review. Demand is supported by separate freelancer discussions: one group describes formal approval as what removes the grey area, while an [Upwork freelancer reports refunding a $550 project after the scope expanded](https://www.reddit.com/r/Upwork/comments/1qnkjah/fixedprice_project_went_sideways_scope_creep/). The reachable audience is substantial but broader than the true target: Upwork estimates roughly [20 million US skilled knowledge freelancers](https://www.upwork.com/research/future-workforce-index-2025), while only the fixed-price, direct-client subset is relevant.

## What the AI agent would build

Version one has a dashboard, project setup, a change-request form, a client review page, and a PDF/archive screen. The backend stores the original-scope excerpt, revisions, price and schedule deltas, delivery events, approval timestamp, IP address, and a cryptographic hash of the accepted text. It sends transactional email and can attach a freelancer-created Stripe Payment Link; Stripe officially supports [creating these links through its API](https://stripe.com/payments/payment-links).

The coding agent can implement and test authentication, templates, immutable approval versions, PDF generation, webhooks, exports, deletion, and backups. The hardest risk is producing a trustworthy audit trail through retries, bounced email, and edited drafts. Version one excludes legal advice, contract generation, automatic judgment about whether a request is out of scope, escrow, accounting, and holding client funds.

## Launch and ongoing maintenance

The owner arranges hosting, a database, email delivery, Stripe billing for the software itself, terms and privacy pages, and support email. Routine work is monitoring bounced messages and webhooks, restoring failed PDFs, handling deletion requests, patching dependencies, and helping users correct a recipient address; the AI can maintain tests and diagnose failures.

For the first ten users, publish free, genuinely useful change-order templates for web design, video, and marketing, then ask organizers of Freelancers Union meetups to share a no-cost template workshop and participate in scope-creep threads where promotion is allowed. This is a specific concentration of prospects: Freelancers Union says it has [500,000-plus members and meetups in nearly 25 cities](https://membership.freelancersunion.org/join/). Search traffic and organizer cooperation remain unproven.

## Why now

There is no new law or platform capability creating this need in September 2026. The timely entry point is narrower: recent discussions still show freelancers losing money to expanding scopes, while broad client-management suites carry meaningful recurring prices. HoneyBook currently starts at [ $29 per month billed yearly](https://www.honeybook.com/pricing), and PandaDoc’s editable paid plan starts at [$19 per month billed yearly](https://www.pandadoc.com/pricing/). A tool that works beside an existing invoice or project system, without migration or another monthly subscription, is testable now. That is an entry hypothesis, not proof that buyers want a separate product.

## What exists today

StopScopeCreep is the closest direct substitute: its maker describes one-click change requests, revision tracking, a client portal, and a price of [free for one project or $9 monthly](https://www.reddit.com/r/micro_saas/comments/1rbwfok/i_made_a_scope_creep_management_tool_for/). Its scope is already close, and the launch post had no comments, which is a serious warning rather than evidence of traction.

HoneyBook includes contracts, proposals, invoices, payments, and a client portal from [$29 monthly when billed yearly](https://www.honeybook.com/pricing); it is better for someone wanting an entire client system. PandaDoc offers 60 documents a year free, then Starter at [$19 monthly billed yearly](https://www.pandadoc.com/pricing/); it is better at general document editing and signatures. Docusign Personal is [$11 monthly](https://ecom.docusign.com/en-US/plans-and-pricing/esignature) for five envelopes a month and has the stronger signature brand and audit tooling.

The proposed product wins only if per-project pricing, a purpose-built before/after scope view, and deposit handoff make it faster than adapting a generic document. It does not require switching systems. Free e-signatures and the direct competitor mean the workflow advantage must be demonstrated, not asserted.

## How it makes money

Proposed pricing is one free project, then $5 for each additional active project, with unlimited change requests in that project. The upgrade trigger is a real out-of-scope request with money at risk. At 200 paid projects per month, revenue is $1,000; this is revenue, not profit, and it requires a continuing supply of new projects because purchases are episodic.

At that volume, hosting, database, storage, monitoring, and transactional email should be roughly $50–$150 monthly as an estimate, plus payment processing. Stripe’s published US card rate starts at [2.9% plus 30 cents](https://stripe.com/pricing), so 200 separate $5 purchases would cost about $89 before taxes, refunds, or international fees. Continued acquisition would use occupation-specific template pages, referrals printed on client PDFs, and repeated partnerships with freelancer groups. None of the traffic or conversion assumptions is verified.

## The riskiest assumption

Freelancers must prefer a dedicated $5 workflow over email plus a free e-signature tool. The cheapest one-week test is a clickable mockup and sample PDF, posted with moderator permission in one freelancer community and shown at one meetup: invite people with a current fixed-price project to create a real draft free, then ask for a $5 preorder before sending. Abandon if fewer than 10 of 100 qualified visitors create a draft or none attempts to pay.

## What I rejected

- Home-maintenance reminders failed the standalone-value case: current discussions show the pain, but calendars work for many users and numerous near-identical new apps make paid acquisition hard to justify.
- Constraint-aware classroom seating charts failed the economics case: teachers report a recurring puzzle, but several current browser tools already solve keep-apart, front-row, and room-layout constraints for free.

## The part I would argue against

This may be a document template masquerading as software. A careful freelancer can send a detailed email, PandaDoc supplies free signatures, and a nearly identical $9 product launched to silence. Those facts could mean the painful part is enforcing boundaries, not preparing paperwork, so software will not change behavior. A cheap test remains worthwhile because multiple freelancers independently describe formal, priced approval as their working remedy and one recovered change can dwarf $5; if users complete the mockup but return to email or refuse the small charge, the idea should be dropped.

## Sources

- https://www.reddit.com/r/Freelancers/comments/1pp7hwo/how_do_you_guys_deal_with_scope_creep/ — practitioners’ prevention and approval workflows
- https://www.reddit.com/r/Upwork/comments/1qnkjah/fixedprice_project_went_sideways_scope_creep/ — a concrete loss after scope drift
- https://www.reddit.com/r/micro_saas/comments/1rbwfok/i_made_a_scope_creep_management_tool_for/ — closest direct competitor, price, and weak launch response
- https://www.upwork.com/research/future-workforce-index-2025 — skilled-freelancer audience estimate and methodology
- https://membership.freelancersunion.org/join/ — membership size and meetup channel
- https://www.honeybook.com/pricing — current suite price, features, and customer count
- https://www.pandadoc.com/pricing/ — free allowance and paid document prices
- https://ecom.docusign.com/en-US/plans-and-pricing/esignature — signature plan prices and envelope limits
- https://stripe.com/payments/payment-links — payment-link API feasibility and fees
- https://stripe.com/pricing — standard US processing rate
