---
title: Finish the Memorial Slideshow on Time
slug: memorial-slideshow-check
date: 2026-09-14
slot: morning
category: memorial videos
tagline: Families turn scattered photos into a checked, funeral-ready slideshow before the service
---

## The idea

The relative asked to make a memorial slideshow often has hundreds of mixed-quality photos and only days to finish. Offer a browser tool that gathers them, marks duplicates and display problems, guides a quick life-stage order, and exports a simple funeral-ready video plus a playback checklist. The family previews everything free and pays a proposed one-time $29 only to download. It is self-service software, not editing or funeral advice.

## A customer example

Hypothetically, Maya searches “make funeral slideshow from 200 photos” on Tuesday for a Saturday service. She uploads folders from three relatives, sees 14 likely duplicates and nine images too small for a large screen, sorts the rest into childhood, family, work, and later-life groups, then previews an eight-minute silent slideshow. After replacing four poor images, she pays $29, downloads an MP4 video and a one-page checklist, and tests the file on the venue’s actual television. Maya saves hours of slide-by-slide placement; her payment creates the revenue.

## Who pays, and for what

The first buyer is the English-speaking family member responsible for a photo slideshow within a week. The same first version serves celebration-of-life organizers and people preparing a remembrance for an anniversary; it does not serve elaborate films or families whose funeral home already provides a good tool.

The task is common within this audience, although its total search volume remains unverified. One organizer described 15 email threads and poor phone photos; a funeral-home employee said hundreds of images can take hours ([discussion](https://www.reddit.com/r/askfuneraldirectors/comments/1t9pots/how_are_photos_supposed_to_be_managed_we_had_a/)). Another helper struggled to age-sort 147 photos, while a separate Canva user had 235 photos and could not tell which had already been used ([sorting discussion](https://www.reddit.com/r/askfuneraldirectors/comments/1nw5s84/what_advice_would_you_give_for_a_family_friend/), [Canva discussion](https://www.reddit.com/r/canva/comments/1r9g58l/help_slideshow_hell_friends_memorial_service/)). Those are independent need signals, not a market-size estimate.

## What the AI agent would build

Version one has an upload screen, a photo-quality queue, four sortable life-stage trays, a duration preview, checkout, and a download page. Perceptual hashes flag likely duplicates; pixel dimensions, aspect ratio, and orientation flag display risks. A deterministic template renders an H.264 MP4 with title and closing slides using FFmpeg, while temporary photos and job metadata live in private object storage and a small database.

The coding agent implements resumable uploads, accessible controls, render tests, automatic seven-day deletion, and failed-render refunds. Cloudflare R2 supports temporary object storage with no egress charge and a 10 GB monthly free tier ([pricing](https://developers.cloudflare.com/r2/pricing/)). The hardest risk is dependable rendering of 200 mixed phone formats before a deadline. Version one excludes face-based age guessing, restoration, video clips, collaborative uploads, physical media, and copyrighted commercial music; it includes a small licensed instrumental set and silent export.

## Launch and ongoing maintenance

The owner arranges hosting, Stripe, storage, a rendering host, licensed music, terms, and a support inbox. The agent monitors upload failures, render time, deletion jobs, and browser fixtures. The owner spends an estimated 10–15 hours monthly testing phone formats and maintaining six concrete help pages, plus 5–10 minutes for an ordinary support case; urgent manual editing is never offered.

For the first ten users, make a no-code photo audit and sample slideshow, then request moderator permission to offer it in the three current discussions cited above to people with a real service date. Permission is unverified. The fallback is a $100 capped exact-match search test on “funeral slideshow maker” and “make funeral slideshow from photos”; this run found Canva, dedicated makers, and templates on both result sets, showing active competition but not affordable clicks or attainable ranking.

## Why now

No law or platform change created this need. The timely evidence is that families were still reporting the same photo-collection, duplicate-tracking, and playback failures in 2026, while the product can now be delivered with inexpensive temporary storage. This is an established purchase occasion, not a newly unmet market. The entry case is a deadline-first audit and venue handoff rather than another general video editor.

## What exists today

[Canva](https://www.canva.com/create/slideshows/) is free, exports high-resolution MP4 without a watermark, and has far better design tools. It remains the strongest free substitute, but a current Pro user still reported losing track of used photos.

[Memorial Video AI](https://www.memorialvideo.ai/affordable-pricing) charges $39 for a standard video, $68 with age sorting, or $25 for PowerPoint-only output; its claimed age sort can take one to eight hours. [Tribute](https://www.tribute.co/for/funeral/) starts at $35 for up to 30 minutes and excels at collecting video messages from relatives. Tukios says its established funeral-home product has made more than 2.5 million videos and averages five minutes to build, but publishes no family price ([Tukios](https://www.tukios.com/tribute-videos)). Funeral homes using it are a better option because playback compatibility is known.

The proposed tool wins a visit only when the buyer has messy photos, a near deadline, and no capable funeral-home workflow. Its decisive reason to be chosen is one pass from folder to duplicate, resolution, duration, and venue-readiness checks—the exact friction observed in the discussions—not more templates. Whether that is worth $29 remains unverified.

## How it makes money

The proposed price is $29 once, with free upload and preview. Thirty-five purchases produce $1,015 monthly revenue before refunds and costs. Assuming a 1% qualified-visit purchase rate, that requires 3,500 monthly visits; at an optimistic 4%, 875. These rates are assumptions. The purchase trigger is seeing a complete preview and a short, fixable problem list before the service.

Assume $50–$150 monthly for hosting, rendering, storage, email, and monitoring at 35 sales, plus roughly $40 in payment fees; revenue is not profit. At an assumed 20 minutes of support and exception review per buyer, 35 orders add 12 owner hours, alongside 10–15 content and maintenance hours. Search-led growth would require useful pages for specific jobs such as ordering old photos and testing a USB, then partnerships with celebrants or independent funeral homes; neither rankings nor partnerships are verified. Paid search works only if customer acquisition stays well below the roughly $25 contribution after variable costs.

## The riskiest assumption

The killing belief is that the audit and guided order are valuable enough to pull a deadline-bound family away from Canva or their funeral home and produce a $29 purchase commitment. In one week, recruit 20 people who must deliver a memorial slideshow within 14 days, recording every invitation, through permitted placements. Give each a manual audit of up to 100 photos and a watermarked sample; show the $29 export checkout but do not collect payment. Pass if 15 complete the audit, eight download the sample, and four attempt checkout. Fail if 15 complete it and fewer than two attempt; fewer than 15 qualified completions is an inconclusive channel test. Follow up after each service to confirm the sample played successfully; retention is irrelevant to this episodic purchase.

## What I rejected

- A refrigerator-filter affiliate finder failed economics because low commissions would require heavy search traffic against manufacturer finders and established affiliate comparisons.
- Classroom seating-chart software failed standalone value because several mature tools already charge only $20–$30 annually or offer capable free tiers, with no supported adoption advantage for another entrant.

## The part I would argue against

A sceptic would say this is a crowded, low-frequency task with an unbeatable free substitute. Canva already exports free videos, Tukios is easier and safer when the funeral home has it, and Memorial Video AI already addresses ordering. Search results are competitive, support is emotionally urgent, and one failed render could erase trust.

That objection limits the audience but does not erase the observed multi-hour workflow among families without a good funeral-home tool. A no-code audit can test the narrow advantage before rendering software exists. Abandon after fewer than two checkout attempts among 15 completed real audits, or if more than one sample fails the venue playback check.

The prior benchmark is **Compare the Real Cost of a Kids Party** (`2026-09-13-morning-columbus-party-costs.md`). The party directory has stronger evidence that advertisers buy placements and a clearer local channel; this idea has a more urgent user outcome and simpler ongoing editorial work, but weaker acquisition evidence. Test the party directory next. Four memorial checkout attempts from 15 completed audits, or no venue checkout attempts in the party test, would move this idea ahead.

## Sources

- https://www.reddit.com/r/askfuneraldirectors/comments/1t9pots/how_are_photos_supposed_to_be_managed_we_had_a/ — current family collection burden, staff time, poor inputs, and playback failures
- https://www.reddit.com/r/askfuneraldirectors/comments/1nw5s84/what_advice_would_you_give_for_a_family_friend/ — 147-photo ordering task and strong Tukios substitute
- https://www.reddit.com/r/canva/comments/1r9g58l/help_slideshow_hell_friends_memorial_service/ — current duplicate-tracking friction in Canva Pro
- https://www.memorialvideo.ai/affordable-pricing — one-time prices, age-sort timing, and outputs
- https://www.tribute.co/for/funeral/ — DIY prices, collaborative workflow, and downloads
- https://www.canva.com/create/slideshows/ — free MP4 slideshow capabilities
- https://www.tukios.com/tribute-videos — funeral-home workflow, adoption claim, formats, and lack of public price
- https://developers.cloudflare.com/r2/pricing/ — temporary-storage rates and egress terms
- https://ffmpeg.org/legal.html — rendering library licence considerations
