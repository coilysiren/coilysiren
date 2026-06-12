```
$ ssh kai@kai-server

  ┌──────────────────────────────────────────────────────────────────┐
  │  kai-server · lights-out · uptime: ten years counting            │
  │  operator: kai siren · east bay, ca                              │
  └──────────────────────────────────────────────────────────────────┘

  ● platform.target - kai's lights-out factory
       Active: active (running)
       Status: "agents on shift, line is green"

$ tailscale status
  100.··.··.··   kai-server           linux    online   [k3s · always-on]
  100.··.··.··   kai-desktop-tower    windows  online   [3090 ti · 24 GB · llm bench]
  100.··.··.··   kai-windows-laptop   windows  online   [travel · burst gpu]
  100.··.··.··   kais-macbook-pro     macos    online   [travel default]
  100.··.··.··   ser8                 linux    online   [warm standby · site 2]
  100.··.··.··   gha-runner-*         linux    idle     [ci · ephemeral]

  ⚙⚒ one tailnet, two sites, agents on the line ⚒⚙
```

<table>
<tr>
<td width="58%" valign="top">

### `> whoami`

**Hi! I'm Kai.** Platform engineer, 10+ years in. Day job: accelerating engineers as their work goes agentic, with observability for LLM consumers as the current bet. Off-hours I run a small lights-out factory: single-node k3s homelab, a herd of agents building and breaking my own services in the dark, a steady output of small tools. Wire it in, instrument it, push on it until it breaks.

> Most excited about **Gauntlet**: a two-agent adversarial loop that infers software correctness under sustained, targeted attack. - [/now](https://coilysiren.me/now)

</td>
<td width="42%" valign="top">

### `> shift_report`

```yaml
operator:  Kai Siren
role:      Senior Platform Engineer
employer:  Kapwing
location:  East Bay, CA
shift:     lights-out
fleet:     5 machines · 1 tailnet · 2 sites

specialties:
  - platform / SRE
  - AI agents + MCP
  - observability
  - adversarial testing

prior_art:
  - urfave/cli maintainer
  - HHS gov site @ Nava
  - DevOps EM @ EnergyHub
  - BGP VPN @ Textio
  - Crypto product @ Callisto
```

</td>
</tr>
</table>

## `> tailnet`

"Homelab" undersells it. The fleet is five machines joined by Tailscale into a single tailnet across two physical sites, with one of them rack-shaped enough to deserve the homelab name. Everything below talks to everything else over the mesh: laptops, WSL instances, k3s services, game servers, even the ephemeral GitHub Actions runners that deploy to the cluster.

```
        site 1 (east bay)                      site 2
  ┌────────────────────────────┐        ┌──────────────────────┐
  │  kai-server     [always-on]│        │  ser8  [warm standby]│
  │   └─ k3s · game servers    │◄──────►│   └─ DR target for   │
  │  kai-desktop-tower         │tailnet │      the k3s control │
  │   └─ rtx 3090 ti · llm     │  mesh  │      plane           │
  │  kasa hs300 power strip    │        └──────────────────────┘
  │   └─ the hard-reset path   │             ▲
  └────────────────────────────┘             │
              ▲                              │
              ▼                              ▼
  ┌──────────────────────────────────────────────────────┐
  │  roaming: kais-macbook-pro · kai-windows-laptop      │
  │  ephemeral: gha runners · wsl guests · k8s services  │
  └──────────────────────────────────────────────────────┘
```

### `> fleet_inventory`

| Node | Hardware | Role |
|------|----------|------|
| **kai-server** | Intel i7-14700 (8P+12E, 28 threads), 32 GB, NVMe, no dGPU | The always-on box. Single-node k3s running every personal service, plus host-side game servers (Eco, Factorio, Icarus, Core Keeper). The only machine allowed to hold state. |
| **kai-desktop-tower** | Ryzen 9 9950X3D, 64 GB DDR5-6000, RTX 3090 Ti 24 GB, fresh AM5 rebuild | Daily driver and the local-LLM bench. The 24 GB card serves the 32B-tier models. |
| **kai-windows-laptop** | i7-11800H, 16 GB, RTX 3060 mobile 6 GB | Travel Windows host. Burst inference when it happens to be open. |
| **kais-macbook-pro** | Apple Silicon | Travel default. Where most Claude Code sessions originate. Not a serious inference host, and it knows it. |
| **ser8** | Beelink SER8, Ryzen 7 PRO 8845HS, 64 GB, 1 TB NVMe, 2.5 GbE | Cross-site warm standby for the k3s control plane. Manual promotion, not HA. A separate power, ISP, and site failure domain is what makes it a real DR story. |

Footnotes to the inventory: a worker-only Radxa Zero 3W appears in the standby topology but is unfit to hold state (WiFi plus SD card, no thanks), and a Kasa HS300 smart power strip feeds the site-1 fleet as the hard-power-cycle path of last resort. When software observability fails, there is always the physical layer.

### `> local_llm_modes`

The fleet maps onto a three-mode local-model plan:

- **Mode 1 (burst)** - the dGPU machines, when they happen to be on. The tower's 3090 Ti is the workhorse, the laptop's 3060 pitches in.
- **Mode 2 (always-on)** - kai-server orchestrates, calls into the tower's GPU over the tailnet when reachable, falls back to CPU-only inference or an API otherwise. CPU-only on the i7-14700 is real but humble.
- **Mode 3 (api)** - frontier models over the wire for everything that deserves them.

## `> production_floor`

Hand-curated index of active builds from the lights-out factory.

| Build | What it is | Status |
|-------|-----------|--------|
| 🥊 **[gauntlet](https://github.com/coilysiren/gauntlet)** | Two-agent adversarial loop. Infers correctness under sustained, targeted attack. | `RUNNING HOT` |
| 🧬 **[session-lattice](https://github.com/coilysiren/session-lattice)** | Materialized-view service over Claude session data via Feldera (DBSP). Pulls from repo-recall, served to luca. | `SCAFFOLDED` |
| 🛰️ **[infrastructure](https://github.com/coilysiren/infrastructure)** | Single-node k3s, GH Actions deploys, SSM-backed secrets, Tailscale. | `OPERATIONAL` |
| 🛡️ **[coily](https://github.com/coilysiren/coily)** | Escape-hatch-resistant CLI security boundary for privileged ops. Audit-logs everything. | `ACTIVE` |
| 🌱 **[eco-mods-public](https://github.com/coilysiren/eco-mods-public)** + **[eco-cycle-prep](https://github.com/coilysiren/eco-cycle-prep)** | C# mods + Python automation for [Eco via Sirens](https://play.eco). | `ACTIVE` |
| 📡 **[eco-jobs-tracker](https://github.com/coilysiren/eco-jobs-tracker)** | FastAPI + HTMX dashboard of player professions. | `LIVE` |
| 🔌 **[eco-mcp-app](https://github.com/coilysiren/eco-mcp-app)** + 📊 **[eco-telemetry](https://github.com/coilysiren/eco-telemetry)** | Claude Desktop widget + OTel mod for Eco servers. | `WIP/ACTIVE` |
| 🧠 **[repo-recall](https://github.com/coilysiren/repo-recall)** + 💓 **[claude-code-pulse](https://github.com/coilysiren/claude-code-pulse)** | Claude Code substrate: session indexing + per-turn vitals. | `ACTIVE` |
| 🌌 **[galaxy-gen](https://github.com/coilysiren/galaxy-gen)** | Procedural galaxy sim, Rust -> WASM. | `LIVE` |

## `> lights_out`

The factory framing is not a bit. The goal is a dark factory: code written by agents, verified by attack, shipped while I sleep. The pieces that make that safe instead of terrifying:

- **A security boundary first.** Agents on this fleet route privileged operations through [coily](https://github.com/coilysiren/coily), an escape-hatch-resistant CLI wrapper. Every privileged call lands in an audit log. The interesting design constraint is that the boundary must hold against the agent operating inside it, which rules out most of the obvious implementations.
- **Verification by adversary, not by vibes.** [gauntlet](https://github.com/coilysiren/gauntlet) runs a two-role loop, an attacker and an inspector, against a running service and infers correctness from how the service behaves under sustained attack. Built for the case where a human never reads the diff.
- **Observability over the whole substrate.** [repo-recall](https://github.com/coilysiren/repo-recall) joins OTel spans, git state, and Claude Code sessions into one queryable surface. [session-lattice](https://github.com/coilysiren/session-lattice) maintains incremental views over it. Agent-to-agent traffic rides [otel-a2a-relay](https://github.com/coilyco-flight-deck/otel-a2a-relay), so even the agents talking to each other shows up as spans.

When the line breaks, the agents file the issue. When it breaks badly, see the power strip above.

## `> stack`

Python, Go, TypeScript, Bash, C#. AWS, Kubernetes (k3s), Terraform, Docker, Tailscale. Prometheus, Grafana, Sentry, OpenTelemetry. Claude Code, MCP.

## `> service_history`

```
2025 - now    Kapwing       Senior Software Engineer
2023 - 2025   Nava          Principal Infrastructure Engineer
2022 - 2023   Textio        Staff Infrastructure Engineer
2021 - 2022   EnergyHub     DevOps Engineering Manager
2020 - 2021   Bluelink      Senior Backend Engineer
2018 - 2020   Textio        Senior Infrastructure Engineer
2016 - 2018   Callisto      Senior Software Engineer
```

Older: Harlot, Quirell/CollectQT, NASA Goddard. Full résumé: [coilysiren.me/resume](https://coilysiren.me/resume). What I'm doing right now: [coilysiren.me/now](https://coilysiren.me/now).

## `> faq`

**Why does a profile README have a network diagram?** Because this repo is the one place in the fleet with no size cap, no managed hooks, and no validators. Every other repo I own answers to a pre-commit suite rolled out from a central baseline. This one carries an exemption marker and does what it wants. Naturally it became the long-form surface.

**Is the SSH banner real?** It's a faithful dramatization. The hostnames are real, the tailnet is real, the systemd unit is aspirational, and the IPs are redacted because opaque identifiers stay out of tracked files on principle.

**How long can a GitHub README get?** No documented cap. Markdown rendering gives out around 512 KB per file, and the repo page truncates very large READMEs before the blob view does. This one has two orders of magnitude of headroom, which sounds like a challenge but is actually a budget.

## `> comms`

[coilysiren.me](https://coilysiren.me) · [Bluesky](https://bsky.app/profile/coilysiren.me) · [X](https://x.com/coilysiren) · [LinkedIn](https://linkedin.com/in/coilysiren)

## See also

- [AGENTS.md](AGENTS.md) - agent-facing operating rules.
- [docs/FEATURES.md](docs/FEATURES.md) - inventory of what ships today.
- [.coily/coily.yaml](.coily/coily.yaml) - allowlisted commands.

Cross-reference convention from [coilysiren/agentic-os#59](https://github.com/coilysiren/agentic-os/issues/59).
