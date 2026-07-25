```
$ ssh kai@kai-server

┌────────────────────────────────────┐
│ kai-server · lights-out            │
│ operator: kai siren · east bay, ca │
│ status: agents working the line    │
└────────────────────────────────────┘
```

⚙⚒ lights out, platform's green, agents are working the line ⚒⚙

## `> whoami`

<img src="https://github.com/coilysiren.png?size=200" width="88" align="right" alt="Kai Siren">

**Hi! I'm Kai.** I'm a platform engineer, ten-plus years in. I build tools that make engineering teams faster. The current edge of that work is agentic developer tooling and observability designed for LLM consumers.

Outside work, I run a two-site homelab and a public game server. They are practical testbeds for the same platform, reliability, and observability questions I work on professionally.

> [/now](https://coilysiren.me/now) is the living snapshot of what I'm building, testing, and thinking about.

## `> lights_out`

The goal is unattended software work that stays bounded, inspectable, and recoverable. The current public stack covers four parts of that problem:

* **[ward](https://github.com/coilyco-flight-deck/ward)** - governed execution - runs unattended coding agents in fresh clones and least-access containers, with durable issue, branch, review, and outcome trails.
* **[cli-guard](https://github.com/coilyco-flight-deck/cli-guard)** - execution boundary - validates arguments, scopes filesystem access, gates repository state, controls egress, and records an append-only audit log.
* **[agent-compose](https://github.com/coilyco-flight-deck/agent-compose)** - context assembly - selects and compiles the instructions an agent starts with while keeping executable authority outside the bundle.
* **[agentic-os](https://github.com/coilyco-flight-deck/agentic-os)** - shared operating layer - carries cross-platform shell setup, public-safe agent skills, and the cross-repo validation catalog.

The observability work sits underneath that stack: local-first session data, materialized views over agent behavior, and model-facing query surfaces. The useful question is not whether an agent produced a diff. It is whether the system can explain what happened, recover from interruption, and prove the result.

## `> production_floor`

The work is split across four namespaces:

* **[coilyco-flight-deck](https://github.com/coilyco-flight-deck)** - public builds - the governed agent stack, shared developer environment, and fleet infrastructure.
* **[coilyco-bridge](https://github.com/coilyco-bridge)** - control surfaces - operator-specific context and deployment machinery.
* **[coilyco-gaming](https://github.com/coilyco-gaming)** - games and game tooling - [Eco services](https://github.com/coilyco-gaming/eco-app), [Eco mods](https://github.com/coilyco-gaming/eco-mods), [Steam operations](https://github.com/coilyco-gaming/steam-ops), and the [galaxy generator](https://github.com/coilyco-gaming/galaxy-gen).
* **[coilysiren](https://github.com/coilysiren)** - personal work - this profile and [coilysiren.me](https://coilysiren.me).

## `> shift_report`

```yaml
role:     Senior Platform Engineer
employer: Kapwing

focus:
  - developer platforms
  - agentic tooling
  - observability
  - infrastructure and SRE

background:
  - urfave/cli maintainer
  - government infrastructure
  - multi-cloud platforms
  - engineering management
```

## `> tailnet`

The homelab spans two physical sites on one Tailscale mesh. An always-on x86 host carries k3s and the stateful services. A separate site provides the recovery boundary. GPU machines join on demand for local inference, while hosted frontier models handle work beyond the small local tier.

The durable choices are simple: isolate state, keep recovery on a different power and network path, make services observable, and assume every compute node except the primary can disappear. This profile keeps the architecture, not point-in-time device and pod dumps.

## `> stack`

Go, Python, TypeScript, Bash, C#. AWS, Kubernetes, Terraform, Docker, Tailscale. Prometheus, Grafana, Sentry, OpenTelemetry. Codex, Claude Code, MCP.

## `> service_history`

```
2025-now   Kapwing    Senior SWE
2023-2025  Nava       Principal Infra
2022-2023  Textio     Staff Infra
2021-2022  EnergyHub  DevOps EM
2020-2021  Bluelink   Senior Backend
2018-2020  Textio     Senior Infra
2016-2018  Callisto   Senior SWE
```

Older: Harlot, Quirell/CollectQT, NASA Goddard. Full résumé: [coilysiren.me/resume](https://coilysiren.me/resume).

## `> comms`

[coilysiren.me](https://coilysiren.me) · [Bluesky](https://bsky.app/profile/coilysiren.me) · [X](https://x.com/coilysiren) · [LinkedIn](https://linkedin.com/in/coilysiren)

## See also

* [AGENTS.md](AGENTS.md) - agent bootstrap guide and operating rules.
* [docs/FEATURES.md](docs/FEATURES.md) - inventory of what ships today.
* [.ward/ward.yaml](.ward/ward.yaml) - repository command policy.
