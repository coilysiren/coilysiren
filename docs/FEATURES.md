# Features

Baseline inventory of what `coilysiren/coilysiren` (the GitHub profile repo) ships today. Use this as the reference point for scope changes. When a feature is added, removed, or materially reshaped, update the relevant section so the diff against this file shows scope drift over time.

Last full sweep: 2026-06-04.

## Profile landing page

- **GitHub profile README** at [README.md](../README.md), rendered as the landing page on <https://github.com/coilysiren>. Deliberately long-form: this repo is exempt from the fleet size caps, so the README is the one place that carries everything inline.
- **Hero block**: faux SSH banner with a `tailscale status` fleet readout (hostnames real, IPs redacted), lights-out platform framing, current shift report (role, employer, location, specialties, prior art).
- **`tailnet` section**: two-site fleet diagram, per-node hardware inventory (kai-server, kai-desktop-tower, kai-windows-laptop, kais-macbook-pro, ser8), local-LLM mode map.
- **`production_floor` table**: hand-curated index of active builds (gauntlet, session-lattice, infrastructure, coily, eco-mods-public, eco-cycle-prep, eco-jobs-tracker, eco-mcp-app, eco-telemetry, repo-recall, claude-code-pulse, galaxy-gen) with one-line descriptions and status badges. Inline in the README since 2026-06-12; [production_floor.md](production_floor.md) is a pointer.
- **`lights_out` section**: the dark-factory story (coily security boundary, gauntlet adversarial verification, repo-recall / session-lattice / otel-a2a-relay observability substrate).
- **`service_history` block**: pre-formatted career timeline pointing at [coilysiren.me/resume](https://coilysiren.me/resume) and [coilysiren.me/now](https://coilysiren.me/now). Inline in the README since 2026-06-12; [service_history.md](service_history.md) is a pointer.
- **`faq` block**: why the long README, banner provenance, GitHub's ~512 KB markdown rendering ceiling.
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