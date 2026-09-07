---
title: Keep the Bench Rotation Fair
slug: fair-bench-rotation
date: 2026-09-07
slot: evening
category: youth sports coaching software
tagline: Volunteer coaches keep playing time fair across games without doing sideline arithmetic
---

## The idea

Volunteer youth coaches want every child to play, but absences and a moving game make a carefully drawn lineup obsolete. This web app keeps a simple season-long queue of who should sit next, then makes a printable and shareable rotation before each game. When someone is absent or hurt, the order closes up instead of forcing the coach to recalculate every minute. It is for recreational teams that promise roughly equal participation, not competitive teams selected purely to win.

## A customer example

Hypothetically, a basketball coach learns ten minutes before tip-off that only eight of ten players have arrived. A search for “fair basketball bench rotation” leads to the app. She enters eight first names, five court spots, four quarters, and the two players who sat most recently. The app produces an ordered bench queue and a one-page quarter card in seconds; she prints it earlier or opens the share link on her phone, and next game starts with the queue where this one ended.

## Who pays, and for what

The initial payer is a volunteer coach of a recreational basketball, soccer, lacrosse, hockey, or flag-football team with substitutes and an equal-play expectation. They pay to avoid live arithmetic, repeated benching of the same child, and an argument unsupported by records. A recent multi-sport coaching discussion includes coaches using a spreadsheet, whiteboard, assistant, and apps; one participant argues specifically for carrying a sit order between games and setting it before play ([discussion](https://www.reddit.com/r/CoachingYouthSports/comments/1vx8v72/rec_league_fair_playing_time_per_game_or_per/)). A basketball thread independently calls substitution planning one of coaching's hardest jobs and describes paper, batch substitutions, and purpose-built apps ([thread](https://www.reddit.com/r/BasketballTips/comments/1r6gxbt/coaches_how_do_you_handle_substitutions_and_equal/)).

The same version serves any timed team sport with open or interval substitutions. It does not fit fixed-lineup sports without adaptation, teams with no substitutes, or win-first programs. Aspen Institute's report says 55.4% of US children ages 6–17 played sports in 2023 and team-sport participation rose in 2024; that establishes a large surrounding audience, not the number of equal-play coaches ([report](https://projectplay.org/state-of-play-2025/introduction)). No source found quantifies that narrower segment.

## What the AI agent would build

Version one is a mobile web app with roster setup, a game form, the persistent sit-order queue, a generated period-by-period card, and season history. A deterministic constraint solver balances bench turns and optional position limits, explains every assignment, and lets the coach lock or swap any choice. Local browser storage supports anonymous use; paid accounts sync first names, settings, and game records in a small database. Stripe handles subscriptions.

The coding agent would implement unit tests for odd roster sizes, absences, injuries, locked assignments, and queue carry-over, plus print and phone layouts. The hardest risk is producing a valid, understandable plan when position eligibility conflicts with fairness. Version one excludes live scorekeeping, chat, parent contacts, photos, league administration, and AI-generated decisions.

## Launch and ongoing maintenance

The owner arranges a domain, low-cost web hosting, a database, email, and Stripe. Monitoring covers failed saves, payment webhooks, and solver exceptions; ordinary support should be password, billing, or confusing-plan cases. The agent can maintain browser compatibility and expand tested sport presets without handling games for customers.

For the first ten users, ask moderators for permission to post an interactive mockup in r/CoachingYouthSports, r/SoccerCoachResources, and r/BasketballTips, then personally invite commenters who described spreadsheets, whiteboards, or attendance-driven replanning. Those exact discussions show relevant coaches are reachable, though permission and response rates are unverified. Continued acquisition would use free, indexable calculators for specific searches such as “8 player basketball rotation” and “11 player 7v7 rotation,” with the season queue as the upgrade.

## Why now

There is no regulatory or technical change creating this need. September is a practical launch window for fall teams, but seasonality is not a moat. The current reason to test is fresh evidence: August 2026 coaches were still debating auditable fair-play records and describing fragile manual methods, while multiple products launched or updated around the same job. That combination indicates active demand and active competition, not an unmet market.

## What exists today

[FairSub](https://fairsub.app/) is free for smart substitutions and unlimited matches; its position-aware Coach tier is $14.99 a year. It is a polished soccer-first incumbent and recalculates after injuries. [Stack the Lineup](https://www.stackthelineup.com/faq.html) offers a working single-team baseball or softball planner free and Pro auto-fill for $9.99 a year, but is iPhone/iPad only. [MatchDay Coach](https://www.matchdaycoach.app/) charges $1.99 a month after a seven-day trial for soccer lineups, minutes, practices, schedules, and more. SubTime also reports 60,000-plus coaches and 600,000-plus games, strong comparable-product adoption evidence ([App Store](https://apps.apple.com/us/app/subtime-sub-timer-rotation/id1248650528)).

Free substitutes are formidable: spreadsheets, paper, and Vimasu's no-signup printable multi-sport calculator ([calculator](https://vimasu.com/standard/tools/playing-time-rotation)). This product would compete on a distinct workflow: a resilient sit-order that carries between games, with a simple explanation parents can inspect, rather than precise live minute tracking. Free sport-specific calculators can capture new search visits without asking users to switch. Incumbents are better for formations, live changes, and statistics.

## How it makes money

The proposal is free one-game planning and $18 per year for saved rosters, cross-device sync, share links, and season carry-over. At 667 annual subscribers, annual revenue is $12,006, averaging about $1,000 per month before fees; this is revenue, not profit. Estimated early costs are $10–$40 monthly for hosting, database, and email, plus payment fees and perhaps two support hours monthly. Exact costs depend on usage.

The upgrade trigger is the second game, when remembering the prior bench order becomes valuable. Reaching 667 buyers is unproven. The 60,000-plus SubTime claim shows the scale is not absurd, while free long-tail calculators and sport-by-sport pages give acquisition a repeatable route beyond direct outreach. Search ranking, free-to-paid conversion, and churn between seasons remain assumptions.

## The riskiest assumption

Coaches may like a carry-over queue but still refuse to pay because free apps and paper are good enough. The cheapest one-week test is a clickable mockup plus a sample eight-player rotation card. With moderator permission, post it in the three named coaching communities and message ten coaches who recently described the problem; abandon or reposition if fewer than five complete the mockup and fewer than two volunteer an email after seeing the stated $18 annual price.

## What I rejected

- Shared pet-medication logging failed the software-product gate because missed or duplicated doses make routine sync and notification errors unacceptably consequential for a tiny first build.
- Music-teacher practice notes failed on economics because teachers explicitly described family app fatigue and preference for free, existing channels, weakening the case for another paid destination.

## The part I would argue against

This is a crowded, low-price category whose best features are already free. FairSub includes unlimited smart substitutions at no charge, and Vimasu already prints multi-sport equal-minute grids without signup. A persistent queue may be an elegant method but only a minor feature, while many coaches prefer flexibility over mathematically equal time. The recent, independent evidence that coaches still use whiteboards and spreadsheets makes a no-code test worthwhile; failure to get two price-aware email commitments from targeted coaches would mean the distinction is not commercially meaningful.

## Sources

- https://www.reddit.com/r/CoachingYouthSports/comments/1vx8v72/rec_league_fair_playing_time_per_game_or_per/ — current manual methods and the carry-over queue proposal
- https://www.reddit.com/r/BasketballTips/comments/1r6gxbt/coaches_how_do_you_handle_substitutions_and_equal/ — independent basketball substitution pain and workarounds
- https://projectplay.org/state-of-play-2025/introduction — US youth participation context and recent trend
- https://fairsub.app/ — features, audience, free plan, and $14.99 annual tier
- https://www.stackthelineup.com/faq.html — baseball and softball scope, device limits, and $9.99 annual tier
- https://www.matchdaycoach.app/ — soccer workflow, claimed adoption, and $1.99 monthly price
- https://apps.apple.com/us/app/subtime-sub-timer-rotation/id1248650528 — multi-sport features and claimed usage
- https://vimasu.com/standard/tools/playing-time-rotation — free printable multi-sport substitute
