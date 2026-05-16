```
$ ssh kai@kai-server

  ┌─────────────────────────────────────────────────────────┐
  │  kai-server · lights-out · uptime: ten years counting   │
  │  operator: kai siren · east bay, ca                     │
  └─────────────────────────────────────────────────────────┘

  ● platform.target - kai's lights-out factory
       Active: active (running)
       Status: "agents on shift, line is green"

  ⚙⚒ lights out, platform green, agents on the line ⚒⚙
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
homelab:   single-node k3s on Tailscale

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

## `> production_floor`

| Build | What it is | Status |
|-------|-----------|--------|
| 🥊 **[gauntlet](https://github.com/coilysiren/gauntlet)** | Two-agent adversarial loop. Infers correctness under sustained, targeted attack. | `RUNNING HOT` |
| 🔁 **[otel-a2a-relay](https://github.com/coilysiren/otel-a2a-relay)** | "o2r". Relay between A2A agents that turns wire traffic into OTel spans. | `ACTIVE` |
| 🛰️ **[infrastructure](https://github.com/coilysiren/infrastructure)** | Single-node k3s, GH Actions deploys, SSM-backed secrets, Tailscale. | `OPERATIONAL` |
| 🛡️ **[coily](https://github.com/coilysiren/coily)** | Escape-hatch-resistant CLI security boundary for privileged ops. Audit-logs everything. | `ACTIVE` |
| 🌱 **[eco-mods-public](https://github.com/coilysiren/eco-mods-public)** + **[eco-cycle-prep](https://github.com/coilysiren/eco-cycle-prep)** | C# mods + Python automation for [Eco via Sirens](https://play.eco). | `ACTIVE` |
| 📡 **[eco-jobs-tracker](https://github.com/coilysiren/eco-jobs-tracker)** | FastAPI + HTMX dashboard of player professions. | `LIVE` |
| 🔌 **[eco-mcp-app](https://github.com/coilysiren/eco-mcp-app)** + 📊 **[eco-telemetry](https://github.com/coilysiren/eco-telemetry)** | Claude Desktop widget + OTel mod for Eco servers. | `WIP/ACTIVE` |
| 🧠 **[repo-recall](https://github.com/coilysiren/repo-recall)** + 💓 **[claude-code-pulse](https://github.com/coilysiren/claude-code-pulse)** | Claude Code substrate: session indexing + per-turn vitals. | `ACTIVE` |
| 🌌 **[galaxy-gen](https://github.com/coilysiren/galaxy-gen)** | Procedural galaxy sim, Rust -> WASM. | `LIVE` |

## `> stack`

Python, Go, TypeScript, Bash, C#. AWS, Kubernetes (k3s), Terraform, Docker, Tailscale. Prometheus, Grafana, Sentry. Claude Code, MCP.

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

Older: Harlot, Quirell/CollectQT, NASA Goddard. Full résumé: [coilysiren.me/resume](https://coilysiren.me/resume). Now: [coilysiren.me/now](https://coilysiren.me/now).

## `> comms`

[coilysiren.me](https://coilysiren.me) · [Bluesky](https://bsky.app/profile/coilysiren.me) · [X](https://x.com/coilysiren) · [LinkedIn](https://linkedin.com/in/coilysiren)

## See also

- [AGENTS.md](AGENTS.md) - agent-facing operating rules.
- [docs/FEATURES.md](docs/FEATURES.md) - inventory of what ships today.
- [.coily/coily.yaml](.coily/coily.yaml) - allowlisted commands.

Cross-reference convention from [coilysiren/agentic-os#59](https://github.com/coilysiren/agentic-os/issues/59).
