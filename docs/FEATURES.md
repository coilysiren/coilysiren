# Features

Baseline inventory of what `coilysiren/coilysiren` (the GitHub profile repo) ships today. Use this as the reference point for scope changes. When a feature is added, removed, or materially reshaped, update the relevant section so the diff against this file shows scope drift over time.

Last full sweep: 2026-05-11.

## Profile landing page

- **GitHub profile README** at [README.md](../README.md), rendered as the landing page on <https://github.com/coilysiren>.
- **Hero block**: faux SSH banner, lights-out platform framing, current shift report (role, employer, location, specialties, prior art).
- **`production_floor` table**: hand-curated index of active builds (gauntlet, otel-a2a-relay, infrastructure, coily, eco-mods-public, eco-cycle-prep, eco-jobs-tracker, eco-mcp-app, eco-telemetry, repo-recall, claude-code-pulse, galaxy-gen) with one-line descriptions and status badges.
- **Stack badges**: language + cloud + observability + AI tooling shields.
- **`service_history` block**: pre-formatted career timeline pointing at [coilysiren.me/resume](https://coilysiren.me/resume) and [coilysiren.me/now](https://coilysiren.me/now).
- **`comms` block**: links to site, Bluesky, X, LinkedIn.

## Resume sync target

- **`README.md` is a sync target** for `Resume.md`'s intro paragraphs. Sync list lives in the parent `coilysiren/AGENTS.md`. Direct-to-main, no PR.

## Repo baseline

- **Commit-msg hook** at [scripts/check-commit-closes-issue.py](../scripts/check-commit-closes-issue.py), canonical version rolled out from `coilysiren/agentic-os-kai`.

## See also

- [README.md](../README.md) - the rendered profile.
- [AGENTS.md](../AGENTS.md) - agent-facing operating rules for this repo.

Cross-reference convention from [coilysiren/agentic-os-kai#313](https://github.com/coilysiren/agentic-os-kai/issues/313). The worked example is [otel-a2a-relay/docs/FEATURES.md](https://github.com/coilysiren/otel-a2a-relay/blob/main/docs/FEATURES.md).
