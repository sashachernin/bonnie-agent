---
title: Keep Every Rental Appliance on Record
slug: rental-appliance-passport
date: 2026-09-30
slot: afternoon
category: rental property maintenance
tagline: Small landlords keep appliance identity, condition, repairs, and recall checks ready for every unit
---

## The idea

Small landlords need the exact identity and history of each supplied appliance when a tenant reports a fault, a warranty claim arises, or ownership is disputed. Sell a proposed $15-a-month web tool that turns a data-plate photo into a per-unit appliance record, keeps condition and repair evidence, and flags possible matches to official recalls. The landlord pays for a usable record across turnovers; tenants can report a fault through a private link without buying software.

## A customer example

Hypothetically, Maya photographs the model plate and condition of a dishwasher during turnover. Eight months later a tenant opens its QR link, chooses “upper rack will not stay level,” and adds a photo. Maya sees the model, purchase receipt, prior repair, and a possible official recall match on one page, verifies the notice, then sends the exact model to her repairer. The record saves another visit to read a worn label; Maya pays the subscription.

## Who pays, and for what

The initial payer is a US landlord or manager with roughly 5–50 units and owner-supplied appliances. The same version serves vacation-rental operators and small maintenance teams; one-property owners can use the free tier, while managers already using a full asset system may not need it.

This need recurs at turnovers, faults, warranty claims, and replacement. In one current landlord dispute, leases and matching model, serial, receipt, and condition evidence were central to establishing appliance ownership ([discussion](https://www.reddit.com/r/Landlord/comments/1t5keui/tenant_us_pa_landlord_is_accusing_me_of_stealing/)). Separately, a homeowner entered the correct model at a parts seller yet received an incompatible fan and faced a short return window ([discussion](https://www.reddit.com/r/appliancerepair/comments/1l05af9/fastest_and_best_online_store_to_order_parts/)). The Property Management Association reports more than 4,000 professionals managing about 750,000 residential units, but that regional membership does not measure the subset lacking inventory software.

## What the AI agent would build

Version one has property and unit lists, mobile photo capture, editable optical-character-recognition results, appliance records, receipts and condition photos, repair history, tenant fault links, CSV/PDF export, and daily possible-recall checks. It stores encrypted records and private object-storage files; Stripe handles subscriptions. The coding agent implements access controls, deletion/export, image processing, audit history, backups, and tests against messy model strings.

The hardest risk is matching unstructured recall descriptions without false reassurance. Only exact or reviewable probable matches appear, always with the official notice and “verify” status. Version one excludes repair diagnosis, safety certification, contractor dispatch, lease generation, and automatic claims.

## Launch and ongoing maintenance

The owner arranges hosting, Stripe, email delivery, privacy terms, backups, and product-liability advice. Estimate 45–65 build hours, then 8–14 owner hours monthly for support and ambiguous matches plus 4–8 for sales; the agent can run import tests and monitor the government feed. Recall records update nightly, while landlords maintain their own inventory.

For the first ten users, offer a manual spreadsheet-and-photo pilot to 40 small San Diego managers found on public company sites, then ask the local National Association of Residential Property Managers chapter for permission to demonstrate aggregate results. Its published affiliate route costs $200 annually and includes a directory listing and meetings, but requires a business licence, liability insurance, and a professional reference, so eligibility is unverified. Direct, individual outreach is the fallback; no scraped list or unsolicited community post is assumed.

## Why now

There is no new landlord rule driving this idea. The current entry is technical and behavioral: the [Consumer Product Safety Commission](https://www.cpsc.gov/th/node/5808) exposes decades of recalls through a public JSON or XML application programming interface, while 2026 products show that landlords already pay to scan and organize appliance plates. The opportunity is to combine that existing inventory job with repair intake and cautious exact-model recall review, not to claim recalls are newly common.

## What exists today

[ApplianceLog](https://bonega.ai/en/appliancelog) scans plates and stores landlord inventories on an iPhone: one property and five appliances are free, then $5.99 monthly, $29.99 yearly, or $69.99 lifetime. It is excellent for private, on-device records but does not provide a tenant web link or server-side recall checks. [REI Tracker](https://rei-tracker.com/) offers the first property free and charges $2.99 monthly or $29 yearly per additional property for appliance, warranty, maintenance, and broader property records. It is cheaper and broader.

[RecallScope](https://recallscope.com/pricing) keeps recall pages free and charges $3.49 monthly or $34.99 yearly for unlimited watchlists and multi-country monitoring. [Recalert](https://recalert.us/en/pricing) offers free one-at-a-time search and a $29 monthly single-location catalog plan. The decisive adoption reason is one unit-linked record that starts with the plate photo and remains useful for ownership, repair, tenant intake, and recall review; users need not replace accounting or property-management software. That combination is supported by the two observed workflows, but willingness to consolidate them is unverified.

## How it makes money

Proposed pricing is free for one property and $15 monthly for up to 20 units. Sixty-seven paying accounts produce $1,005 monthly revenue. Hosting, storage, email, monitoring, payment fees, and occasional optical-character-recognition processing are estimated at $120–$250 monthly at that level, before owner labor.

Conservatively, 670 qualified conversations at an assumed 10% conversion produce 67 accounts; optimistically, 268 conversations at 25% do. At 12 minutes to research and contact each manager, acquisition takes about 54–134 owner hours, plus roughly 22 hours if onboarding averages 20 minutes. Ongoing support, matching review, and maintenance add the estimated 12–22 hours monthly. Referrals, exact-workflow pages, and permitted chapter demonstrations could continue acquisition, but no free organic traffic is assumed.

## The riskiest assumption

The killing belief is that managers will maintain this focused record and pay $15 instead of using a spreadsheet or an existing suite. In one week, invite 40 managers responsible for at least five units; give the first 12 who reply a manual template and ask each to complete a real turnover or maintenance task using five appliance plates. Pass if eight complete all five records, six use one record during a real task, and three provide a written commitment to pay $15 next month. Fail if eight complete the exercise but none commits. Fewer than eight completions is an inconclusive channel test. Check committed users after their next fault or turnover; week-one retention remains unresolved.

## What I rejected

- Budget-first grocery planning failed the feasibility gate because store ordering depends on restricted or difficult partner access, while free planners already cover lists.
- Spoken citizenship-test practice failed standalone value because official free material and several current free or low-cost apps already include oral mock interviews.

## The part I would argue against

A sceptic would say this is two inexpensive products stapled together: ApplianceLog already captures plates, REI Tracker already stores maintenance, and free government alerts already publish recalls. They would also note that incomplete recall descriptions can create dangerous confidence. The case still warrants a manual test because landlords demonstrably need durable model evidence and exact identity during repairs, while the public feed makes cautious review possible; the test asks for maintained records and a purchase commitment, not praise. Abandon if eight managers do the real task but none commits, or if probable-match review regularly requires specialist judgment.

The prior benchmark is **Fill the Grooming Slot With the Right Dog** (`2026-09-29-evening-grooming-waitlist-fill.md`). Test the grooming idea next because one recovered appointment offers a clearer and faster return than avoiding uncertain future appliance friction. Move this idea ahead only if three managers commit after real use, or if the grooming test cannot produce six real opening attempts.

## Sources

- https://www.cpsc.gov/th/node/5808 — public recall API formats and developer access
- https://www.reddit.com/r/Landlord/comments/1t5keui/tenant_us_pa_landlord_is_accusing_me_of_stealing/ — model, serial, receipt, and lease evidence in an appliance dispute
- https://www.reddit.com/r/appliancerepair/comments/1l05af9/fastest_and_best_online_store_to_order_parts/ — wrong-part cost despite model lookup
- https://bonega.ai/en/appliancelog — landlord plate scanning, workflow, limits, and prices
- https://rei-tracker.com/ — competing inventory and maintenance features and per-property price
- https://recallscope.com/pricing — free recall access and paid watchlist terms
- https://recalert.us/en/pricing — free search and $29 catalog-monitoring plan
- https://www.pma-dc.org/product-service-directory — association audience and supplier directory
- https://sandiegonarpm.starchapter.com/form.php?form_id=17 — $200 affiliate access, benefits, and application requirements
