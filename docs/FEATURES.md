# Features

Baseline inventory of what `coilysiren/coilysiren` ships today. `README.md` renders as the profile landing page at <https://github.com/coilysiren>.

Last full sweep: 2026-07-25.

## Profile landing page

* **Compact, story-first README** - the page moves from identity to the lights-out thesis, current public work, career context, durable homelab architecture, and contact links. It avoids point-in-time operational snapshots that become stale between updates.
* **Mobile-first layout** - no wide data tables, no layout wider than two
  columns, and code blocks stay under about 44 characters. The
  `production_floor` organization index deliberately uses the established
  two-column logo-and-summary table.
* **Hero block** - a narrow faux SSH banner, the canonical lights-out tagline, and Kai's avatar.
* **`whoami` section** - the platform-engineering introduction aligns with the resume surface and points to [/now](https://coilysiren.me/now) for current work.
* **`lights_out` section** - the current public stack: ward for governed execution, cli-guard for the command boundary, agent-compose for context assembly, and agentic-os for the shared operating layer. Archived experiments are not presented as active systems.
* **`production_floor` section** - an image-backed, two-column table maps
  `coilyco-flight-deck`, `coilyco-bridge`, `coilyco-gaming`, and `coilysiren`.
  Each row lists the repository count for every tag without enumerating
  repositories, and the three organization rows link to their native
  coilysiren.me profiles.
* **`k3s` section** - declaration-backed overview of the two k3s planes. Application namespaces are grouped by purpose, followed by shared components for authentication, ingress, DNS, certificates, secrets, tailnet exposure, delivery, observability, reachability, and inference routing. It describes deployed shape without claiming live health.
* **`shift_report` section** - compact role, employer, focus, and background context without duplicating the full career timeline.
* **`tailnet` section** - stable architecture only: a two-site Tailscale mesh, an application and state k3s plane, a separate operations and recovery k3s plane, and on-demand inference machines. Device inventories, pod dumps, and live counts are intentionally omitted.
* **`service_history` section** - mobile-width career timeline pointing at the full resume.
* **`comms` section** - site, Bluesky, X, and LinkedIn.

## Resume sync target

* **`README.md` is a sync target** for the canonical bio introduction. The sync list lives in the `writing-bio-surface` skill from `coilyco-bridge/agentic-os-kai`.

## Repo baseline

* **Fleet-management exemption** - [.agentic-os-ignore](../.agentic-os-ignore) keeps this profile repo outside baseline normalization, and [.pre-commit-config.yaml](../.pre-commit-config.yaml) remains intentionally empty. The profile is proofread directly.

## See also

* [README.md](../README.md) - human-facing profile.
* [AGENTS.md](../AGENTS.md) - agent bootstrap guide and repository rules.
* [.ward/ward.yaml](../.ward/ward.yaml) - repository command policy.
