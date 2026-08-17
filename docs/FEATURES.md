# Features

Baseline inventory of what `coilysiren/coilysiren` ships today. `README.md`
renders as the profile landing page at <https://github.com/coilysiren>.

## Profile landing page

* **Project-first README** - the page mirrors the coilysiren.me homepage:
  Kai's agentic-engineering-platform thesis leads into the active portfolio,
  then the deeper namespace, platform, career, and contact context.
* **Mobile-first layout** - no wide data tables, nothing wider than two
  columns, code blocks under about 44 characters. The `production_floor`
  index is the one deliberate exception, using the established two-column
  logo-and-summary table.
* **Hero block** - the "I build agentic engineering platforms" opening, the
  lights-out status line, Kai's avatar, the career throughline, and a link to
  the visual project map.
* **Active portfolio** - three ordered groups (Infrastructure, Agent platform,
  Product) carrying the same names, descriptions, and public links as the
  website catalogue. Private work is described by function, never by
  repository name.
* **Production floor** - an image-backed table mapping the four organizations,
  each row listing per-tag counts without enumerating repositories, linking to
  the matching coilysiren.me profile.
* **Platform notes** - one durable architecture section covering the two-site
  planes, operating boundaries, observability posture, failure assumptions,
  and core tools, with no point-in-time device or pod counts.
* **Career and elsewhere** - mobile-width role history pointing at the resume,
  plus site, Bluesky, X, and LinkedIn.

`README.md` is a sync target for the canonical bio introduction, with the sync
list in the `writing-bio-surface` skill in Kai's private agent context.
[.agentic-os-ignore](../.agentic-os-ignore) keeps this repo outside fleet
baseline normalization, so the profile is proofread directly.

## See also

* [README.md](../README.md) - human-facing profile.
* [AGENTS.md](../AGENTS.md) - agent bootstrap guide and repository rules.
* [.ward/ward.yaml](../.ward/ward.yaml) - catalog metadata only.
