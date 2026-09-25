---
title: Make the Family Emergency Map Together
slug: parent-emergency-map
date: 2026-09-25
slot: afternoon
category: family emergency planning
tagline: Adult children and parents organize what a helper needs without sharing every password or private document
---

## The idea

Adult children worried about an aging parent need to know whom to call and where essential records are before a hospital visit becomes a scramble. Sell a guided, browser-based interview that a parent and child complete together, producing a private detailed packet for the parent and a shorter location-and-contact map for the helper. The proposed one-time price is $29, including printable files and future updates on the same device. It organizes information the family supplies; it does not create legal documents or give medical or financial advice.

## A customer example

Hypothetically, Rosa searches Etsy for an emergency binder for her father and buys the digital kit. They sit together for 45 minutes, naming his insurer, pharmacy, accountant, recurring bills, and where the power of attorney is stored; the tool repeatedly says not to type passwords or full account numbers. Rosa's father prints his detailed packet, while Rosa receives a two-page map with contacts and document locations. Etsy collects the payment, and the business receives the sale proceeds after marketplace fees.

## Who pays, and for what

The initial buyer is a US adult child whose independently living parent is willing to prepare but has scattered records. The same first version serves spouses and other designated helpers; it does not serve families in an active crisis, people seeking legal authority, or a parent who refuses the conversation.

The underlying audience is substantial but broader than the exact buyer: AARP and the National Alliance for Caregiving estimate 63 million US adults provide care, including one in four adults ([report](https://www-pi.aarp.org/pri/topics/ltss/family-caregiving/caregiving-in-the-us-2025/)). Two current discussions independently describe searching drawers for insurance papers and struggling to locate accounts after incapacity ([document discussion](https://www.reddit.com/r/AgingParents/comments/1t1slp3/files_and_account_documents_are_a_mess/), [emergency discussion](https://www.reddit.com/r/AgingParents/comments/1swexr1/difficulty_in_locating_needed_information_in/)). They also show that family cooperation, not merely stationery, limits the audience. Paid products and a verified Etsy listing demonstrate spending, but willingness to pay for this two-copy workflow remains untested.

## What the AI agent would build

Version one is a mobile-friendly interview, progress view, live previews of the parent and helper packets, local save file, checkout, and PDF export. Conditional questions omit irrelevant pages. All answers remain in browser storage; Stripe receives payment data, while the application server receives neither answers nor PDFs. A small public database stores only purchases, template version, and support status.

The coding agent implements client-side PDF generation, accessibility, local encryption for the reusable save file, payment entitlement, and tests with fictional households. The hardest risk is making recovery understandable without creating a false sense of security. Version one excludes document uploads, cloud sharing, passwords, medication advice, wills, power-of-attorney forms, and automatic account connections.

## Launch and ongoing maintenance

The owner arranges hosting, Stripe, terms, a privacy review, and an Etsy shop. Allow an estimated 45–65 build hours, then 8–12 monthly hours for browser and PDF testing, 5–8 for support at 35 sales, and 12–20 for examples and acquisition. The owner reviews every wording change; the agent can run privacy and export regression tests.

For the first ten buyers, list an original printable interview workbook on Etsy that includes access to the generator, using the exact query “emergency binder for aging parents printable.” Results inspected for that query include a $15 seventy-page fillable template and several free caregiver sheets, so the listing must show the distinct parent-private and helper-map outputs in its first images. Etsy confirms original seller-designed digital downloads are eligible and charges $0.20 to list ([standards](https://www.etsy.com/legal/creativity/), [fees](https://help.etsy.com/hc/en-us/articles/360035902374-Etsy-Fee-Basics)). Ranking and whether a linked generator is acceptable were not verified; the downloadable workbook must be useful alone. Direct checkout from two exact-query comparison pages is the fallback, although search ranking is also unproven.

## Why now

There is no new rule creating the need. The present entry case is that the 2025 caregiving study reports 63 million caregivers, up nearly 50% since 2015, while 2026 discussions describe records scattered between paper, email, and devices. The Consumer Financial Protection Bureau also maintains role-specific guidance for people managing another person's money, underscoring that an information map is not legal authority ([guides](https://www.consumerfinance.gov/consumer-tools/managing-someone-elses-money/)). The opportunity is a focused completion workflow, not an unmet category.

## What exists today

[Clementine Creative](https://www.clementinecreativeshop.com/products/in-case-of-emergency-binder) sells a 67-page printable or fillable PDF for $17. A current [Etsy binder](https://www.etsy.com/listing/1281070361/editablefillable-in-case-of-emergency) costs $15 and offers 70 pages. [Nokbox](https://www.thenokbox.com/pages/nokbox) sells guided physical systems from $69 to $179. [Everplans](https://www.everplans.com/pricing) stores three items free or charges $99.99 yearly for unlimited storage and secure sharing. [InCaseBinder](https://incasebinder.com/) is the closest substitute at $39 once: it already creates a tailored, browser-local binder.

Those products are more established, and InCaseBinder already solves blank-template overload. The decisive reason to choose this entrant is the asymmetric output: parent and helper complete one conversation, but the helper receives locations and contacts rather than the parent's full private record. Current discussions specifically describe both the conversation barrier and unsafe password sharing. That advantage is credible but preference for it is unverified; distribution through an aging-parent-specific Etsy listing is the second, modest entry route.

## How it makes money

The proposal is $29 once. Thirty-five purchases produce $1,015 monthly revenue. For a US Etsy sale, verified base fees are $0.20 plus 6.5%; Etsy also says payment processing varies, and its US sell page states 3% plus $0.25. At those rates, base fees are about $3.21 per $29 order before taxes, advertising, refunds, or Offsite Ads. Assume $30–$80 monthly hosting and email; revenue is not profit.

At an assumed conservative 1% qualified listing-view conversion, 3,500 monthly views yield 35 purchases; at an optimistic 4%, 875 do. Neither traffic nor conversion is established. At that volume, estimate 12–20 owner hours for listing content and partnerships, 5–8 for support, and 8–12 for maintenance, or 25–40 hours monthly. Growth requires multiple truthful examples for parent situations and caregiver partnerships, not free traffic. The one-time product has continuing new households but little repeat revenue.

## The riskiest assumption

The killing belief is that families will complete this awkward conversation and value separate outputs enough to pay $29 beside free worksheets. In one week, invite 40 adult caregivers through personal contacts and permission-based replies; a qualified participant must have a willing, independently living parent and no usable emergency map. Give 12 pairs a manual version of the interview, then show both finished packets and request a written $29 purchase commitment. Pass if eight pairs finish, six give the helper map to the child, and three commit. Fail if eight finish and none commits, or fewer than four use the split outputs. Fewer than eight completions is an inconclusive channel test; annual updating remains unresolved.

## What I rejected

- Pet-sitter handoff sheets failed standalone value because current free, no-sign-up generators already create multi-pet instructions and printable PDFs.
- A native-plant availability directory failed the feasibility gate because useful inventory would demand continual manual verification, while authoritative free directories already cover nursery discovery and sponsor demand was not verified.

## The part I would argue against

A sceptic would say the closest competitor already offers a private, tailored $39 binder, while free government guides and $15 templates are sufficient. More importantly, the hard part is persuading a parent to discuss money and incapacity; software cannot fix refusal, and Etsy may deliver bargain hunters rather than collaborating families. The opportunity still merits a manual test because separate commenters describe the same record hunt, one reports irrelevant book sections, paid alternatives show real spending, and the two-copy boundary addresses a specific privacy tension. Abandon it if eight pairs finish the interview and none will commit at $29.

The prior benchmark is **Keep Your Portfolio Without the Builder Bill** (`2026-09-22-morning-own-portfolio-export.md`). Test that benchmark first: Squarespace's official export limitation and a $39 commitment make its adoption case sharper than this product's unverified preference for split packets. Move this idea ahead only if three of eight completing families commit, or if the portfolio test gets no commitments from ten owners who inspect complete conversions.

## Sources

- https://www-pi.aarp.org/pri/topics/ltss/family-caregiving/caregiving-in-the-us-2025/ — caregiver audience and growth
- https://www.reddit.com/r/AgingParents/comments/1t1slp3/files_and_account_documents_are_a_mess/ — scattered records, conversation friction, and irrelevant workbook sections
- https://www.reddit.com/r/AgingParents/comments/1swexr1/difficulty_in_locating_needed_information_in/ — emergency information problems, one-page maps, and password cautions
- https://www.consumerfinance.gov/consumer-tools/managing-someone-elses-money/ — official boundaries and fiduciary-role guides
- https://www.etsy.com/legal/creativity/ — eligibility for original digital downloads
- https://help.etsy.com/hc/en-us/articles/360035902374-Etsy-Fee-Basics — listing and transaction fees
- https://www.etsy.com/listing/1281070361/editablefillable-in-case-of-emergency — $15 seventy-page marketplace substitute
- https://www.clementinecreativeshop.com/products/in-case-of-emergency-binder — $17 printable substitute and reviews
- https://www.thenokbox.com/pages/nokbox — physical substitute prices and claimed review volume
- https://www.everplans.com/pricing — free and $99.99 yearly digital-vault plans
- https://incasebinder.com/ — closest $39 tailored, browser-local substitute
