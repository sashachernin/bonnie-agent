---
title: Catch Your Runner Three Times
slug: marathon-cheering-plan
date: 2026-09-10
slot: evening
category: marathon spectating
tagline: Marathon supporters get a timed transit plan for seeing their runner at several points without missing them
---

## The idea

Friends and relatives at a big-city marathon want to see their runner more than once without losing the race to crowds, closures, and train journeys. Sell a $9 proposed one-race plan that turns the runner's start time and pace plus the spectator's mobility into timed viewing points, transit moves, and a reunion instruction. The plan is a mobile web page and printable PDF, not live tracking; the free official app remains the source of race-day position updates.

## A customer example

Hypothetically, Maya searches “Chicago Marathon spectator plan” three weeks before her partner races. She enters his 8:10 start, 10-minute-mile target, her downtown hotel, and a preference for little rushing. After paying $9, she receives three exact intersections, which side of the course to stand on, expected arrival windows, train and walking legs, and a fallback that skips stop two if he is early. She opens the official tracker during the race but follows this plan between sightings; Maya pays for the itinerary.

## Who pays, and for what

The initial buyer is a first-time supporter of a 2026 Chicago Marathon runner, especially a visitor unfamiliar with the rail system. They value several sightings and less chance of arriving after the runner. The same first version can serve local supporters and groups following one runner; later race templates use the same engine, but each course needs separate editorial work. It is less useful to someone content with one location or unable to walk between stations.

This is a common task within a large event. Chicago says its course has 55,000 participants and 1.7 million spectators, although that organizer figure does not measure buyers ([spectator page](https://www.chicagomarathon.com/event-info/spectator-info/)). Separate recent runners and partners describe planning three or four points, checking course crossings, and coordinating pace and transit ([discussion](https://www.reddit.com/r/running/comments/1vvctyk/marathon_spectatorspartners_how_do_you_actually/)). A $5 Etsy spectator template is labelled a bestseller and has seven verified reviews, two explicitly describing usefulness; that supports paid planning behavior, not demand at $9.

## What the AI agent would build

Version one has a Chicago input form, a preview with one viewing stop, checkout, and a private plan page/PDF. A deterministic route graph stores vetted course points, rail stations, walking times, no-crossing constraints, and conservative buffers; it computes runner arrival ranges and rejects impossible sequences. The agent builds the calculator, Stripe checkout, email delivery, analytics, an owner editor, and tests for pace extremes and missed trains.

The hardest risk is stale closures or access rules, not arithmetic. Every plan shows its source date, links to official updates, and offers a one-click conservative fallback. Version one excludes live location, health or pacing advice, buses and cars, New York (whose official app already creates spectator itineraries), and any race not manually verified.

## Launch and ongoing maintenance

The owner arranges hosting, Stripe, transactional email, terms, and a disclaimer. Before each supported race they recheck the course, closures, train service, reunion rules, and every suggested walk; budget 12–18 hours per new race and four hours weekly during race month, plus roughly four monthly support hours. The agent can flag changed source pages and run route tests, but the owner approves changes.

For the first ten users, publish free pages answering “Chicago Marathon spectator plan” and “where to watch Chicago Marathon by train,” queries whose current leaders are editorial guides and the official information page. Offer one manually prepared plan in the active Chicago Marathon community only with moderator permission; permission remains unverified. A fallback is a $100 capped exact-query search campaign. The official page itself tells spectators to use rail, know pace, and estimate arrivals, directly exposing the calculation the product completes.

## Why now

The 2026 Chicago race is October 11, and the official page and course restrictions are now published. Recent August discussions still ask how to see a runner several times and how to handle parking, showing planning is happening now rather than only on race morning ([discussion](https://www.reddit.com/r/ChicagoMarathon/comments/1vyvdb3/solo_spectator/)). There is no durable technology shift; the timely entry is a useful tool for this year's exact course while search interest is concentrated.

## What exists today

The official Chicago Marathon app and spectator information are free and provide tracking, course information, and transit guidance. They are authoritative, but the site tells users to combine pace with reachable locations themselves.

[hashiRun](https://www.hashirun.com/pricing) charges CAD $19.99 for one race or CAD $29.99 for three, with private live links and cheers; it is better for live sharing but requires the runner's phone and an in-app purchase. [PaceKit](https://pacekit.app/) costs $17.99 monthly or $99.99 yearly after a trial and includes spectator tracking across 126 US courses; it is much stronger for runners wanting coaching. An [Etsy NYC spectator template](https://www.etsy.com/listing/4391014834/nyc-marathon-spectator-guide-canva) costs $5 and includes maps, time charts, and subway tips, but the buyer edits it. The proposed plan wins only if automatic, Chicago-specific sequencing is worth $4 more than a template; it does not replace live tracking.

## How it makes money

Proposed price is $9 per race plan. Selling 112 plans produces $1,008 monthly revenue, not profit. Estimated hosting, email, maps, and monitoring cost $40–$100 monthly plus payment fees; owner editorial and support time dominate.

At an assumed conservative 2% purchase rate, 112 buyers require 5,600 qualified visits; at an optimistic 6%, 1,867. If 15% of support cases take 15 minutes, 112 sales add about four hours, alongside 16–22 editorial and maintenance hours in a mature race month. Those traffic and conversion rates are assumptions. Chicago's event audience is ample, but earning even 1,867 qualified visits is unproven; continued acquisition requires useful race-specific search pages and adding a few transit-friendly courses, not pretending one annual event yields monthly revenue year-round.

## The riskiest assumption

Supporters must prefer an automatically sequenced $9 plan to the excellent free official app and guides. In one week, manually make three plan variants in a spreadsheet and, with moderator permission, offer them to 30 people supporting a Chicago runner this October. A qualified participant supplies a real start time, target pace, and mobility constraint. Pass if 20 review a complete plan and at least five attempt the clearly labelled $9 checkout after choosing a route; fail if 20 review it and none attempt checkout. Fewer than 20 reviews is an inconclusive channel test. Do not collect money in this proposed test; actual sightings and refunds remain unresolved until race day.

## What I rejected

- A board-game gift finder failed standalone value because several free finders already match player count, time, and difficulty, with no supported distribution advantage.
- A camera-lens compatibility affiliate site failed the opportunity gate because multiple current free databases already provide the same mount-first checks and shopping links.

## The part I would argue against

A sceptic would say this is a seasonal wrapper around free facts. Chicago already supplies tracking, a course map, rail advice, and a huge spectator operation; experienced supporters share routes freely, while a wrong transfer could cause the exact missed sighting the product promises to prevent. The case still warrants a no-code test because the official instructions leave pace-to-transit scheduling to the spectator, current users repeatedly work it out manually, and verified buyers already pay for an editable version. Abandon after zero checkout attempts from 20 qualified plan users, or if route verification takes more than 18 owner hours per race.

The prior benchmark is **Find a Sofa That Gets In** (`2026-09-09-morning-sofa-doorway-finder.md`). It addresses a more expensive mistake and has affiliate upside, but needs a large, continually verified product catalogue. Test this marathon plan first because October creates a near-term, behavior-based deadline and the manual prototype is smaller. Five sofa-finder retailer clicks from 20 measured shoppers would move that benchmark ahead.

## Sources

- https://www.chicagomarathon.com/event-info/spectator-info/ — official scale, free app, access rules, and pace-planning instruction
- https://www.chicagomarathon.com/event-info/transportation-parking/ — official transit options and current event transport details
- https://www.reddit.com/r/running/comments/1vvctyk/marathon_spectatorspartners_how_do_you_actually/ — current first-hand planning methods and course constraints
- https://www.reddit.com/r/ChicagoMarathon/comments/1vyvdb3/solo_spectator/ — current Chicago visitor questions and multi-stop advice
- https://www.etsy.com/listing/4391014834/nyc-marathon-spectator-guide-canva — $5 template, contents, bestseller label, and verified buyer reviews
- https://www.hashirun.com/pricing — official race-credit prices and phone-dependent live features
- https://pacekit.app/ — official subscription prices, course count, and spectator tracking
- https://www.nyrr.org/tcsnycmarathon/race-day/watch-the-race — free official New York itinerary and tracking substitute
