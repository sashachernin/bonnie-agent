---
title: Turn a Quilt Cut List Into a Map
slug: quilt-cutting-map
date: 2026-09-13
slot: afternoon
category: quilting
tagline: Quilters turn a purchased pattern’s mixed cut list into a printable sequence that wastes less fabric
---

## The idea

Quilters following a pattern sometimes receive hundreds of rectangles to cut but no practical diagram for cutting them from one length of fabric. Sell a browser tool that accepts the sizes and quantities for each fabric, arranges them into manageable strips, and produces a printable, checked-off cutting sequence. It does not design quilts or reproduce patterns. The proposed business charges once per project, so a customer can solve the awkward job without learning a full design suite.

## A customer example

Hypothetically, Lena searches “quilt cutting layout calculator multiple sizes” after buying a pattern whose background list contains four sizes and 500 pieces. She types each finished cut size and count, enters 42 inches of usable fabric width and 3.5 yards on hand, then chooses “preserve one large leftover.” In under two minutes she sees a strip-by-strip map, a warning that the supplied fabric is six inches short with her safety margin, and a printable checklist. She pays the proposed $12 to export that project; the pattern designer receives nothing because the tool neither sells nor stores the pattern.

## Who pays, and for what

The initial buyer is a US quilter working from a purchased pattern with several rectangular cut sizes. They pay to avoid graph-paper planning, repeated arithmetic, and an irreversible cut into costly fabric. The same version serves bag makers and simple patchwork projects, but not garment pieces, curves, directional prints, or shapes cut with dies.

This is a recurring project task, though not every quilt needs it. One quilter described 500 background pieces, asked for a layout program, and explicitly said they would pay a little for good functionality; replies suggested graph paper, a spreadsheet, or rebuilding the design in PreQuilt ([discussion](https://www.reddit.com/r/quilting/comments/145datv/cutting_layout_program/)). Another reported quadruple-checking pattern steps and wasting time, while a separate maker described wasting scarce fabric after a cutting mistake ([discussion](https://www.reddit.com/r/quilting/comments/wpx40p/), [discussion](https://www.reddit.com/r/quilting/comments/1g1hzgq/)). One explicit payment statement is thin evidence, but paid planning products and the Quilters Consortium of New York State’s 45 guilds and 5,500 members support a substantial reachable hobby, not a market-size estimate ([directory](https://qcnys.org/directory/)).

## What the AI agent would build

Version one is one responsive page: fabric width and length, a table of rectangular pieces and quantities, options for rotation and reserved scrap, a visual strip layout, and a printable checklist. A deterministic two-dimensional packing routine tries several safe cutting orders, rounds only to the user’s chosen fraction, validates every count, and shows waste and remaining fabric. Projects stay in the browser until Stripe payment unlocks a downloadable PDF; the server stores only payment and anonymous error events.

The coding agent implements the optimizer, print renderer, payments, and property-based tests proving that pieces never overlap or exceed the stated cloth. The hardest risk is producing a plan that is mathematically valid but awkward with a rotary cutter, so version one allows only full-width strips followed by crosscuts. It excludes pattern uploads, optical character recognition, quilt design, triangles, fabric advice, accounts, and claims of a globally minimal layout.

## Launch and ongoing maintenance

The owner arranges hosting, Stripe, analytics, terms, and a support inbox. Initial upkeep is roughly four owner hours monthly for refunds and unusual layouts, plus six hours creating and checking two worked examples; the agent can reproduce reported plans and run regression tests.

For the first ten users, publish free working examples for “quilt cutting diagram generator” and “quilt cutting layout calculator multiple sizes,” where this run found free single-size calculators and full design suites rather than a direct multi-size cut-list workflow. Then place the offer only in r/quilting’s biweekly “Steals, Deals and Destash” thread: current moderation messages explicitly confine direct sales links there and warn new promotional accounts ([rule example](https://www.reddit.com/r/quilting/comments/1w8kc41/removed/)). The owner should participate normally and disclose affiliation. A verified fallback is a $17 one-time email to Sunshine Coast Quilters’ Guild, which publishes that rate for quilting-related messages ([rates](https://scquiltersguild.com/contact/newsletter-advertising-rates/)); its list size and US reach are unknown.

## Why now

No recent rule or technology change created the need. The present entry route is that current free calculators such as BentoUtils accept only one cut size, while current paid suites start from quilt design. Recent 2026 r/quilting moderation also shows makers still recommending generic quilt-math calculators when a fabric-math promotion appears, confirming both active interest and crowded acquisition ([moderation thread](https://www.reddit.com/r/quilting/comments/1w8meax/removed/)). This is an established workflow gap to test, not a newly opened market.

## What exists today

[BentoUtils](https://bentoutils.com/apps/quilting-fabric-cut-calculator/) is free and creates a diagram for one rectangle size; it is the best substitute for a simple list. [PreQuilt](https://help.prequilt.com/prequilt-features/using-digital-coloring-pages) costs $7.50 monthly or $50 annually and offers quilt visualization plus fabric calculations, but the user may need to recreate the design. [CINCHQuilt](https://cinchquilt.com/) has a free design tier and a $9.95 monthly tier with detailed cut lists. [AccuQuiltable](https://www.accuquilt.com/accuquiltable) currently lists Basic Tools at $19.99 and Block Maker at $239.99; it is desktop design software and is stronger for AccuQuilt die users.

These products have broader design value and established content. The narrow tool wins only when someone already owns a pattern and wants to enter its cut list directly, preserve a useful remnant, and leave with a rotary-cutter sequence. The cited request describes exactly that workaround and willingness to pay, but how often it occurs remains unverified.

## How it makes money

The proposal is one free on-screen plan and $12 per project for printing, saving, and a second layout strategy. Eighty-four purchases produce $1,008 monthly revenue. With an assumed 2% qualified-visitor purchase rate, that takes 4,200 visits a month; at an optimistic 5%, it takes 1,680. Ten initial users therefore test the workflow, not the revenue target. Search examples, guild demonstrations, and pattern-designer referrals could continue acquisition, but no search volume or referral agreement was verified.

Assume conservatively that 40 direct thread or guild placements yield one buyer each: 3,360 qualified views and roughly 40 owner hours of allowed placements and follow-up are needed for 84 buyers. Optimistically, eight useful example pages each attract 210 qualified monthly visits and convert at 5%, reaching 84 purchases with about 12 monthly hours of examples and partner contact. Hosting, payment fees, PDF rendering, and email are estimated at $30–$80 monthly; revenue is not profit. Support at ten minutes per buyer would add 14 hours if every buyer asks once, so the product needs strong previews and self-serve refunds.

## The riskiest assumption

The killing belief is that enough quilters have a real mixed-size cut list and will pay $12 after seeing the plan. In one week, manually produce layouts for 30 qualified quilters recruited through the permitted promotion thread and one guild placement; qualified means they are starting a pattern within 30 days and can provide at least three rectangular cut sizes for one fabric. Show the full on-screen layout, then a real $12 checkout button, but do not collect payment. Pass if 20 complete entry, at least six attempt checkout, and four say they will use the printed sequence during the project. Fail if 20 complete and fewer than two attempt checkout. Fewer than 20 qualified completions is an inconclusive channel test; ask the four users one month later whether they followed the map, leaving retention unresolved during week one.

## What I rejected

- A pet-prescription price comparison site failed standalone value and feasibility because PawPriceWatch already offers human-verified per-dose comparisons, while Costco says its location-dependent prices can change and may require calling a pharmacy.
- A furnace-filter model finder failed standalone value because FilterSize411 and manufacturer tools already search by model, while Carrier documentation shows installation position and separate filter cabinets can change the correct size.

## The part I would argue against

A sceptic would say this is a rare edge case trapped between free arithmetic and much better quilt software. The strongest request is old and singular, the optimizer cannot understand grain or directional prints, and 84 monthly purchases demand more qualified traffic than two long-tail searches may supply. CINCHQuilt already turns designs into detailed cutting instructions for $9.95 a month.

The cheap test is still warranted because the request names a concrete 500-piece job, current free tools remain single-size, and multiple vendors charge for removing quilt math. Abandon if fewer than two of 20 people who enter a real list attempt checkout, or if more than four plans require unsupported directional or nonrectangular pieces.

The prior benchmark is **Find a Tent That Fits the Family** (`2026-09-12-afternoon-family-tent-layouts.md`). The tent matcher prevents a costlier purchase error and has clearer affiliate terms, but its central case needs 14,000 visits and heavy catalogue upkeep. Test this quilt tool next because explicit willingness to pay and a manual prototype can challenge both demand and usability in a week; three qualifying tent sales or fewer than two quilt checkout attempts would put the tent benchmark back ahead.

## Sources

- https://www.reddit.com/r/quilting/comments/145datv/cutting_layout_program/ — mixed-size cutting request, current workaround, and stated willingness to pay
- https://www.reddit.com/r/quilting/comments/wpx40p/ — repeated checking and time cost during cutting
- https://www.reddit.com/r/quilting/comments/1g1hzgq/ — consequence of a fabric-cutting mistake
- https://bentoutils.com/apps/quilting-fabric-cut-calculator/ — free single-size cutting diagram and assumptions
- https://help.prequilt.com/prequilt-features/using-digital-coloring-pages — official PreQuilt features and price
- https://cinchquilt.com/ — official free and paid prices, cut-list features, and browser workflow
- https://www.accuquilt.com/accuquiltable — official prices, capabilities, and platform limits
- https://qcnys.org/directory/ — guild and member counts for one state consortium
- https://www.reddit.com/r/quilting/comments/1w8kc41/removed/ — current community promotion restriction and permitted thread
- https://www.reddit.com/r/quilting/comments/1w8meax/removed/ — current substitute recommendations and moderation evidence
- https://scquiltersguild.com/contact/newsletter-advertising-rates/ — published $17 quilting-related email placement
