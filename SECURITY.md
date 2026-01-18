# Security Policy

## Overview

The Slingshot: An AI Startup Simluation is a client-side educational application that runs entirely in the user's browser. It does not collect, transmit, or store any personal data on external servers.

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 1.0.x   | :white_check_mark: |

## Security Considerations

### Data Handling
- The game runs entirely in the browser
- No user data is transmitted to external servers
- No accounts or authentication required
- Game state is stored only in browser memory (lost on page refresh)

### Third-Party Resources
The game loads the following external resources:
- Tailwind CSS (from cdn.tailwindcss.com)
- jsPDF library (from cdnjs.cloudflare.com)

These are well-established CDN services, but users concerned about external dependencies can review the source code and host their own copies of these libraries.

### Offline Use
For maximum privacy, download the HTML file and play offline. The offline version functions identically without any network requests.

## Reporting a Vulnerability

If you discover a security vulnerability in The AI Startup Game, please report it responsibly:

1. **Do not** open a public issue for security vulnerabilities
2. Contact the maintainers directly via the repository's security advisories feature
3. Provide a clear description of the vulnerability and steps to reproduce it
4. Allow reasonable time for the issue to be addressed before any public disclosure

We appreciate responsible disclosure and will acknowledge contributors who help improve the security of the project.

## Scope

Please note that this is educational software provided as-is. The security considerations here relate to the software itself, not to any decisions players might make based on gameplay.
