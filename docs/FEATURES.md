# Features

Baseline inventory of what `coilysiren/coilysiren` ships today. `README.md` renders as the profile landing page at <https://github.com/coilysiren>.

Last full sweep: 2026-07-25.

## Profile landing page

* **Project-first README** - the page mirrors the coilysiren.me homepage: Kai's
  agentic-engineering-platform thesis leads directly into the active portfolio,
  followed by the deeper namespace, platform, career, and contact context that
  fits a GitHub profile.
* **Mobile-first layout** - no wide data tables, no layout wider than two
  columns, and code blocks stay under about 44 characters. The
  `production_floor` organization index deliberately uses the established
  two-column logo-and-summary table.
* **Hero block** - the website's "I build agentic engineering platforms"
  opening, lights-out status line, Kai's avatar, career throughline, and a link
  to the shorter visual project map.
* **Active portfolio** - three ordered groups, Infrastructure, Agent platform,
  and Product, carry the same current project names, descriptions, and public
  GitHub links as the website catalogue. Private work is described by function
  without exposing repository names.
* **Production floor** - an image-backed, two-column table maps
  `coilyco-flight-deck`, `coilyco-bridge`, `coilyco-gaming`, and `coilysiren`.
  Each row lists the repository count for every tag without enumerating
  repositories, and the three organization rows link to the corresponding
  coilysiren.me profiles.
* **Platform notes** - one durable architecture section replaces the separate
  k3s, tailnet, and stack inventories. It describes the two-site planes,
  operating boundaries, observability posture, failure assumptions, and core
  tools without point-in-time device or pod counts.
* **Career** - mobile-width role history and background context pointing at the
  full resume.
* **Elsewhere** - site, Bluesky, X, and LinkedIn.

## Resume sync target

* **`README.md` is a sync target** for the canonical bio introduction. The
  sync list lives in the `writing-bio-surface` skill from Kai's private agent
  context.

## Repo baseline

* **Fleet-management exemption** - [.agentic-os-ignore](../.agentic-os-ignore) keeps this profile repo outside baseline normalization, and [.pre-commit-config.yaml](../.pre-commit-config.yaml) remains intentionally empty. The profile is proofread directly.

## See also

* [README.md](../README.md) - human-facing profile.
* [AGENTS.md](../AGENTS.md) - agent bootstrap guide and repository rules.
* [.ward/ward.yaml](../.ward/ward.yaml) - repository command policy.
