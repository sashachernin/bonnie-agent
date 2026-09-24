---
title: Fit an Obituary to the Family Budget
slug: obituary-budget-cutter
date: 2026-09-24
slot: evening
category: memorial publishing
tagline: Families shorten a finished obituary to a newspaper budget without losing names, dates, or service details
---

## The idea

Families who have written an obituary can face a surprisingly large newspaper quote and must decide what to cut while grieving. Sell a $12 private editing pass that turns their draft into three shorter versions, shows every omitted fact, and links back to the newspaper's live price checker. The family chooses and approves every word; the business never submits or publishes the notice.

## A customer example

Hypothetically, Dana pastes her father's 620-word obituary, selects the Houston Chronicle, and enters the $900 quote shown in its portal plus a $500 budget. She locks names, dates, service information, and a favourite story. Within two minutes she receives progressively shorter drafts, a side-by-side list of removed sentences, and instructions to paste each into the Chronicle portal for the authoritative price. Dana buys the $12 export only after previewing the shortest version and keeps the full original for the funeral-home page.

## Who pays, and for what

The initial customer is a US family member who already has a draft and a print-newspaper quote above budget. The same first version serves funeral celebrants and funeral-home staff preparing notices, but excludes obituary submission, factual research, legal notices, and writing from an empty form.

The need is episodic but continuously renewed. In a September 2026 discussion, an Albany family said it tried to condense a life after receiving a roughly $1,000 quote; other participants reported $400, $750, and $1,500 experiences and suggested pairing a brief print notice with a full funeral-home version ([discussion](https://www.reddit.com/r/Albany/comments/1uq991v/newspaper_obituaries/)). Houston Chronicle officially charges $12.75 per printed line and updates the price as text is edited ([FAQ](https://ezads.hearst.com/obits/houston/info/faqs.htm)). These signals establish painful editing and real spending, not willingness to pay $12 for this tool.

## What the AI agent would build

Version one is a paste-in editor, a checklist for facts that must remain, a budget and newspaper selector, three previews, an omission ledger, and Stripe checkout for copy and document export. A small database stores checked newspaper rules and source dates; drafts expire automatically after 24 hours. A bounded language-model call may compress only supplied facts, while deterministic checks compare all names, numbers, dates, URLs, and service details against the original. If checks fail, the draft is withheld and the user gets a manual sentence-cut view.

The coding agent builds those checks, deletion, audit fixtures, and a Houston-first rules page. The hardest risk is estimating printed lines because the newspaper's own typesetting is authoritative. Version one therefore uses the family's real portal quote and requires a final portal check; it excludes promises of an exact bill, memorial hosting, genealogy, photo editing, and publication.

## Launch and ongoing maintenance

The owner arranges hosting, Stripe, a language-model account, privacy terms, and a correction address. Estimate 35–50 build hours, then 6–10 hours monthly to recheck supported papers, four for support and deletion exceptions, and 15–25 for acquisition pages and partnerships. The agent can flag changed rate pages; the owner verifies meaning.

For the first ten users, send 40 permission-based invitations to independent funeral celebrants and funeral homes with public business contacts, offering one free, private comparison for a current family. Search is the longer route: “how much does a Houston Chronicle obituary cost” currently surfaces the official portal and generic cost articles, so a source-dated page showing how line pricing changes a real draft can answer the next step. Ranking and partner response are unverified; the fallback is ten no-data synthetic demonstrations for celebrants, not community posting.

## Why now

The underlying need is not new. The timely signal is the September 2026 Albany discussion showing current quote shock and active attempts to condense notices, while Legacy published a July 2026 explanation that newspaper cost is often driven by lines and that editing content controls the bill ([Legacy](https://www.legacy.com/contact/en/articles/10752883-how-much-does-an-obituary-cost)). Current low-cost text models make three bounded drafts cheap, but the entry case is the current cost problem, not artificial intelligence itself.

## What exists today

[DeathNote](https://deathnote.ai/pricing) offers obituary writing free with two daily artificial-intelligence actions and charges $0.99 for extras. [Our Forever Words](https://ourforeverwords.com/pricing) costs $14.99 for a 400–600-word obituary or $19.99 with one 150–250-word newspaper version. [MemorialSuite](https://www.memorialsuite.com/) charges $79 once for an obituary, program, and eulogy bundle. The Houston Chronicle's own portal is free to use and is the strongest cost authority because it reveals the live bill.

Those substitutes are better for writing from scratch, full memorial bundles, or final pricing. The decisive reason to try this product is narrower: it starts with the family's approved words, cuts toward their actual quote and budget, and exposes every removed fact before export. Current families demonstrably try to condense notices because of price, but whether this audit is preferable to free manual editing remains unverified.

## How it makes money

The proposal is one free watermarked preview and $12 for all drafts, the omission ledger, and editable downloads. Eighty-four purchases produce $1,008 monthly revenue. At an assumed conservative 2% purchase rate, that needs 4,200 qualified visitors; at an optimistic 8%, 1,050. A partner route would need, for example, 20 active celebrants each referring an assumed four purchasers monthly plus four direct sales; both referral rate and conversion are hypotheses.

Assume a 2,000-token input and 2,000-token output. GPT-5 mini's official rates of $0.25 and $2 per million tokens imply under half a cent per generation before retries ([pricing](https://developers.openai.com/api/docs/models/gpt-5-mini)); budget $0.10 per purchase, about $1 payment processing, and $75 monthly hosting and monitoring. At the milestone, allow 20–30 owner hours for outreach and source pages, 6–10 for rate checks, and 6–10 for support and refunds. Revenue is not profit. Growth requires additional source-checked paper pages and referrers, not assumed free organic traffic.

## The riskiest assumption

The killing belief is that families with a live over-budget quote will pay $12 for audited compression instead of cutting manually or skipping print. In one week, ask 30 independent celebrants or funeral homes through public business contacts to invite qualified families who already have a draft and quote at least $200 above budget; do not collect sensitive text. Show a synthetic before-and-after and a real $12 purchase-commitment button that records intent without charging. Pass if at least ten qualified decision-makers view it and three request the private editing pass at $12; fail if ten view it and none commits. Fewer than ten is an inconclusive channel test. A later delivered-draft test must confirm that users accept a shorter version and verify it in the newspaper portal.

## What I rejected

- Personalized wedding menu cards failed standalone value because an exact spreadsheet-to-print competitor already charges only £7 and a broad wedding planner offers per-guest menus free.
- Moving-box QR labels failed the business case because several free and $10–$30 products already serve the workflow, while a current maker reports difficulty finding paying users.

## The part I would argue against

A sceptic would say the grieving family can delete paragraphs in the newspaper portal, ask the funeral director, or use a free obituary writer; a $12 intermediary adds another sensitive-data risk and cannot know the final typeset price. That objection is strong. The idea survives only as a cheap test because current families report spending real effort to condense notices after quotes in the hundreds or thousands, and the product's fact-lock and omission ledger address the particular fear of cutting the wrong detail. Abandon it if none of ten qualified families commits, or if more than one delivered draft changes a locked fact.

The prior benchmark is **Buy One Calculator for Every Exam** (`2026-09-23-afternoon-exam-calculator-match.md`). Test this obituary editor next: it has a sharper immediate savings trigger and needs 84 monthly sales rather than thousands of low-commission purchases. Move the calculator matcher back ahead if this test gets fewer than three commitments from ten qualified viewers, or if its own test produces four merchant clicks and a purchase from 12 shoppers.

## Sources

- https://www.reddit.com/r/Albany/comments/1uq991v/newspaper_obituaries/ — current quote shock, condensation attempts, and alternatives
- https://ezads.hearst.com/obits/houston/info/faqs.htm — official $12.75 per-line rate and live quoting
- https://ezads.hearst.com/obits/houston/info/pricing.htm — official length, photo, and multi-day pricing mechanics
- https://www.legacy.com/contact/en/articles/10752883-how-much-does-an-obituary-cost — July 2026 explanation of newspaper and online pricing
- https://deathnote.ai/pricing — free writing and $0.99 extra-action substitute
- https://ourforeverwords.com/pricing — $14.99 and $19.99 writing substitutes
- https://www.memorialsuite.com/ — $79 obituary, program, and eulogy bundle
- https://developers.openai.com/api/docs/models/gpt-5-mini — model capability and token prices
- https://eventmenucards.com/ — rejected £7 personalized-menu competitor
- https://boxsmartly.com/ — rejected free and $29.99 moving-label competitor
