# Security Policy

## Overview

The Slingshot is a client-side educational game. The game itself is a single HTML file that runs entirely in the browser: no accounts, no logins, no cookies, and no personal data collected.

Version 2 adds **Trajectory**, an optional benchmarking feature. Everything below describes exactly what it does.

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 2.x     | :white_check_mark: |
| 1.x     | :x:                |

## Data Handling

### The game
- Runs entirely in the browser; game state is held in browser memory
- No personal data is collected or transmitted by gameplay itself
- No accounts or authentication

### Trajectory (optional benchmarking)
- Entirely opt-in: players may skip it and play the game unchanged
- Players are identified only by a self-chosen nickname (30 characters max) and a study level — no real names, no email addresses, no accounts, no cookies
- Anonymous game outcomes (choices, milestones, valuation and similar gameplay metrics) are stored on EU servers (Supabase, Frankfurt) solely to show players how their game compares with others
- The database is protected by row-level security: public clients can add and read benchmark entries but cannot delete records, and game outcomes cannot be modified once written
- All values returned from the database are HTML-escaped before display

### Seed mode
Seed (learner) mode is never benchmarked and makes no network requests to the benchmarking service.

### Analytics (Umami)
The game uses Umami, a privacy-focused analytics tool, to collect anonymous, aggregate usage statistics: page views, feature clicks, country-level region, and device type. Umami sets no cookies, builds no user profiles, and respects the browser's Do Not Track setting. What is collected is described to players inside the game.

## For University IT and Data Protection Teams

The Slingshot is designed so that **no personal data is processed**, which is the shortest possible GDPR story:

- **No personal data collected.** No real names, email addresses, student numbers, accounts, or IP-based profiles. Players who opt into benchmarking are identified only by a nickname they invent, and are advised to pick something not linked to their identity.
- **No cookies.** The game sets no cookies and uses no advertising trackers. Usage counting is done with Umami, a cookieless analytics tool that collects only anonymous aggregate statistics (see Analytics above) — which is why no cookie consent banner is required.
- **EU data residency.** The anonymous benchmarking data that does exist is stored on Supabase servers in Frankfurt, Germany. Nothing is transferred outside the EEA.
- **No integration with university systems.** The game needs no LMS integration, no student authentication, and no procurement of user licences. Students simply open a web page.
- **Nothing to delete.** Because records are anonymous, they contain no personal data to be subject to access or erasure requests. A student who wants a benchmarking entry removed can contact the address below with their nickname.
- **Fully auditable.** The complete source code, including all network calls, is public in this repository. Your security team can verify every claim above by reading it.
- **Offline option.** Institutions that prefer zero network activity can download the HTML file and run it locally or from their own servers, with benchmarking disabled.

In our assessment no DPIA is required, as no personal data is processed; institutions applying their own thresholds are welcome to contact us with questions.

## Third-Party Resources

The game and website load the following external resources:
- Tailwind CSS (cdn.tailwindcss.com)
- jsPDF (cdnjs.cloudflare.com)
- Supabase JavaScript client (cdn.jsdelivr.net)
- Umami analytics (cloud.umami.is) — cookieless, anonymous, aggregate only

Users concerned about external dependencies can review the source code and host their own copies.

## Offline Use

The game can be downloaded and played offline. Offline play functions identically, with benchmarking silently disabled.

## Repository Security

Because the game is distributed as static files served from this repository, repository integrity is the project's primary security boundary.

- Write access is restricted to a single maintainer; no collaborator access is granted
- The maintainer account is protected by two-factor authentication
- The `main` branch is protected against force pushes and deletion
- Dependabot alerts are enabled
- The game has no build pipeline and minimal third-party dependencies (listed above), limiting supply-chain exposure
- All source code is public and independently auditable

## Reporting a Vulnerability

If you discover a security issue — for example a cross-site scripting vulnerability, or a problem with how external content or benchmark data is handled — please report it responsibly.

**Email**: ammon.salter@wbs.ac.uk

Please include a description of the vulnerability, steps to reproduce it, and the potential impact. Do not open a public issue for security vulnerabilities. We will acknowledge receipt within 7 days and aim to address confirmed vulnerabilities promptly.

## What This Policy Does Not Cover

- Vulnerabilities in browsers, operating systems, or third-party services (GitHub Pages, Supabase, CDNs)
- Issues arising from user modifications to the source code
- Gameplay bugs (please use the bug report issue template for those)

Thank you for helping keep this project safe.
