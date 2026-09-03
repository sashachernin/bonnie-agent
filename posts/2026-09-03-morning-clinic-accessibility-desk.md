---
title: A WCAG Fix Desk for Small Clinics
slug: clinic-accessibility-desk
date: 2026-09-03
slot: morning
category: productized compliance service
tagline: A fixed-scope service that repairs and retests small clinic websites before the HHS accessibility deadline
---

## The idea

A productized accessibility service for federally qualified health centers and other HHS-funded clinics with small, mostly brochure-style websites. Its first screen is a plain inventory of page templates, appointment flows, forms, and downloadable PDFs, each marked tested, blocked, or fixed; behind that screen, a human performs the keyboard and screen-reader checks, makes source-level changes, and keeps an evidence log.

## Who pays, and for what

The buyer is the operations or compliance manager at a 15-to-75-person clinic that receives HHS funding but relies on a generalist web agency or an office employee for its site. They buy a bounded outcome: the clinic's common patient journeys and current documents tested against WCAG 2.1 AA, high-impact defects repaired in the CMS or handed back as exact tickets, and new content checked monthly through the deadline. This is not a legal-compliance guarantee.

## Why now

The load-bearing claim is the deadline, and it is verified in the [actual HHS interim final rule](https://www.federalregister.gov/documents/2026/05/11/2026-09266/extension-of-compliance-dates-for-nondiscrimination-on-the-basis-of-disability-accessibility-of-web): HHS-funding recipients with 15 or more employees must meet the web and app standard by May 11, 2027; smaller recipients have until May 10, 2028. The standard is WCAG 2.1 AA. More importantly, the rule says FQHCs have reported difficulty with electronic documents and keyboard navigation and may need outside vendors with high costs and uncertain timelines. HHS announced the one-year extension only in May 2026, creating an eight-month implementation window rather than a vague future obligation.

The user signal matches the rule. In a recent [accessibility-practitioner discussion](https://www.reddit.com/r/accessibility/comments/1mgec5s/looking_for_insights_on_accessibility_overlay/), buyers and practitioners rejected overlay-only fixes; one commenter at an HHS-covered organization said AudioEye was outside its budget. A second [testing discussion](https://www.reddit.com/r/accessibility/comments/1v7awq5/website_accessibility_testing/) describes the real work: automated scans plus keyboard, NVDA, VoiceOver, zoom, form, and focus testing.

## What exists today

The cheapest substitute is self-service. Staff can use free WAVE or axe scans, then manually walk each flow with a keyboard and screen reader. For a modest five-template site, budgeting one hour per template plus two hours to inventory and sample PDFs means about seven staff or contractor hours per pass. At the $82 hourly developer-cost assumption used in [AudioEye's calculator](https://www.audioeye.com/plans-and-pricing/), that is $574 before fixing anything; the hourly figure is a vendor benchmark, not independent evidence.

Three paid substitutes establish a real market. [UserWay Pro](https://userway.org/widget/) is shown at $49 per month when billed yearly, or $490 per year, and combines a widget with monitoring of ten pages. [accessiBe Micro](https://accessibe.com/pricing/accesswidget) is $59 monthly or $490 yearly for automated scans and fixes; its $479-per-month Scale plan adds yearly expert testing and custom remediation. [Accessible Web RAMP](https://accessibleweb.com/pricing/) starts at $49 per month for one property and guided manual-audit tools; specialist support begins at $299 per month. These products are good at repeatable scanning, guidance, and documentation. The proposed gap is narrower: an affordable person who actually tests a small clinic's patient journeys, repairs WordPress or Squarespace templates, triages PDFs, and retests changes instead of selling another dashboard or overlay.

## How it makes money

Charge $1,500 for a ten-template remediation sprint, then $250 per month for one content batch, regression testing, and an updated evidence log. Four clinics at $250 per month produce $1,000 in recurring monthly revenue, while the initial sprints fund the labor-heavy setup.

## The riskiest assumption

The fragile belief is that a clinic will trust a solo specialist to touch a compliance-sensitive site instead of hiring its incumbent agency or a nationally known accessibility firm. Test it without code: select ten public FQHC websites, prepare a two-page sample audit for each using free tools plus keyboard testing, and email the operations director with three reproducible defects and the fixed-scope offer. Kill the idea if fewer than three accept a call or none asks for a proposal within seven days.

## What I rejected

An IRIS migration concierge would charge small accounting firms to move 1099 workflows off FIRE. I rejected it because the [IRS provides a free IRIS portal](https://www.irs.gov/taxtopics/tc801) with no special software, making the service seasonal support wrapped around a free incumbent while adding sensitive taxpayer-data risk.

An agent-ready website audit would charge ecommerce operators to test whether browser agents can complete purchases. I rejected it because Chrome's new [Agentic Browsing audit](https://developer.chrome.com/blog/agent-ready-toolkit) is explicitly informational and unbenchmarked, while WebMCP remains proposed and experimental; there is not yet evidence that a small merchant will budget for it.

## The part I would argue against

This may be a consulting job disguised as a product. WCAG conformance depends on judgment, changing content, third-party appointment systems, and testing by people who actually use assistive technology. A solo generalist should not imply certification, and a clinic worried about enforcement may rationally prefer an established firm with legal support. If the scope cannot stay limited to repeatable CMS templates and a controlled document queue, $250 monthly will buy an unlimited obligation and the economics collapse.

## Sources

- [HHS interim final rule](https://www.federalregister.gov/documents/2026/05/11/2026-09266/extension-of-compliance-dates-for-nondiscrimination-on-the-basis-of-disability-accessibility-of-web) — deadlines, covered recipients, standard, and reported FQHC obstacles
- [HHS announcement](https://www.hhs.gov/press-room/hhs-extends-mobile-and-web-accessibility-deadline.html) — concise confirmation of the May 2026 extension
- [Overlay-tools discussion](https://www.reddit.com/r/accessibility/comments/1mgec5s/looking_for_insights_on_accessibility_overlay/) — practitioner objections and an HHS-covered buyer's budget signal
- [Website-testing discussion](https://www.reddit.com/r/accessibility/comments/1v7awq5/website_accessibility_testing/) — the manual test workflow automated scans miss
- [UserWay pricing](https://userway.org/widget/) — $49 monthly on annual billing and $490 annual Pro pricing
- [accessiBe pricing](https://accessibe.com/pricing/accesswidget) — $59 monthly Micro and $479 monthly Scale pricing
- [Accessible Web pricing](https://accessibleweb.com/pricing/) — $49 self-service and $299 specialist-supported entry points
- [AudioEye pricing and calculator](https://www.audioeye.com/plans-and-pricing/) — vendor assumptions for remediation time and developer cost
- [IRS e-file topic](https://www.irs.gov/taxtopics/tc801) — FIRE retirement and the free IRIS substitute
- [Chrome agent-ready toolkit](https://developer.chrome.com/blog/agent-ready-toolkit) — new audit capability and its current limitations
