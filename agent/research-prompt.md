# Run instructions: research and propose one software-product business idea

You are running unattended. Nobody will answer questions. Research an opportunity
on the web, then write exactly one markdown file in `posts/`. Do not build the
product or modify any other repository file. `IDEAS.md` and `docs/` are generated.

This repository is only the output destination, not the research subject. Read
`IDEAS.md` for prior ideas; otherwise open only the post you are writing. Do not
inspect repository code, scripts, logs, or git state. The runner handles the
build and everything after you write the post.

## Product scope

Find a reusable, self-service software product that one owner with a laptop, a
few hundred dollars, and an AI coding agent could realistically build and launch.
Web apps, mobile apps, games, extensions, developer tools, educational products,
and ad-supported websites are all welcome. The coding agent builds and helps
maintain the software; the deployed software delivers customer value while the
agent is offline. Ordinary code and APIs are sufficient. AI features are optional
and must have a bounded role, affordable costs, and failure handling.

Exclude consulting, managed services, agent-for-hire businesses, bespoke customer
fulfilment, and products requiring specialist review of most results. The owner
may arrange accounts, make business decisions, and handle occasional support.

Keep the implementation small and the underlying need substantial. Seek recurring
jobs, wants, or frustrations shared by a sizable reachable audience. Do not default
to specialized spreadsheet or file-conversion problems, or escape competition by
adding increasingly rare customer qualifications. Consumer needs, entertainment,
and everyday utilities count as much as business problems.

Distinguish the initial audience you can reach from everyone the same first
version could help. Broader usefulness must come from the core product, not an
imagined roadmap or a vague claim that it is for everyone.

## Research budget and priorities

Aim for roughly **10 minutes of active research**, then write. Do not pad, sleep,
or stall to reach a duration. Use the time for breadth first, then verification of
the strongest candidate. The minimum research is **eight genuinely different web
searches** and **three primary pages opened and read beyond search snippets**.

Accuracy and honest rejection take priority over finding a publishable winner.
Within the budget, prioritize independent demand evidence, existing alternatives
and prices, the claim the idea depends on, and critical feasibility constraints.
Then deepen acquisition and economics. If the minimum research takes longer than
expected, finish it, but do not restart the whole process to fill a shortlist.
Disclose remaining gaps rather than inventing facts or treating assumptions as
verified. A rejected opportunity is an acceptable result.

## Phase 0 — Choose a fresh direction

Read `IDEAS.md`. If it is absent or empty, treat this as the first run. Compare the
six most recent entries by audience, underlying need, workflow, and category.
Choose a meaningfully different direction to explore; changing a category label
alone does not create variety. Reusing a format such as SaaS is fine when the
need and audience differ. Do not choose an obscure niche merely to be different.

Choose a direction, not a predetermined idea. Use a plain, accurate category label
for the eventual post; there is no fixed taxonomy.

## Phase 1 — Scan for signals

Run at least **eight searches with genuinely different framings**, covering at
least **three substantially different audiences or everyday needs** before
narrowing. Rewordings of one query do not count. Include at least two searches
about common recurring needs, popular uses, or reasons people already pay for or
repeatedly use products, rather than only complaints about missing features.

Useful framings include:

- Recurring things people want to create, learn, organize, enjoy, or share.
- Frustrations with existing products, price increases, or lost free features.
- Popular tools that shut down or stopped being maintained.
- New platform capabilities or upcoming regulatory deadlines.
- Repetitive manual work that a small self-service app could handle.
- Common needs in sizable professions, hobbies, or consumer groups.

Prefer direct evidence: user discussions, reviews, issue trackers, pricing pages,
changelogs, and documentation. Avoid business-idea listicles. Record URLs as you
go; cite only sources actually retrieved during this run. Never invent a URL,
company, statistic, or price. Distinguish observed facts from estimates,
hypothetical examples, and unresolved willingness to pay.

## Phase 2 — Compare three candidates

Form **three candidates addressing substantially different needs or audiences**.
At least two should target a common job or desire across a broad audience or
sizable profession or hobby. Consider all three; they do not all need to pass.
For each, identify the user and payer, core workflow, build and launch needs,
likely acquisition channel, recurrence, and conditions that limit the audience.
Separate actual constraints from incidental details of an illustrative example.

### Software-product gate

Reject a candidate if any of these requirements fails. For the likely winner,
verify critical dependencies rather than assuming the coding agent can solve them.

1. A useful first version fits the owner, budget, and self-service product scope
   above, without a large team, specialist licence, or major capital investment.
2. Required data, libraries, APIs, and distribution channels are accessible on
   terms permitting the intended use and fit the budget.
3. Users have a concrete reason to adopt or pay instead of using a free tool,
   established competitor, or simple habit change.
4. A solo owner has a specific, plausible way to reach users.
5. Hosting, storage, API fees, payments, and ordinary support fit the proposed
   revenue model; routine errors do not have unacceptable consequences.

### Opportunity gate

Evaluate the strongest candidates against these criteria:

- **Demand:** At least two independent signals from different people or
  organizations support the underlying need. Copies of one complaint do not
  count; platform documentation establishes feasibility, not demand.
- **Audience:** Evidence such as comparable-product adoption, relevant directories,
  or active communities supports a substantial relevant audience. Explain its
  limits. A platform's total user count does not establish demand for a rare
  workflow within it. Do not invent market-size estimates.
- **Standalone value:** The outcome justifies adopting a separate product. A minor
  import, export, naming, or interface difference needs evidence that it materially
  affects adoption or payment. Existing competition is acceptable.
- **Repeatable growth:** The same first version can help customers beyond the
  first ten without bespoke work or a much larger build. Prefer recurring use;
  episodic products need a credible continuing supply of new users.

Choose the candidate with the strongest combination of demand, value, reachable
breadth, and feasibility. Keep the two rejection reasons for the post, identifying
whether they concern demand, economics, or the software-product gate. Do not keep
searching merely to find three passing candidates.

If no candidate passes, broaden the search once if time remains. If none still
passes, document the best-researched candidate as an **explicitly rejected
opportunity** using the same output format. State upfront that no candidate
cleared the bar; label its workflow, build plan, and economics as hypothetical.
Do not endorse a weak idea just because a post is required.

## Phase 3 — Verify the selected opportunity

Before writing, complete the research minimums and gather evidence for the output
sections below. Focus additional research on these checks:

- Find **three named competitors or substitutes with actual prices from their
  own pages**, including free alternatives where relevant. If fewer can be
  verified, disclose the gap and treat it as uncertainty, not proof of an open
  market. Explain what users do today and its evidenced money or time cost;
  label any estimates.
- Open and read **at least three primary pages**, such as vendor pricing,
  documentation, changelogs, or original user discussions. Snippets do not count.
- Identify and verify the **load-bearing factual claim**: the price, rule,
  capability, shutdown, or other fact the opportunity depends on. Read the
  vendor's, regulator's, or other original source. If verification fails, say
  exactly what remains unverified and make it the reader's first check.
- Verify critical API or platform restrictions. Scope the smallest useful build,
  its hardest technical uncertainty, and launch dependencies. A build estimate
  is not proof of feasibility.
- Ground acquisition in a specific channel with evidence of relevant users and
  a practical route to the first ten. Treat traffic, conversion, and ad yields
  as assumptions. Estimate major running costs and ordinary support needs.

Missing evidence must remain visible in the post. If new findings defeat a gate,
select another already-researched candidate that passes or publish a rejection.

## Phase 4 — Write the post

Write `posts/<YYYY-MM-DD>-<slot>-<slug>.md`:

- Get today's date from the environment; do not guess.
- Use the slot passed by the run: `morning`, `afternoon`, or `evening`. If absent,
  use local time: morning before 12:00, afternoon before 18:00, evening afterward.
- Use a slug of 2–5 lowercase, hyphen-separated words, without dates.

### Frontmatter — exact keys, exact order, no extras

```
---
title: Short, concrete, no colon-subtitle or unexplained industry jargon
slug: same-slug-as-the-filename
date: YYYY-MM-DD
slot: morning
category: whatever you decided in Phase 0
tagline: Plain-English description of the customer, problem, and result, under 140 characters, no full stop needed
---
```

Values are plain text on one line. Do not quote them, do not use YAML lists, do
not add keys. If a value would contain a colon followed by a space, reword it.

### Body — these twelve sections, in this order, as `##` headings

```markdown
## The idea

Three to five plain-English sentences. Begin with the person and the frustrating
situation, then say exactly what the business does for them. Do not begin with a
market category, regulatory classification, or phrase such as "a productized
service." Assume the reader knows nothing about the industry. Replace specialist
terms where possible and define any unavoidable term immediately.

## A customer example

Walk through one ordinary, explicitly hypothetical transaction. What happens to
make the customer seek a tool? How do they find it? What do they click, upload,
or connect? What does the software do? What do they receive, how long does it
take, and what is better afterward?
Use concrete objects and actions. Do not invent evidence or present the example
as a real customer.

## Who pays, and for what

Identify the initial audience and the exact outcome they value, then explain
who else the same first version can already serve. State how often the need
occurs, which conditions limit the audience, and cite the demand and audience
evidence. Be concrete without treating every detail of the customer example as
a requirement. Explain why this is a common need within that audience rather
than an unusual exception; disclose gaps in the evidence.

## What the AI agent would build

Describe the smallest useful product: its essential screens, user workflow,
backend processing, data storage, and payments or ads where relevant. Explain
what the coding agent implements and tests, which existing services the software
uses, and the hardest build risk. State what is excluded from version one.

## Launch and ongoing maintenance

Name what the owner must arrange, such as hosting accounts, payment setup, or
app-store submission. Describe ordinary software monitoring, support exceptions,
and code maintenance the AI can help with. Give a specific route to the first ten
users and evidence for why that audience can be reached. Do not assume discovery
is automatic.

## Why now

The signals from Phase 1, with inline links to the real pages. What changed
recently that makes this a better idea this month than it was last year. If
nothing changed and this is simply an old unmet need, say that plainly.

## What exists today

Your three-plus competitors or substitutes, named, with prices. What each does
well and where the gap is. If the honest answer is "an incumbent already does
this well and cheaply", write that — a killed idea documented properly is worth
more than a fake opportunity.

## How it makes money

Pricing model and a number, clearly labelled as a proposal. Show the arithmetic
for $1k/month in revenue: paying users at a price, or page views at an explicitly
assumed ad revenue per thousand views. For ads, explain why that traffic is
plausible; for paid products, explain the upgrade or purchase trigger. Estimate
major running costs and distinguish revenue from profit. Do not present assumed
conversion rates, ad yields, or demand as researched facts. The $1k calculation
is a first milestone, not evidence of a market or the intended ceiling. Connect
the required customer or traffic volume to the audience evidence and explain
how acquisition could continue beyond the first ten users.

## The riskiest assumption

The one belief that, if wrong, kills this. Then: the cheapest test that could
falsify it within a week, using no money and no code where possible. Be
specific — "post X in Y community and see if Z happens", not "validate demand".

## What I rejected

The two candidates you killed in Phase 2 and the one-line reason for each. Say
whether each failed on demand or economics, or failed the software-product gate.

## The part I would argue against

The strongest case against your own idea. Not a hedge and not a list of generic
risks — the argument a sceptical reader would actually make, put as well as they
would put it.

## Sources

Bulleted list of the URLs you actually opened, each with a few words on what it
told you.
```

### Writing and final checks

Write for an intelligent reader with no experience in the buyer's industry.
Explain the problem before its category; prefer concrete actions and objects.
Define unavoidable specialist terms immediately. Spell out acronyms on first use;
avoid them in the title, tagline, opening, and customer example unless they are
more familiar than their expansions.

Use short paragraphs and direct sentences. Avoid hype such as "revolutionary,"
"game-changing," "massive opportunity," or openings about AI changing everything.
Aim for **800–1200 body words**. Be concise, but allow modest extra length when
needed to explain material evidence, uncertainty, or feasibility. Do not pad to
meet the target or omit a consequential caveat to fit it.

Before finishing, check:

- A stranger can explain who has the problem, what happens today, what the user
  does, and what the software delivers.
- Sources support factual claims; proposed prices, estimates, and hypothetical
  examples are clearly labelled. Weak or missing evidence is stated plainly.
- The strongest argument against the idea is specific and candid.
- The filename, frontmatter, and twelve headings match the required format.

When the file is written, stop. Do not run builds or git, summarize the post in
chat, or start a second idea.
