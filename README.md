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

* **[coilyco-flight-deck](https://github.com/coilyco-flight-deck)** - public builds - **23 aggregate tags** across the governed agent stack, shared developer environment, and fleet infrastructure. [Organization profile](https://coilysiren.me/orgs/coilyco-flight-deck/).
* **[coilyco-bridge](https://github.com/coilyco-bridge)** - control surfaces - **16 aggregate tags** across operator-specific context and deployment machinery. [Organization profile](https://coilysiren.me/orgs/coilyco-bridge/).
* **[coilyco-gaming](https://github.com/coilyco-gaming)** - games and game tooling - **22 aggregate tags** across games, simulations, mods, and game-service tooling. [Organization profile](https://coilysiren.me/orgs/coilyco-gaming/).
* **[coilysiren](https://github.com/coilysiren)** - personal work - **15 aggregate tags** across the profile, website, and private coordination surfaces.

## `> k3s`

The fleet has two small k3s clusters. The primary site is the application and state plane. The second site is the operations and recovery plane. This is the deployment-declaration view, grouped by namespace rather than pod count.

### Application namespaces

* **`coilysiren-eco-*`** - the Eco companion stack, including the main service, Discord worker, and price calculator.
* **`atlas`, `factory-game`, `galaxy-gen`, `website`** - public and staging web surfaces.
* **`comfyui`, `open-webui`, `reference-media`** - private AI and media interfaces. ComfyUI keeps the GPU runtime on a tower and puts only its front door in k3s.
* **`forgejo-issues`** - the local issue mirror, synchronization workers, and query surfaces.
* **`*-mcp`** - narrowly scoped MCP services for node health, browsers, telemetry, project trackers, social sources, games, and infrastructure.

### Meta components

* **`authelia`** - OAuth 2.1 and OpenID Connect for hosted MCP clients. Per-service oauth2-proxy gates validate Authelia-signed access tokens.
* **`kube-system`, `cert-manager`, `external-dns`** - Traefik ingress, cluster DNS, Route 53 records, and DNS-01 certificates.
* **`external-secrets`** - cluster-side synchronization from AWS Systems Manager Parameter Store.
* **`tailscale`** - the operator and per-service proxies that publish private services onto the tailnet.
* **`forgejo`, `registry`, `flux-system`** - source hosting, the internal OCI registry, build and deploy runners, and staged GitOps reconciliation.
* **`observability`, `fleet-reachability`** - metrics, errors, traces, logs, and cross-site Gatus checks.
* **`agent-proxy`, `litellm`** - the ser8 inference control plane, kept separate from the application cluster.

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

The homelab spans two physical sites on one Tailscale mesh. Each site runs a small k3s cluster: the application and state plane at the primary site, then the operations and recovery plane at the second. GPU machines join on demand for local inference, while hosted frontier models handle work beyond the small local tier.

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
