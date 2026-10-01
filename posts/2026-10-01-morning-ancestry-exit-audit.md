---
title: Save the Records Behind Your Family Tree
slug: ancestry-exit-audit
date: 2026-10-01
slot: morning
category: genealogy archiving
tagline: Ancestry users see what their tree export misses and save irreplaceable records before cancelling
---

## The idea

Family-history researchers who plan to cancel Ancestry need to know whether their years of attached records will still be usable offline. Sell a proposed $19 browser-based exit audit that reads their official family-tree export locally, inventories people, sources, notes, and media references, then produces a prioritized download checklist and a browsable archive. The customer pays once; the business never needs their Ancestry password or automates access to Ancestry.

## A customer example

Hypothetically, Ellen sees a $499 All Access renewal and decides not to renew. She finds a page explaining what a GEDCOM family-tree file preserves, buys the audit, and drops her downloaded `.ged` file into the browser. In under a minute she sees 143 cited records but only 38 locally matched files, works through links while her membership remains active, and exports an encrypted archive index plus a missing-items report. She still chooses whether to download each permitted record; the $19 purchase pays this business.

## Who pays, and for what

The initial buyer owns an Ancestry tree, has attached records or photos, and is approaching cancellation or a renewal decision. The same first version can audit exports from other services that produce standard GEDCOM files, but it cannot recover media the user no longer has permission to view.

This is an episodic but consequential job. Separate current discussions describe a Preserve My Tree increase, an All Access renewal reaching $499, and surprise that exported trees lack usable media. Ancestry's own help says owners can download a GEDCOM file; its international help states that the file contains text, not the photos or media themselves. The evidence supports the preservation need, although it does not measure how many cancellers would pay instead of following a checklist manually.

## What the AI agent would build

Version one is a static web app with an explainer, checkout, local file picker, audit results, record checklist, file-matching screen, and HTML/CSV export. JavaScript parses the GEDCOM in the browser, counts citations and media references, matches files the user selects by name and identifier, flags unsupported fields, and stores progress in an encrypted local package. A small backend validates a payment token and serves the app; it receives no tree data.

The coding agent implements parsers against anonymized fixtures, large-tree tests, clear failure messages, and deletion instructions. The hardest risk is inconsistent vendor-specific GEDCOM data, so the report distinguishes “referenced,” “matched,” and “unknown” rather than promising a complete backup. Version one excludes tree editing, DNA, automatic record downloads, cloud storage, and legal claims about reuse rights.

## Launch and ongoing maintenance

The owner arranges hosting, Stripe, privacy terms, support email, and test trees whose owners have consented. Budget 35–50 build hours, then 6–10 owner hours monthly for support and new export variants; the agent can maintain parser tests. Two hours monthly should refresh cancellation instructions and prices.

For the first ten users, buy one $50 ConferenceKeeper email sponsorship after manually testing the report. Its published rate card says the weekly newsletter reaches 6,600 genealogists, accepts relevant products, and sells a non-member sponsorship for $50. The ad should offer ten free supervised audits to people cancelling within 30 days, not claim automatic rescue. Reddit is not a fallback because r/Genealogy bars advertising. A verified fallback is ConferenceKeeper's $50 one-month sidebar placement; actual conversion remains unknown.

## Why now

The preservation need is old, but the buying prompt is current. [Ancestry now lists](https://www.ancestry.com/c/allproducts) All Access at $499 yearly and $59.99 monthly, while 2026 users report higher renewals and reduced free-account usefulness. The load-bearing fact is verified: [Ancestry's export guidance](https://help.ancestry.fr/hc/fr-fr/articles/53933352542867-Importer-et-exporter-des-arbres-g%C3%A9n%C3%A9alogiques) says its GEDCOM export does not contain photos or similar media. The entry route is a focused audit offered at the moment of cancellation, not a claim that genealogy software is new.

## What exists today

[Gramps](https://www.gramps-project.org/wiki/index.php/Download) is free, powerful desktop software that imports GEDCOM, manages media, and warns that GEDCOM alone is a rudimentary archive. [RootsMagic 11](https://www.rootsmagic.com/) costs $39.95 once and brings data from Ancestry into a full offline research program. Family Tree Maker 2024 is $80 from its [official US store](https://www2.mackiev.com/store_us.html?productTab=tpsbutton) and offers Ancestry synchronization; it is the strongest substitute for downloading a whole working tree.

Those products are better for continuing research. This product can win only at the narrower job: open one official export without installing a genealogy suite, show exactly what is missing, and leave a checklist before cancellation. Current users' surprise about absent media supports that reason, but whether they value guidance at $19 is unverified.

## How it makes money

Proposed price is $19 per audit with free re-runs for 30 days. Fifty-three sales yield $1,007 revenue. At that level, hosting, email, payments, and monitoring are estimated at $70–$140 monthly; revenue is not profit.

A conservative scenario is 5,300 qualified visits at an assumed 1% purchase rate; an optimistic one is 1,325 visits at 4%. The first $50 newsletter test reaches a published 6,600 recipients, but opens, qualified intent, and purchases cannot be assumed. If 53 sales require 1,325–5,300 visits, growth needs repeated permitted newsletter placements, search pages for concrete export questions, and referrals from genealogy educators. Estimate 12–20 owner hours monthly for one article, two placements, support, and updates, plus 5–9 minutes of support per buyer. A low-ticket product fails if most buyers require live migration help.

## The riskiest assumption

The killing belief is that people close to cancellation will pay $19 for confidence and a checklist rather than install Gramps or buy a syncing program. Within one week, recruit through the proposed ConferenceKeeper placement 30 tree owners renewing or cancelling within 30 days who have at least 20 attached records. Manually produce the real audit for the first 15 and show the $19 price before delivery. Pass if ten finish checking their tree and four make a written commitment to buy the delivered audit at $19; fail if ten finish but none commits. Fewer than ten completed audits is an inconclusive channel test. Also ask after cancellation whether the archive opened successfully; retention is not relevant, but delivered preservation remains unresolved in week one.

## What I rejected

- A personal espresso dial-in helper failed standalone value because free trackers already cover the workflow and observed users note that settings do not transfer reliably even between identical equipment.
- Printable race pace bands failed economics because several polished generators are free and waterproof custom bands already sell for about $10, leaving little room for paid acquisition.

## The part I would argue against

A sceptic would say this is a $19 tutorial beside free Gramps and a $39.95 RootsMagic license, while the truly valuable automatic media transfer is already handled by Family Tree Maker. That is the right objection: the audit deliberately avoids automated access, so it reduces uncertainty but does not eliminate manual downloading. It still deserves one cheap test because official exports omit media, multiple users discover that too late, and current subscription prices make an exit decision financially salient. Abandon if ten qualified users complete an audit and none commits at $19, or if more than three of 15 need bespoke file recovery.

The prior benchmark is **Buy One Bat for Both Teams** (`2026-09-30-evening-one-bat-both-teams.md`). Test this archive audit next: its $1,000 milestone needs 53 purchases rather than 125 affiliate sales, and a verified $50 channel reaches the exact hobby, while the bat idea's league placements and required traffic remain unverified. Move the bat test ahead if this cannot recruit ten qualified cancellers or if six users choose existing desktop software after seeing the audit.

## Sources

- https://www.ancestry.com/c/allproducts — current membership prices and renewal terms
- https://help.ancestry.com/hc/en-us/articles/53933330503187-Requesting-a-Download-of-Your-Account-Data — official owner-only GEDCOM download process
- https://help.ancestry.fr/hc/fr-fr/articles/53933352542867-Importer-et-exporter-des-arbres-g%C3%A9n%C3%A9alogiques — official statement that exported GEDCOM omits media
- https://www.reddit.com/r/Ancestry/comments/1rmje1b/preserve_my_tree_minimum_ancestry_subscription/ — price-change reaction and offline-backup behavior
- https://www.reddit.com/r/Genealogy/comments/1vl34wi/ancestry_membership_hike/ — current $499 renewal discussion
- https://www.reddit.com/r/Genealogy/comments/1l5hy1n/ — user confusion about exporting photos
- https://www.gramps-project.org/wiki/index.php/Download — free substitute and GEDCOM archive warning
- https://www.rootsmagic.com/ — $39.95 offline substitute and Ancestry import features
- https://www2.mackiev.com/store_us.html?productTab=tpsbutton — Family Tree Maker price and sync substitute
- https://conferencekeeper.org/wp-content/uploads/2024/12/ConferenceKeeper-Advertising-Information-01-2025.pdf — verified newsletter audience, eligibility, and $50 placement
- https://www.reddit.com/r/Genealogy/comments/1mqcl0e/please_read_the_updated_rules_for_rgenealogy/ — community advertising restriction
