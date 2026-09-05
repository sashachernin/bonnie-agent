---
title: An Annual Test Booker for Solo Technicians
slug: annual-test-booker
date: 2026-09-05
slot: morning
category: appointment recovery agent
tagline: Solo backflow testers get overdue customers chased and booked without replacing their spreadsheet
---

## The idea

A solo backflow tester finishes an annual safety test, writes next year's due date in a spreadsheet, then has to remember to chase the customer eleven months later. This business connects that sheet and the tester's calendar, texts each customer at the right time, answers ordinary scheduling replies, and books an open slot. It sells confirmed repeat appointments, not testing advice or compliance work. The technician still performs the physical test and files the official result.

## A customer example

Imagine a tester with a row for Maya Chen, 14 Oak Street, a mobile number, and a test due October 18. On September 7 the agent sees the approaching date, checks the tester's calendar and sends Maya three suitable appointment windows. Maya replies, “Tuesday after 2 works”; the agent offers 2:30, receives “yes,” creates the calendar event, and updates the row with the confirmation and message history. Within minutes, Maya and the tester receive the appointment details, and the tester has a retained job without an evening of follow-up.

## Who pays, and for what

The buyer is a solo or two-person certified backflow-testing contractor with roughly 40 to 300 repeat properties and no office scheduler. The concrete purchase is a maintained calendar of confirmed annual retests, plus a visible queue of customers who declined, opted out, could not be reached, or need a human response. Today, the clearest firsthand examples use notebooks, spreadsheets, calendar reminders, and manual texts; one tester with 40–50 regular clients said customers go overdue or choose someone else when the chasing happens late.

## How the AI agent runs it

Onboarding is bounded: the tester connects Google Calendar, supplies a spreadsheet with name, address, phone, last-test date and due date, and approves working hours, travel buffer, price wording, reminder timing, cancellation rules, and message templates. The agent builds and maintains a small web dashboard, database, spreadsheet importer, and audit log. It uses Google Calendar's interfaces to read busy periods and create events, and Twilio to send and receive text messages.

Each morning it validates rows, calculates the contact window, suppresses duplicates and opt-outs, checks calendar availability, and sends only approved wording. It classifies replies into book, decline, question, wrong number, stop, or ambiguous. For a booking it proposes slots, locks the chosen one, writes the event and sheet status, and sends confirmations. It never interprets test results, promises compliance, or files reports.

Automatic checks require a valid due date and contact consent, a delivered message, an unoccupied slot, matching event and spreadsheet identifiers, and one active booking per property. Twilio callbacks expose delivered, failed, and undelivered states; failed texts fall back to an approved email or an owner queue. A reconciliation job compares calendar events, conversation state, and spreadsheet rows nightly. Routine support answers “why was this person contacted?” from the audit trail and can retry an import or reconnect an expired account. The agent reviews error patterns weekly, adds regression tests, updates parsers when sheet layouts change, and deploys only after tests pass.

## Where a human is still needed

The contractor approves the initial rules and grants access once, then performs every test and any official filing. The owner of this business handles suspected consent problems, threats, unusual customer requests, and unrecoverable account access failures. A reasonable starting estimate across ten contractor accounts is three ambiguous customer conversations and one expired-account reconnection per month; if more than 5% of conversations need judgment, the service is drifting into a call centre and should not scale. No human should review normal bookings.

## Why now

The demand signal is recent but small. An August 2026 [solo-tester discussion](https://www.reddit.com/r/smallbusiness/comments/1vksmq9/solo_backflow_tech_struggling_with_annual_client/) describes exactly 40–50 repeat customers, a notebook and spreadsheet, too much texting, missed city deadlines, and lost work. A separate June 2026 [maintenance-business discussion](https://www.reddit.com/r/smallbusiness/comments/1u779tc/how_do_you_keep_track_of_annual_maintenance/) describes the same spreadsheet-and-calendar mess for equipment serviced every six or twelve months.

There is no single technical breakthrough this month. The enabling pieces are now cheap and checkable: Google Calendar documents endpoints for [reading free and busy periods](https://developers.google.com/workspace/calendar/api/v3/reference/freebusy/query) and [inserting events](https://developers.google.com/workspace/calendar/api/v3/reference/events/insert), while Twilio documents machine-readable [delivery callbacks](https://www.twilio.com/docs/messaging/guides/outbound-message-status-in-status-callbacks). The load-bearing claim is that reminder tools leave a gap between “message sent” and “appointment booked.” Vendor pages verify that several products advertise scheduled reminders; they do not establish broad demand for conversational booking. That demand is the first thing to test.

## What exists today

[BackflowReady](https://backflowready.com/) costs $79 per month for up to 200 devices and includes test capture, invoices, email reminders, and compliance tracking. It is broad and capable, but asks a solo tester to move the operating record into a full industry system.

[BackflowPass](https://www.backflowpass.com/pricing) charges $19 per month for a solo tester and includes saved customers, annual due-date planning, branded reports, and cloud history; its core field-testing workflow is also free. [FlatTest](https://flattest.app/) is $29 per month with unlimited devices, spreadsheet import, report preparation, and automatic emails 60 and 30 days before a due date. Both are inexpensive, serious substitutes. [Housecall Pro](https://www.housecallpro.com/pricing/) starts at $59 per month billed annually and includes online booking, scheduling, invoices, and broader business tools.

The narrow gap is staying on the existing sheet and carrying a two-way text exchange through to a calendar event. It may be too narrow: FlatTest already makes retention central, and an incumbent could add conversational booking.

## How it makes money

Charge $49 per month for up to 300 properties, including ordinary message usage, with no fee for the physical tests. Twenty-one contractors at $49 produce $1,029 in monthly revenue. Twilio's [United States pricing](https://www.twilio.com/en-us/sms/pricing/us) starts at $0.0083 per inbound or outbound text segment plus carrier fees, so low-volume messaging is not the economic constraint.

## The riskiest assumption

The risky belief is that solo testers will pay more than FlatTest's $29 merely to avoid chasing replies and manually booking. The cheapest one-week falsification test is a plain post in a backflow-testing group offering to operate the workflow manually from a copied ten-row sheet: ask for no credentials and no payment, return confirmed slots by email, and require five testers to volunteer and two to say they would pay $49 next month. Fewer than two credible purchase commitments kills the idea before code.

## What I rejected

A pricing-page change brief for small software buyers passed the operating gate—an agent can monitor, diff, verify, and email changes—but failed economics because existing monitoring products already publish this data and the buyer's avoided loss is vague. A Squarespace-to-static-site migration service also passed technically, but lost on demand and trust: customers angry about price often rely on commerce, booking, or editing features that a static copy cannot preserve, turning exceptions into consulting.

## The part I would argue against

This may be a feature, not a business. A $19 or $29 specialist product already stores due dates and sends reminders, while a disciplined tester can add a booking link to those emails. The proposed agent must prove that handling the reply conversation recovers enough extra jobs to justify another vendor, another customer-data copy, messaging consent setup, and $49 every month.

## Sources

- https://www.reddit.com/r/smallbusiness/comments/1vksmq9/solo_backflow_tech_struggling_with_annual_client/ — recent firsthand notebook, spreadsheet, chasing, and retention problem
- https://www.reddit.com/r/smallbusiness/comments/1u779tc/how_do_you_keep_track_of_annual_maintenance/ — similar recurring-maintenance workflow and current substitutes
- https://backflowready.com/ — $79 plan, import, reminders, scheduling, and wider workflow
- https://www.backflowpass.com/pricing — $0, $19, and $49 plans and annual planning features
- https://flattest.app/ — $29 price, spreadsheet import, and 60/30-day reminder emails
- https://www.housecallpro.com/pricing/ — $59 annual-billing entry plan and broad scheduling features
- https://developers.google.com/workspace/calendar/api/v3/reference/freebusy/query — documented availability query
- https://developers.google.com/workspace/calendar/api/v3/reference/events/insert — documented calendar-event creation
- https://www.twilio.com/docs/messaging/guides/outbound-message-status-in-status-callbacks — delivery and failure status callbacks
- https://www.twilio.com/en-us/sms/pricing/us — current text-message and phone-number pricing
