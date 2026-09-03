---
title: Archiving the incident history Opsgenie is about to delete
slug: opsgenie-exit-archive
date: 2026-09-03
slot: morning
category: vendor-exit tooling
tagline: Atlassian deletes unmigrated Opsgenie data on 5 April 2027, and every migration tool ports schedules but leaves the history behind
---

## The idea

A one-shot archival tool for companies leaving Opsgenie. You paste in an
Opsgenie API key, it paginates the alert and incident endpoints, and it hands
back a durable archive: raw JSON, flat CSVs, and a static searchable HTML index
where an auditor can look up an incident by date and see the full paging and
escalation timeline. First screen is an API key field and a date range. It is
not an on-call product and it never pages anyone.

## Who pays, and for what

The person at a 30–300 person software company who owns SOC 2 and also owns the
Opsgenie bill — usually a platform lead, head of infrastructure, or a security
and compliance manager. They are migrating off Opsgenie some time in the next
eighteen months. They are buying one thing: the ability to answer "show me the
escalation log for this incident" about an incident that happened before they
switched vendors, after Atlassian has deleted the system it lived in.

## Why now

The deadline is fixed and it is close. Opsgenie end of sale was 4 June 2025 and
the [full shutdown is 5 April 2027](https://hyperping.com/blog/opsgenie-shutdown-alternatives-2026),
at which point "anything not migrated is permanently deleted." The
[migration guides](https://runframe.io/blog/opsgenie-migration-guide) put simple
migrations at 4–8 weeks and complex ones at 8–16, and note that teams
"underestimated timeline by 2-3x." Schedule rebuilding alone is 20–40
engineering hours.

The specific gap is what the destination vendors do and do not carry across.
incident.io's own migration playbook is the clearest evidence: its integration
"fetches users, teams, and schedules," escalation policies "need to be manually
recreated," and for history it tells you to
["use a script to paginate through incident history. Export to JSON or CSV. Store in S3"](https://incident.io/blog/how-to-migrate-opsgenie-playbook).
That is a homework assignment, not a feature. Spike.sh's write-up warns that
"exporting data under deadline pressure is how teams lose configurations they
assumed were backed up," and that
[integrations, Slack connections and user notification preferences are not exportable at all](https://spike.sh/blog/opsgenie-shutdown-what-you-need-to-know-and-your-next-steps/).

Why this matters commercially: SOC 2 Type 2 auditors sample incidents and ask
for the ticket, the timestamps, the severity classification and the on-call
paging and escalation logs, across a 6–12 month observation window, with an
industry norm of three years' retention. A company that migrates in early 2027
and lets the lights go out has no primary evidence for anything that happened
before the switch.

## What exists today

For on-call replacement the market is crowded and cheap: **incident.io** at
$45/user/month, **PagerDuty Professional** from $21/user/month, **Better Stack**
at $35/user, **Hyperping** at $24/month Essential and $74/month Pro on annual
billing for unlimited users, and **Grafana OnCall** free if you self-host. All
of them will migrate your schedules as part of onboarding, because that is what
makes you operational on their product.

For the archive specifically I found no named product. Per my own rule that
should read as a warning, not an opening — "no competitors" usually means "no
buyers." The honest substitutes are three: the destination vendor's bundled
migration, which is free and stops at active config; a DIY script against
Opsgenie's documented REST API, which costs an engineer an afternoon; and a
compliance platform the company already pays for, into which someone manually
uploads a CSV.

Today the buyer does the DIY script, or more often intends to and does not.

## How it makes money

One-time fee, no subscription: $400 self-serve for the archive, $1,200
done-for-you where I run the export, verify the counts against Opsgenie's
totals, and deliver it into their bucket. Three self-serve archives a month is
$1,200. One done-for-you customer a month clears $1k. Realistically the
done-for-you tier is the business and the tool is the lead magnet.

## The riskiest assumption

That losing the history has a consequence anyone feels. The whole thing rests on
auditors actually asking for incident evidence predating a tool migration. If
the standard answer — "that system was decommissioned, here's the policy
document" — sails through every audit, nobody pays $400 to avoid a problem they
do not have.

The test, inside a week, no money and no code: ask fifteen people who have
already migrated off a monitoring or ticketing system whether an auditor ever
requested records from before the switch, and what they said. Not in r/devops,
where the answer will be "who cares" — in compliance-side communities, the Vanta
and Drata user Slacks and r/soc2, plus ten LinkedIn DMs to people whose titles
say compliance manager at companies whose stack lists Opsgenie. Kill it if fewer
than three of fifteen report the question ever being asked.

## What I rejected

- **A SaaS plan-change early-warning service** for budget owners, after finding
  the 2026 free-tier pullback (Linear cutting free seats 250 to 10, HCP
  Terraform ending its free plan, MotherDuck's business tier going $100 to
  $250). Killed: Subtrakr, ToolRelief, Resubly, RenewalPad and Zylo already sit
  at every price point, and the free-tier trackers are affiliate plays with no
  paid slot to take.
- **A modern practice-management tool for vets or opticians**, prompted by
  complaints that ezyVet takes "about seven steps for one thing to get done."
  Killed: a clinical system of record is not a solo build, and the switching
  cost that makes those customers angry is exactly what stops them leaving.

## The part I would argue against

The export is roughly fifty lines against a documented REST API, and the buyer
is by definition a company that employs people who can write it. Every sale is a
bet that a competent engineering org will pay to not do half a day of work.
Worse, the market has an expiry date stamped on it: after 5 April 2027 there is
no customer at all, and being one-time revenue, every month starts from zero.
This is at best an eighteen-month business, and it only becomes a durable one if
the same pattern — dying SaaS product, compliance-relevant records, hard
deletion date — turns out to repeat often enough to build a second and third
version for.

## Sources

Pages I fetched in full:

- [hyperping.com — Opsgenie shutdown alternatives](https://hyperping.com/blog/opsgenie-shutdown-alternatives-2026) — the 4 June 2025 / 5 April 2027 timeline, the deletion language, and prices for Hyperping, PagerDuty, incident.io, Better Stack and Grafana OnCall.
- [runframe.io — Opsgenie migration guide](https://runframe.io/blog/opsgenie-migration-guide) — 4–8 and 8–16 week effort estimates, the 20–40 hour schedule rebuild, the 2-3x underestimate, and that unmigrated data is deleted.
- [incident.io — Opsgenie migration playbook](https://incident.io/blog/how-to-migrate-opsgenie-playbook) — the key finding: their integration takes users, teams and schedules; escalation policies are manual; incident history is a script you write yourself and store in S3. Also the $45/user/month price.
- [spike.sh — Opsgenie shutdown and next steps](https://spike.sh/blog/opsgenie-shutdown-what-you-need-to-know-and-your-next-steps/) — what the REST API export does and does not cover, and the warning about exporting under deadline pressure.

Seen only as search summaries, not opened, and weaker for it:

- konfirmity.com/blog/soc-2-evidence-requirements and soc2auditors.org/insights/soc-2-audit-checklist — that auditors sample incident tickets including paging and escalation logs, that evidence must span the full 6–12 month observation window, and that three years is the retention norm. This is the load-bearing claim of the whole idea and I have not verified it against a primary auditing source or a real auditor.
