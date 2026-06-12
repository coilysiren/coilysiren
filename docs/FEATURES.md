# Features

Baseline inventory of what `coilysiren/coilysiren` (the GitHub profile repo) ships today. Use this as the reference point for scope changes. When a feature is added, removed, or materially reshaped, update the relevant section so the diff against this file shows scope drift over time.

Last full sweep: 2026-06-04.

## Profile landing page

- **GitHub profile README** at [README.md](../README.md), rendered as the landing page on <https://github.com/coilysiren>.
- **Hero block**: faux SSH banner, lights-out platform framing, current shift report (role, employer, location, specialties, prior art).
- **`production_floor` table**: hand-curated index of active builds (gauntlet, session-lattice, infrastructure, coily, eco-mods-public, eco-cycle-prep, eco-jobs-tracker, eco-mcp-app, eco-telemetry, repo-recall, claude-code-pulse, galaxy-gen) with one-line descriptions and status badges. Lives in [production_floor.md](production_floor.md), linked from the README to stay under the size cap.
- **Stack badges**: language + cloud + observability + AI tooling shields.
- **`service_history` block**: pre-formatted career timeline pointing at [coilysiren.me/resume](https://coilysiren.me/resume) and [coilysiren.me/now](https://coilysiren.me/now). Lives in [service_history.md](service_history.md), linked from the README to stay under the size cap.
- **`comms` block**: links to site, Bluesky, X, LinkedIn.

## Resume sync target

- **`README.md` is a sync target** for `Resume.md`'s intro paragraphs. Sync list lives in the parent `coilysiren/AGENTS.md`. Direct-to-main, no PR.

## Repo baseline

- **Fleet-management exemption** via [.agentic-os-ignore](../.agentic-os-ignore): baseline rollouts (managed pre-commit block, hook wiring) skip this repo, and [.pre-commit-config.yaml](../.pre-commit-config.yaml) is intentionally empty - the agentic-os hook suite, including the `closes-issue` / `conventional-commit` commit-msg enforcement, no longer runs here. The marker file documents which tools honor it and which gaps have issues filed.

## See also

- [README.md](../README.md) - human-facing intro.
- [AGENTS.md](../AGENTS.md) - agent-facing operating rules.
- [.coily/coily.yaml](../.coily/coily.yaml) - allowlisted commands.

Cross-reference convention from [coilysiren/agentic-os#59](https://github.com/coilysiren/agentic-os/issues/59).