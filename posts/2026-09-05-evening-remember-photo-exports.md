---
title: Find the Originals Behind Client Picks
slug: remember-photo-exports
date: 2026-09-05
slot: evening
category: plugin for an existing platform
tagline: Help portrait photographers turn renamed client selections into the original photos ready for retouching
---

## The idea

A portrait photographer receives a client's chosen filenames, but those names no longer match the originals in Lightroom Classic. Exporting pictures with tidy, sequential names broke the connection. This paid plugin remembers each exported filename and the original photo or alternate edit behind it. Later, the photographer pastes the client's selections and gets a collection ready for retouching.

## A customer example

Hypothetically, Maya spent her last delivery comparing thumbnails because her client selected renamed pictures. She finds the plugin through Lightroom Queen's plugin directory and installs its trial before her next shoot.

She exports 240 portraits through its “Remember this export” preset, including alternate black-and-white edits, and uploads them to her usual gallery. When the client chooses 18, she selects the saved job and pastes names such as `Maya-017.jpg`. The plugin previews the matches and creates a Lightroom collection. The target is under a minute after pasting, not a measured benchmark. Ambiguous names remain unresolved for her to check.

## Who pays, and for what

Solo portrait and wedding photographers pay when preparing client selections for final retouching, particularly when they must deliver sequential filenames.

Today they preserve original names, use gallery copy lists, or compare images manually. An [Adobe community question](https://community.adobe.com/questions-675/how-to-view-images-that-have-been-exported-with-a-different-name-940098) describes this renamed-export problem. I found no measured time study: 30 selections at 30 seconds each would mean 15 minutes, an illustrative assumption.

## What the AI agent would build

The smallest version has an export-job panel, saved-job list, filename paste/import box, match preview, and collection-creation button. A local ledger records each successfully rendered filename, its source's persistent identifier, and its catalog. Photos stay on the customer's computer.

[Adobe supports Lua export plugins](https://developer.adobe.com/lightroom-classic/). The [mirrored Adobe reference](https://lrc.mcor.dev/modules/LrExportRendition.html) exposes the source photo and rendered path. These are the necessary building blocks, not proof the implementation works.

The agent would implement local processing, atomic ledger writes, backups, a download website, and license activation with cached access. Its first technical test must recover exact alternate edits after export, restart, and source renaming. Tests also cover canceled exports, duplicate names, collapsed photo groups, missing files, and repeated imports. Uncertain matches never become automatic selections.

Estimate two to three weeks for one operating system, contingent on that test. No historical-export recovery, gallery integration, cross-catalog migration, or restoration of earlier edit settings. Normal use requires neither an online coding agent nor an artificial-intelligence service.

## Launch and ongoing maintenance

The owner needs a compatible laptop, Lightroom license, sample photographs, domain, checkout account, and installation guide. Existing hardware keeps launch plausibly within a few hundred dollars.

For the first ten users, request a developer badge and publish a trial with a renamed-export demonstration in Lightroom Queen's directory. Its [rules explicitly permit one thread per plugin](https://www.lightroomqueen.com/community/help/terms/). Invite photographers with an upcoming client-selection job; ten participants is a recruitment target, not forecast traffic.

The software checks ledger integrity, flags incomplete exports, and briefly retries busy-catalog writes. Unexpected failures offer sanitized diagnostics. The owner handles installation problems and refunds; the agent helps maintain compatibility tests after Lightroom updates. Nobody manually matches customer lists as ordinary fulfillment.

## Why now

This is an old unmet edge case, not a September deadline or newly unlocked platform.

The load-bearing claim is that filename-based selection tools lose matches after renaming. [Gallerina's own guide](https://gallerina.app/lightroom-sync) explicitly confirms that limitation. [Pixieset's help page](https://help.pixieset.com/hc/en-us/articles/115003505192-Viewing-Client-Favorites-in-Lightroom) separately documents partial-name false matches and missing alternate edits, called virtual copies. These establish a technical gap; they do not establish willingness to pay.

## What exists today

- [Photo List Importer](https://www.photographers-toolbox.com/products/lightroomstatistics/photolistimporter/index.php?sec=main) costs **€5**, plus applicable European value-added tax. It imports lists using filenames, paths, or persistent identifiers. Its documented workflow lacks the proposed automatic export-name ledger.
- [Any Filter](https://johnrellis.com/lightroom/anyfilter.htm) costs **$14.95** with unlimited upgrades. Exact list matching already solves ordinary filename selection cheaply.
- [Pixieset](https://pixieset.com/pricing/) offers a **$0** gallery tier; Basic is **$8/month billed annually or $10 monthly**. Its copy-list workflow works when names correspond.
- [Gallerina](https://gallerina.app/pricing) lists **$0/month with 1 GB** of project storage. Its selection sync is an attractive substitute if users keep consistent names.

The proposed premium buys automatic identity tracking before names diverge. It cannot justify charging merely for pasting a list.

## How it makes money

Proposal: **$39 once per major version**, including twelve months of fixes and support, after a limited trial proves one complete job.

**26 new sales × $39 = $1,014/month revenue.** This requires fresh buyers every month; it is not recurring subscription revenue.

[Lemon Squeezy](https://www.lemonsqueezy.com/pricing) charges a base 5% plus $0.50 per transaction: $63.70 for those sales. Budget $80–100 allowing for [additional fees](https://docs.lemonsqueezy.com/help/getting-started/fees), plus assumed $5–15 hosting and $30 development-license allowance monthly. There are no hosted photo-storage or model fees. Revenue excludes refunds, taxes, and owner labor; profitable acquisition remains unproven.

## The riskiest assumption

Photographers will adopt a preventive export step and pay $39 rather than change their naming convention.

Within a week, seek moderator permission to show a static workflow mockup in r/Lightroom. Recruit ten Classic users who renamed a recent delivery; ask for anonymized examples and a trial reservation at the stated price. Stop if fewer than three demonstrate recurring mismatches and request the trial. No code or payment is needed.

## What I rejected

Both alternatives passed the scoped software-product gate: local, reusable, reversible tools using customer-owned files.

- **Obsidian publishing checks:** teachers select notes and receive missing-link reports. The agent builds a local plugin; the owner arranges checkout and directory distribution. Killed on economics: [native publishing controls](https://obsidian.md/help/publish/publish) already cover much of the need.
- **InDesign image-description spreadsheet review:** catalog designers export descriptions, edit them, and preview reimported changes. The agent builds the script; the owner supplies a license, test documents, checkout, and Adobe-community distribution. Stable image-placement identifiers need testing, and users must review changes. Killed on demand: [Links Report](https://www.marspremedia.com/software/indesign/links-report) already exports descriptions free, leaving a thin, unvalidated paid import feature.

## The part I would argue against

A better filename convention may solve this permanently for nothing. An [existing discussion](https://www.lightroomqueen.com/community/threads/titles-vs-captions-vs-file-names.20954/) already explores naming and plugin workarounds. People discover the pain after exporting, precisely when this product cannot help. That timing mismatch could defeat an otherwise useful tool.

## Sources

- [Adobe discussion](https://community.adobe.com/questions-675/how-to-view-images-that-have-been-exported-with-a-different-name-940098) — photographer's problem.
- [Pixieset help](https://help.pixieset.com/hc/en-us/articles/115003505192-Viewing-Client-Favorites-in-Lightroom) — matching limitations.
- [Gallerina guide](https://gallerina.app/lightroom-sync) — renamed-export constraint.
- [Photo List Importer](https://www.photographers-toolbox.com/products/lightroomstatistics/photolistimporter/index.php?sec=main) — features and price.
- [Any Filter](https://johnrellis.com/lightroom/anyfilter.htm) — price and matching.
- [Pixieset pricing](https://pixieset.com/pricing/) — gallery costs.
- [Gallerina pricing](https://gallerina.app/pricing) — free allowance.
- [Adobe developer page](https://developer.adobe.com/lightroom-classic/) — plugin support.
- [Export reference mirror](https://lrc.mcor.dev/modules/LrExportRendition.html) — rendering hooks.
- [Forum rules](https://www.lightroomqueen.com/community/help/terms/) — permitted distribution.
- [Checkout pricing](https://www.lemonsqueezy.com/pricing) and [fees](https://docs.lemonsqueezy.com/help/getting-started/fees) — payment costs.
- [Obsidian publishing](https://obsidian.md/help/publish/publish) — native substitute.
- [Links Report](https://www.marspremedia.com/software/indesign/links-report) — free export.
- [Naming discussion](https://www.lightroomqueen.com/community/threads/titles-vs-captions-vs-file-names.20954/) — cheaper workarounds.
