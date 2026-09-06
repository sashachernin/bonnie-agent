---
title: Check Every Nursing Paycheck
slug: check-nurse-pay
date: 2026-09-06
slot: afternoon
category: worker pay software
tagline: Nurses compare timecards with paystubs and get a clear list of missing hours, premiums, and overtime
---

## The idea

A nurse works nights, weekends, or overtime, then receives a paystub whose totals are difficult to reconstruct. This web app compares the nurse's existing timecard or roster with the paystub and highlights missing hours, shift premiums, and suspicious overtime rates. Unlike a shift calendar, it asks for work only on payday: upload the two records, confirm what was extracted, and review a line-by-line difference report. It provides arithmetic and documentation, not legal advice or a promise that the employer is wrong.

## A customer example

Hypothetically, Maya worked six night shifts and one extra shift during a two-week period. She finds the checker through a search for “is my nurse overtime rate correct,” uploads screenshots of her approved timecard and paystub, and confirms the dates, hours, base rate, and night premium the software reads. In under five minutes, it shows that all hours match but the overtime calculation appears $48 lower than the expected amount, explains the inputs, and creates a PDF she can email to payroll. Maya replaces hand calculations and scattered screenshots with a reproducible question for her employer.

## Who pays, and for what

The initial payer is a U.S. hospital or nursing-facility nurse who receives hourly pay plus night, weekend, charge, on-call, or overtime premiums. The need recurs every pay period, especially after an extra or mixed-rate week. The [Bureau of Labor Statistics](https://www.bls.gov/ooh/healthcare/registered-nurses.htm) counted about 3.5 million registered-nurse jobs in 2025; 59% were in hospitals, and nurses in round-the-clock facilities commonly work nights, weekends, and holidays. Licensed practical nurses, nursing assistants, paramedics, factory workers, and other hourly workers with premiums could use the same first version, although the initial templates and examples would be nursing-specific.

Demand is supported independently by a [current nurse discussion](https://www.reddit.com/r/nursing/comments/1w7vn0e/your_overtime_rate_is_supposed_to_include_your/) describing a repeated overtime-rate discrepancy and by the U.S. Department of Labor's finding that failure to include differentials is a common health-care overtime error. The evidence does not show what fraction of nurses have errors or will pay to check; that remains the central validation question.

## What the AI agent would build

Version one is a mobile-friendly web app with an upload screen, a mandatory review table, a rule setup screen, and a comparison report. Browser optical character recognition proposes dates, hours, rates, and pay codes from images or PDFs; users must confirm every value, and manual entry remains available when extraction fails. A deterministic calculation engine groups work by week, applies user-confirmed premiums and overtime rules, compares expected gross line items with the paystub, and generates a PDF. It stores the account, confirmed numbers, and reports in an encrypted database, while deleting original documents after processing; Stripe handles subscriptions.

The agent implements fixtures for overnight shifts, pay periods crossing workweeks, rounding, and mixed rates. The hardest risk is reliably mapping varied employer documents without silently changing numbers, so low-confidence fields block the report. Version one excludes taxes, automatic employer-portal connections, claims filing, state-law conclusions, and advice about whether a bonus legally belongs in the regular rate.

## Launch and ongoing maintenance

The owner arranges a domain, low-cost application and database hosting, Stripe, error monitoring, privacy terms, and a support inbox. Routine work is reviewing extraction failures, expanding anonymized document templates only with permission, updating calculation tests, and answering billing or data-deletion requests; the coding agent can prepare fixes and regression tests.

For the first ten users, ask the moderators of r/nursing for permission to place a free, privacy-safe prototype in the active overtime thread, then invite participants to test using redacted documents or typed totals. That thread had more than 200 votes when retrieved, demonstrating relevant attention rather than automatic acquisition. Later growth can target specific searches such as “night differential overtime calculator” with free calculators that lead into the document comparison.

## Why now

The need is established rather than newly created. A timely entry route exists because the [Department of Labor reported](https://www.dol.gov/newsroom/releases/whd/whd20260108) recovering more than $259 million for nearly 177,000 workers in fiscal 2025, its highest back-wage recovery since 2019, while the September 5 nurse discussion shows the exact calculation is being shared now. New pay-tracking apps also validate interest, but they raise the bar: this product must prove that checking existing records only on payday is materially easier than logging every shift.

## What exists today

[ShiftWallet](https://apps.apple.com/us/app/shiftwallet-hours-paycheck/id6761481192) costs $5.99 once and already offers differential calculations, a paycheck verifier, and an optional scanner; it is the closest and cheapest competitor, but its workflow centers on tracking shifts in an iOS app. [Supershift](https://apps.apple.com/us/app/supershift-shift-calendar/id1104165041) is free with Pro at $3.99 monthly, $9.99 yearly, or $39.99 lifetime, and excels at private offline calendars, rotations, and reports. [My Shift Planner](https://apps.apple.com/us/app/my-shift-planner-calendar/id645662133) is free with ads; Pro is $0.99 monthly, $9.99 yearly, or $49.99 lifetime, and its 3,500 U.S. App Store ratings support established demand for shift organization. [HoursTracker](https://apps.apple.com/us/app/hours-tracker-time-tracking/id336456412) is free with Premium at $4.99 monthly or $29.99 yearly and has 56,000 ratings, strong evidence that workers repeatedly track time and pay.

All four are better calendars or timers. The proposed app can win a subset who will not maintain one by starting with documents they already receive and working on any modern browser. ShiftWallet proves the feature is not unique, so cross-platform access and a genuinely lower-effort import must win in testing.

## How it makes money

Proposed pricing is one free comparison, then $24 per year for unlimited checks, saved employer rules, history, and PDFs. The upgrade trigger is seeing a useful first reconciliation and wanting the next payday checked without setup. Five hundred annual subscribers × $24 ÷ 12 equals $1,000 in monthly recurring revenue before fees, not profit or proof of demand.

At that scale, basic hosting, database, email, and monitoring are estimated at $50–$150 monthly; browser-side extraction avoids per-document artificial-intelligence fees. Payment fees and support time are additional. Growth beyond ten users would combine free, indexable premium/overtime calculators with permission-based demonstrations in nursing communities; search traffic, free-to-paid conversion, and 500-subscriber attainability are assumptions to measure.

## The riskiest assumption

Nurses who do not already track every shift will trust a document-based checker enough to confirm its extracted data and pay $24 yearly. The cheapest one-week test is to obtain moderator permission, post a clickable report mockup and a form in the active r/nursing discussion, and offer ten free manual reconciliations from redacted or typed figures. Abandon the idea if fewer than ten people submit records, or if fewer than three of the completed users say they would pay $24 yearly after seeing the report.

## What I rejected

- A renter move-in evidence app failed the standalone-value case for this entrant: RenterSeal, Tenant Inspect, TenantCircle, Plaice, and others already sell nearly the same guided report for about $15–$50, with no credible distribution advantage found.
- A shared pet-medication log failed the economics case: Remewdy and several close substitutes already provide reminders and family handoffs, while the research found no evidence that another general-purpose version could acquire users cheaply.

## The part I would argue against

This may be a feature, not a business. ShiftWallet already sells a verifier and scanner for only $5.99 once, established trackers are cheap or free, and paystub variation makes the proposed “easy import” the hardest part to deliver reliably. A browser alone does not justify $24 a year. The strong, recurring financial pain, official evidence of common calculation errors, and a live audience discussing the problem justify only the cheap workflow test; weak submissions or willingness to pay should end the project before code.

## Sources

- https://www.bls.gov/ooh/healthcare/registered-nurses.htm — employment, workplace, schedule, and wage data
- https://www.dol.gov/agencies/whd/fact-sheets/54-healthcare-overtime — official health-care overtime rules and common errors
- https://www.dol.gov/newsroom/releases/whd/whd20260108 — fiscal 2025 back-wage recovery
- https://www.reddit.com/r/nursing/comments/1w7vn0e/your_overtime-rate-is-supposed-to-include-your/ — current nurse report and discussion of the calculation problem
- https://apps.apple.com/us/app/shiftwallet-hours-paycheck/id6761481192 — verifier workflow and $5.99 price
- https://apps.apple.com/us/app/supershift-shift-calendar/id1104165041 — features, ratings, and prices
- https://apps.apple.com/us/app/my-shift-planner-calendar/id645662133 — features, ratings, reviews, and prices
- https://apps.apple.com/us/app/hours-tracker-time-tracking/id336456412 — workflow, adoption signal, and prices
