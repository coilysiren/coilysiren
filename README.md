```
$ ssh kai@kai-server

┌────────────────────────────────────┐
│ kai-server · lights-out            │
│ uptime: ten years counting         │
│ operator: kai siren · east bay, ca │
└────────────────────────────────────┘

● platform.target
     Active: active (running)
     Status: "27 devices · 48 pods
              · 2 ✗ · agents on shift"

⚙⚒ agents on the line ⚒⚙
```

## `> whoami`

<img src="https://github.com/coilysiren.png?size=200" width="88" align="right" alt="Kai Siren">

**Hi! I'm Kai.** Platform engineer, 10+ years in. Day job: accelerating engineers as their work goes agentic, with observability for LLM consumers as the current bet. Off-hours I run a small lights-out factory: single-node k3s homelab, a herd of agents building and breaking my own services in the dark, a steady output of small tools. Wire it in, instrument it, push on it until it breaks.

> Most excited about **Gauntlet**: a two-agent adversarial loop that infers software correctness under sustained, targeted attack. - [/now](https://coilysiren.me/now)

## `> lights_out`

The factory framing is not a bit. The goal is a dark factory: code written by agents, verified by attack, shipped while I sleep. The pieces that make that safe instead of terrifying:

- **A security boundary first.** Agents on this fleet route privileged operations through [coily](https://github.com/coilyco-bridge/coily), an escape-hatch-resistant CLI wrapper. Every privileged call lands in an audit log. The interesting design constraint is that the boundary must hold against the agent operating inside it, which rules out most of the obvious implementations.
- **Verification by adversary, not by vibes.** [gauntlet](https://github.com/coilyco-flight-deck/gauntlet) runs a two-role loop, an attacker and an inspector, against a running service and infers correctness from how the service behaves under sustained attack. Built for the case where a human never reads the diff.
- **Observability over the whole substrate.** [repo-recall](https://github.com/coilyco-flight-deck/repo-recall) joins OTel spans, git state, and Claude Code sessions into one queryable surface. [session-lattice](https://github.com/coilyco-flight-deck/session-lattice) maintains incremental views over it. Agent-to-agent traffic rides [otel-a2a-relay](https://github.com/coilyco-flight-deck/otel-a2a-relay), so even the agents talking to each other shows up as spans.

When the line breaks, the agents file the issue. When it breaks badly, see the power strip in the `tailnet` section below.

## `> production_floor`

The floor is organized into three bays. Two starting points if you're browsing: [gauntlet](https://github.com/coilyco-flight-deck/gauntlet) is the thesis in code, and [coily](https://github.com/coilyco-bridge/coily) is the hard design problem. If you want to click something that runs right now, the galaxy sim is live at [galaxy-gen.coilysiren.me](https://galaxy-gen.coilysiren.me).

<table>
<tr>
<td width="112" align="center"><a href="https://github.com/coilyco-flight-deck"><img src="https://github.com/coilyco-flight-deck.png?size=200" width="96" alt="coilyco-flight-deck logo"></a></td>
<td><strong><a href="https://github.com/coilyco-flight-deck">coilyco-flight-deck</a></strong> - the flight deck, where the builds launch.<br><br>
🥊 <a href="https://github.com/coilyco-flight-deck/gauntlet">gauntlet</a> - two-agent adversarial loop, infers correctness under sustained, targeted attack · <code>RUNNING HOT</code><br>
🧬 <a href="https://github.com/coilyco-flight-deck/session-lattice">session-lattice</a> - materialized views over Claude session data via Feldera (DBSP), served to <a href="https://github.com/coilyco-flight-deck/luca">luca</a>, the agent-activity observability plugin · <code>SCAFFOLDED</code><br>
🛰️ <a href="https://github.com/coilyco-flight-deck/infrastructure">infrastructure</a> - the factory floor itself: single-node k3s, GH Actions deploys, SSM-backed secrets, Tailscale · <code>OPERATIONAL</code><br>
🧠 <a href="https://github.com/coilyco-flight-deck/repo-recall">repo-recall</a> - session indexing for the observability substrate · <code>ACTIVE</code><br>
🌌 <a href="https://github.com/coilyco-flight-deck/galaxy-gen">galaxy-gen</a> - procedural galaxy sim, Rust -> WASM · <code>LIVE</code> at <a href="https://galaxy-gen.coilysiren.me">galaxy-gen.coilysiren.me</a><br>
🌱 The <a href="https://play.eco">Eco</a> game-server suite: <a href="https://github.com/coilyco-flight-deck/eco-mods-public">eco-mods-public</a> (C# mods · <code>ACTIVE</code>), 📡 <a href="https://github.com/coilyco-flight-deck/eco-jobs-tracker">eco-jobs-tracker</a> (FastAPI + HTMX dashboard of player professions · <code>LIVE</code>), 🔌 <a href="https://github.com/coilyco-flight-deck/eco-mcp-app">eco-mcp-app</a> + 📊 <a href="https://github.com/coilyco-flight-deck/eco-telemetry">eco-telemetry</a> (Claude Desktop widget + OTel mod · <code>WIP/ACTIVE</code>)</td>
</tr>
<tr>
<td width="112" align="center"><a href="https://github.com/coilyco-bridge"><img src="https://github.com/coilyco-bridge.png?size=200" width="96" alt="coilyco-bridge logo"></a></td>
<td><strong><a href="https://github.com/coilyco-bridge">coilyco-bridge</a></strong> - the bridge, where the controls live.<br><br>
🛡️ <a href="https://github.com/coilyco-bridge/coily">coily</a> - escape-hatch-resistant CLI security boundary for privileged ops, audit-logs everything. The boundary must hold against the agent operating inside it · <code>ACTIVE</code><br>
🌱 <a href="https://github.com/coilyco-bridge/eco-cycle-prep">eco-cycle-prep</a> - Python automation for the <a href="https://play.eco">Eco</a> cycle · <code>ACTIVE</code></td>
</tr>
<tr>
<td width="112" align="center"><a href="https://github.com/coilysiren"><img src="assets/coily-siren.png" width="96" alt="coilysiren logo"></a></td>
<td><strong><a href="https://github.com/coilysiren">coilysiren</a></strong> - the operator's own bay.<br><br>
💓 <a href="https://github.com/coilysiren/claude-code-pulse">claude-code-pulse</a> - per-turn vitals for Claude Code · <code>ARCHIVED</code><br>
📍 this profile, plus the site at <a href="https://coilysiren.me">coilysiren.me</a></td>
</tr>
</table>

## `> shift_report`

```yaml
role:     Senior Platform Engineer
employer: Kapwing
shift:    lights-out
fleet:    27 devices · 1 tailnet

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

## `> tailnet`

Everything above is claims. From here down, receipts.

"Homelab" undersells it. The fleet is joined by Tailscale into a single tailnet across two physical sites, and the device list is most of the story: the machines, the phones, the WSL guests, and every k3s service that publishes itself onto the mesh as its own node.

```
site 1 · east bay
├─ kai-server         k3s · always-on
├─ kai-tower-3026     3090 ti · llm
├─ kai-desktop-tower  rtx 2080 · dark
└─ kasa hs300         hard-reset path

site 2
└─ ser8               warm standby · DR

roaming
├─ kais-macbook-pro
├─ kai-windows-laptop
└─ pixel-9

ephemeral
└─ gha runners · wsl · k8s proxies
```

### `> fleet_inventory`

| Node | Notes |
|------|-------|
| **kai-server** | Intel i7-14700, 32 GB, no dGPU. The always-on box: single-node k3s running every personal service, plus game servers (Eco, Factorio, Icarus, Core Keeper). The only machine allowed to hold state. |
| **kai-tower-3026** | Brand new AM5 build: Ryzen 9 9950X3D, 64 GB DDR5, RTX 3090 Ti 24 GB. Daily driver and heavy LLM machine one of two. |
| **kai-desktop-tower** | The previous tower, i7-8700 with an RTX 2080. Heavy LLM machine two of two, currently dark: the new build is borrowing its power cable. Showing `○ offline` above until a second cable arrives. |
| **kai-windows-laptop** | i7-11800H, 16 GB, RTX 3060 mobile. Travel Windows host, burst inference when open. |
| **kais-macbook-pro** | Apple Silicon. Travel default, where most Claude Code sessions originate. Runs a local Qwen 9B (MLX) through Ollama with OpenCode pointed at it, scoped to trivial tasks. |
| **ser8** | Beelink SER8, Ryzen 7 PRO 8845HS, 64 GB. Cross-site warm standby for the k3s control plane. Separate power, ISP, and site, which is what makes the DR story real. |

Footnotes: a worker-only Radxa Zero 3W appears in the standby topology but is unfit to hold state (WiFi plus SD card, no thanks), and a Kasa HS300 smart power strip feeds the site-1 fleet as the hard-power-cycle path of last resort. When software observability fails, there is always the physical layer.

### `> tailscale_status`

The live mesh, regenerated by [scripts/fleet-readout.sh](scripts/fleet-readout.sh). Hostnames real, everything opaque redacted, third-party devices excluded.

```
$ tailscale status
  ● kais-macbook-pro             macos
  ● api                          linux
  ● backend-db                   linux
  ○ coilysiren-backend-coilysir… linux
  ● coilysiren-eco-mcp-app-coil… linux
  ● coilysiren-eco-spec-tracker… linux
  ○ coilysiren-galaxy-gen-coily… linux
  ● forgejo-1                    linux
  ○ forgejo                      linux
  ● galaxy-gen                   linux
  ○ kai-desktop-tower-wsl        linux
  ○ kai-desktop-tower            windows
  ○ kai-mac-kapwing              macos
  ○ kai-macbook-pro-vm           linux
  ● kai-server                   linux
  ● kai-tower-3026-wsl           linux
  ● kai-tower-3026               windows
  ○ kai-windows-laptop           windows
  ○ kais-macbook-pro-1           macos
  ● ntfy                         linux
  ○ observability-vmsingle-tail… linux
  ● pixel-9                      android
  ● repo-recall                  linux
  ● ser8                         linux
  ● signoz                       linux
  ● tailscale-operator           linux
  ● vmsingle                     linux
  27 devices · 1 tailnet · 2 sites
```

Yes, the phone is a tailnet node. Yes, the Forgejo instance, the notification daemon, and the metrics store are each their own device. The Tailscale operator publishes k3s services onto the mesh, so the cluster's insides show up on the device list like roommates.

### `> kubectl_get_pods`

The same factory from the cluster's point of view, same redaction rules (hash suffixes are opaque ids, so they drop).

```
$ kubectl get pods -A
  cert-manager/
    ● cert-manager
    ● cert-manager-cainjector
    ● cert-manager-webhook
  coilysiren-backend/
    ● coilysiren-backend-app
    ● coilysiren-backend-db
  coilysiren-eco-mcp-app/
    ● coilysiren-eco-mcp-app-app
  coilysiren-eco-spec-tracker/
    ● coilysiren-eco-spec-tracker-a…
  coilysiren-galaxy-gen/
    ● coilysiren-galaxy-gen-app
  default/
    ● null-db
  external-secrets/
    ● external-secrets
    ● external-secrets-cert-control…
    ● external-secrets-webhook
  forgejo/
    ● forgejo-db
    ● forgejo
    ◌ forgejo-runner
    ✗ forgejo-runner-tap-writer
    ● ts-forgejo
  kube-system/
    ● coredns
    ✓ helm-install-traefik-crd
    ✓ helm-install-traefik
    ● local-path-provisioner
    ● metrics-server
    ● svclb-traefik ×3
    ● traefik
  lunch-money/
    ● lunch-money-lunch-money-k8s
  ntfy/
    ● ntfy
  observability/
    ● chi-signoz-clickhouse-cluster
    ● grafana
    ✗ node-exporter-prometheus-node…
    ● node-exporter-prometheus-node… ×2
    ● signoz
    ● signoz-clickhouse-operator
    ● signoz-otel-collector
    ✓ signoz-telemetrystore-migrator
    ● signoz-zookeeper
    ● ts-signoz
    ● ts-vmsingle
    ● victoria-metrics-victoria-met…
    ● vmagent-victoria-metrics-agent
  openclaw/
    ◌ openclaw
  registry/
    ● registry
  repo-recall/
    ● repo-recall
  tailscale/
    ● operator
    ● ts-coilysiren-eco-mcp-app-ser…
    ● ts-coilysiren-eco-spec-tracke…
  48 pods · 16 namespaces · 1/3 nodes
```

The ✗ marks are real. So is the `1/3 nodes`: two joined workers (the WSL guest and a Mac VM from the tailnet list above) sit NotReady while kai-server carries everything. A lights-out factory that only ever shows green is lying to you.

### `> local_llm_modes`

The fleet maps onto a three-mode local-model plan:

- **Mode 1 (burst)** - the dGPU machines, when they happen to be on and plugged in. The new tower's 3090 Ti is the workhorse, the old tower's 2080 rejoins the line once it gets its power cable back, and the laptop's 3060 pitches in.
- **Mode 2 (always-on)** - kai-server orchestrates, calls into a tower GPU over the tailnet when reachable, falls back to CPU-only inference or an API otherwise. CPU-only on the i7-14700 is real but humble.
- **Mode 3 (api)** - frontier models over the wire for everything that deserves them.

And one edge case: the Mac keeps a Qwen 9B warm through Ollama + OpenCode, scoped to trivial tasks only. Everything bigger escalates up the modes.

## `> stack`

Python, Go, TypeScript, Bash, C#. AWS, Kubernetes (k3s), Terraform, Docker, Tailscale. Prometheus, Grafana, Sentry, OpenTelemetry. Claude Code, MCP.

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

Older: Harlot, Quirell/CollectQT, NASA Goddard. Full résumé: [coilysiren.me/resume](https://coilysiren.me/resume). What I'm doing right now: [coilysiren.me/now](https://coilysiren.me/now).

## `> faq`

**Why does a profile README have a network diagram and a pod listing?** Because this repo is the one place in the fleet with no size cap, no managed hooks, and no validators. Every other repo I own answers to a pre-commit suite rolled out from a central baseline. This one carries an exemption marker and does what it wants. Naturally it became the long-form surface.

**Are the readouts real?** Yes. They're generated by [scripts/fleet-readout.sh](scripts/fleet-readout.sh) against the live tailnet and cluster, then pasted in. The redaction is the interesting part: tailnet IPs, FQDNs, account labels, pod hash suffixes, and other people's devices are all stripped before anything lands in git, because opaque identifiers stay out of tracked files on principle. The systemd unit in the banner is aspirational - the numbers in its status line are not.

## `> comms`

[coilysiren.me](https://coilysiren.me) · [Bluesky](https://bsky.app/profile/coilysiren.me) · [X](https://x.com/coilysiren) · [LinkedIn](https://linkedin.com/in/coilysiren)

## See also

- [AGENTS.md](AGENTS.md) - agent-facing operating rules.
- [docs/FEATURES.md](docs/FEATURES.md) - inventory of what ships today.
- [.coily/coily.yaml](.coily/coily.yaml) - allowlisted commands.
