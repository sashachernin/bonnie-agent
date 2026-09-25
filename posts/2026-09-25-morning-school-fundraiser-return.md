---
title: Compare What Your School Fundraiser Keeps
slug: school-fundraiser-return
date: 2026-09-25
slot: morning
category: school fundraising
tagline: Volunteer organizers compare fundraiser fees, parent burden, and likely net proceeds before choosing a vendor
---

## The idea

School volunteers choosing a fundraiser need to know what the school will actually keep and what families will be asked to do. Build a free, source-dated calculator that puts donation platforms, auctions, product sales, and event vendors into one comparable net-return worksheet. Fundraising vendors pay a proposed $99 monthly fee for clearly labelled sponsored profiles; payment never changes calculator results or editorial order.

## A customer example

Hypothetically, Maya is a parent volunteer planning a $20,000 fun run. She finds the site through “school fundraising platform fees,” enters 300 expected donations averaging $67, and chooses whether the school or donor covers fees. The result compares the estimated school proceeds and flags donor tips, product delivery, prizes, and volunteer hours separately. Maya opens two cited vendor terms and exports a one-page comparison for the committee; a vendor pays only if Maya clicks its labelled sponsored profile or if it subscribes for visibility.

## Who pays, and for what

The initial user is a US Parent Teacher Association or Parent Teacher Organization volunteer selecting one school-wide campaign. The same first version serves booster clubs and small youth nonprofits because the arithmetic is identical, but raffles and local legal compliance are excluded. Most committees choose once or twice a year, while new officers create continuing annual demand.

National PTA reports more than 20,000 local units and 2.5 million members ([reports](https://www.pta.org/home/About-National-Parent-Teacher-Association/PTA-Reports-Financials)). In a current discussion, parents described switching to one direct-donation event and objected to product sales returning roughly 30% to the school ([discussion](https://www.reddit.com/r/Parenting/comments/1sx35ek/im_so_tired_of_the_school_fundraising_treadmill/)); another organizer presented a real invoice with a base fee, 40% share, and 15% platform fee that the group struggled to reconcile ([invoice discussion](https://www.reddit.com/r/askmath/comments/1no1x6g)). These show consequential choices and confusion, not sponsor willingness.

## What the AI agent would build

Version one is a static comparison library, a campaign-input form, a net-proceeds table, a parent-burden checklist, saved share links, and a printable committee brief. A small database stores each public fee, tip model, eligible organization, checked date, and source. Calculations run deterministically in the browser; the owner manually approves source changes. Stripe is needed only after sponsorship is validated.

The coding agent implements calculation fixtures, accessible tables, stale-source warnings, analytics, and sponsor labels. The hardest risk is comparing unlike programs without implying that fees predict total money raised. The calculator therefore keeps participation and average gift as user assumptions and excludes outcome rankings, legal advice, payment processing, donor data, and vendor lead resale.

## Launch and ongoing maintenance

The owner arranges hosting, analytics, terms, and eventually Stripe. Allow an estimated 35–50 build hours, then 10–15 monthly hours to check sources, 15–25 for neutral comparison pages and outreach, and five for corrections and sponsor administration. The agent can detect changed pages; the owner resolves meaning and conflicts.

For the first ten users, use the official PTA lookup and public school-group sites to send 60 individual, permission-based invitations to officers planning a campaign, offering a manual comparison of their own numbers. National PTA exposes a local-unit lookup, and Washington's tool lists more than 830 units ([lookup](https://member.pta.org/Run-Your-PTA/PTA-Lookup?search=NPTA), [Washington](https://www.wastatepta.org/get-involved/find-your-pta/)). Search is the scalable channel: the inspected queries “best school fundraiser profit” and “school fundraising platform fees” were led by vendors ranking their own category. A transparent calculator can answer the arithmetic those pages do not, but ranking is unverified; direct outreach is the fallback.

## Why now

The need is established, not new. The timely opening is fee-model churn: Givebutter says accounts opened after September 9, 2025 use its Standard model, and its August 2026 explanation distinguishes optional tips from a 3% platform fee plus processing ([terms](https://help.givebutter.com/en/articles/1512762-givebutter-standard-pricing-explained)). Current parent discussions also show concern about tip prompts and opaque deductions. Public terms now provide enough inputs for a useful calculator, while the entry route is neutral reconciliation rather than a claim that fundraiser advice is absent.

## What exists today

[Givebutter](https://givebutter.com/pricing) is free to the organization with optional donor tips; without tips it charges 3% plus processing. [RallyUp](https://rallyup.com/pricing/) has a free tip-supported plan or Flex fees of 2.9%–6.9% by activity, plus processor fees. [Zeffy](https://www.zeffy.com/home/free-online-fundraising-platform) charges nonprofits $0 and asks donors for optional contributions. All three are stronger at running campaigns and handling payments.

Free vendor-written comparisons are the strongest discovery substitute. They explain their own products well, but the decisive reason to use this entrant is that one set of organizer assumptions produces comparable net dollars and exposes who bears every fee. Users need not switch platforms to use it. The advantage is supported by the confused invoice discussion and genuinely different official pricing models, although preference for an independent calculator remains untested.

## How it makes money

The proposal is free organizer access and $99 per month for a labelled vendor profile containing verified terms, regions, contact link, and aggregate clicks. Eleven sponsors produce $1,089 monthly revenue. Vendors already buy school-directory exposure: SchoolVendors charges $299, $599, or $799 per year for progressively prominent national listings ([pricing](https://www.schoolvendors.com/national_join)); a UK school-fundraising directory charges £350 annually nationally and £25 monthly for banners ([advertising](https://letsgetfundraising.co.uk/content/articles/advertise/)). That validates the category of spend, not this higher proposed price.

Assume conservatively that 3% of qualified vendor conversations close: 367 conversations are needed for 11 sponsors. At an optimistic 10%, 110 are needed. Retention also requires organizer traffic and useful clicks; assume 1,500 qualified monthly visits, a 12% outbound rate, and 180 clicks to distribute, but none of those rates is researched. Estimate $40–$100 monthly hosting, email, and monitoring, plus 25–40 owner hours during sales months and 30–45 ongoing content, verification, and sponsor hours. Revenue is not profit. Growth comes from source-checked pages for campaign types and states, not assumed free traffic.

## The riskiest assumption

The killing belief is that neutral calculations influence organizer decisions enough that vendors will pay $99 monthly for visible, labelled placement. In one week, invite 60 public-contact PTA officers who expect to select a fundraiser within six months. Manually build comparisons for qualified respondents, then show aggregate, anonymous usage to 20 relevant vendors and offer a no-charge $99 purchase-commitment button. Pass if at least 12 organizers complete their real inputs, six open two or more source or vendor links, three share the brief with a committee, and two vendors make the price-aware commitment. Fail if 12 complete but fewer than three share, or if 20 vendors see qualifying activity and none commits. Fewer participants is inconclusive; sponsor retention remains unresolved.

## What I rejected

- Custom marathon pace bands failed standalone value because several free generators already offer printable, course-adjusted bands while paid bands cost about $10.
- Secure W-9 collection failed the business feasibility gate because storing taxpayer identifiers creates security and compliance work disproportionate to a solo first version, while established filing suites already bundle collection.

## The part I would argue against

A sceptic would say fundraiser outcomes depend more on family enthusiasm and execution than published fees, while free vendor comparisons already dominate search. Worse, sponsors may distrust a calculator that sometimes makes them look expensive, and the owner could spend more time checking claims and selling ads than the revenue supports. The idea still deserves a cheap test because actual organizers struggle with multi-part invoices, official fee models differ materially, and vendors already pay for directory exposure. Abandon it if qualified committees do not share the comparison or if no vendor commits after seeing real use.

The prior benchmark is **Buy One Calculator for Every Exam** (`2026-09-23-afternoon-exam-calculator-match.md`). Test this fundraiser calculator next because eleven sponsors could reach the milestone with far less traffic than the benchmark's low-commission purchases, and current directory prices support the payer model. Put the calculator matcher back first if fewer than two vendors commit here, or if its own test produces four merchant clicks and a purchase from 12 shoppers.

## Sources

- https://www.pta.org/home/About-National-Parent-Teacher-Association/PTA-Reports-Financials — membership and local-unit audience evidence
- https://member.pta.org/Run-Your-PTA/PTA-Lookup?search=NPTA — official route to identify local units
- https://www.wastatepta.org/get-involved/find-your-pta/ — state lookup and unit count
- https://www.reddit.com/r/Parenting/comments/1sx35ek/im_so_tired_of_the_school_fundraising_treadmill/ — current parent burden and preferred alternatives
- https://www.reddit.com/r/askmath/comments/1no1x6g — real multi-fee invoice confusion
- https://help.givebutter.com/en/articles/1512762-givebutter-standard-pricing-explained — current fees, tips, and 2025 account transition
- https://givebutter.com/pricing — free and paid substitute prices
- https://rallyup.com/pricing/ — free and percentage-fee substitute prices
- https://www.zeffy.com/home/free-online-fundraising-platform — zero-fee substitute terms
- https://www.schoolvendors.com/national_join — verified annual vendor-listing prices
- https://letsgetfundraising.co.uk/content/articles/advertise/ — school-fundraising directory and banner prices
