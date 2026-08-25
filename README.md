# I build agentic engineering platforms

<img src="https://github.com/coilysiren.png?size=200" width="88" align="right" alt="Kai Siren">

I'm **Kai Siren**, a staff-level platform engineer, ten-plus years in. I build the governed platform layer that lets engineering teams develop, ship, and operate agentic systems safely. The work spans infrastructure, context composition, bounded execution, MCP delivery, model routing, observability, and the Kubernetes systems underneath.

The throughline is developer infrastructure. That has meant language-ecosystem tooling at Ruby Together, multi-cloud platforms at Textio, government infrastructure at Nava, and agentic debugging workflows at Kapwing.

Outside work, I run a two-site homelab and a public game server. Both are practical testbeds for the same platform, reliability, and observability questions I work on professionally.

[coilysiren.me](https://coilysiren.me) is the shorter, visual version of this project map.

## What I ship

<table>
<tr>
<td width="50%"><a href="https://github.com/coilyco-flight-deck/agent-compose"><img src="https://coilysiren.me/images/banners/agent-compose.jpg" alt="agent-compose // $ acompose - Eval driven agent roles and personas"></a><br><br>A role is context, never permission. The bundle is plain files you can read and diff before a run, carrying no credential, no mount, and no command.</td>
<td width="50%"><a href="https://github.com/coilyco-gaming/sirens-echo"><img src="https://coilysiren.me/images/banners/sirens-echo.jpg" alt="sirens-echo // sirens-deep - a discord community agent harness"></a><br><br>It answers only when a person mentions it in a channel it was granted, and a validator strips the greeting, the emoji, and the sign-off before anything posts.</td>
</tr>
<tr>
<td width="50%"><a href="https://github.com/coilyco-flight-deck/mcp-beaver"><img src="https://coilysiren.me/images/banners/mcp-beaver.jpg" alt="mcp-beaver // .mcp.kdl - A MCP server generator with a natural flow"></a><br><br>An operation you did not declare has no tool and no endpoint, so the blast radius of a write-capable MCP is one small file you can read end to end.</td>
<td width="50%"><a href="https://github.com/coilyco-flight-deck/umbra"><img src="https://coilysiren.me/images/banners/umbra.jpg" alt="umbra - a config driven occlusion framework"></a><br><br>Declare what a tool may run. Arguments are validated before the process starts, each verb needs its own scope token, and every call lands in an append-only audit log.</td>
</tr>
</table>

## Also active

### Infrastructure

* **[agentic-os](https://github.com/coilyco-flight-deck/agentic-os)** - cross-platform agent operating layer with dotfiles, skills, guarded tooling, and repository validators.
* **[infrastructure](https://github.com/coilyco-flight-deck/infrastructure)** - infrastructure as code for my hosts and Kubernetes homelab, including Ansible convergence and observability.
* **Operator context and automation** - the private skill catalogue, fleet inventory, and cross-repository coordination behind my agent environments.
* **Deployment control plane** - the private Kubernetes declarations for always-on services across the homelab.

### Product

* **[Eco App](https://github.com/coilyco-gaming/eco-app)** 🌎 - server, jobs, replay, and telemetry for the Eco community.
* **[Galaxy Gen](https://github.com/coilyco-gaming/galaxy-gen)** 🌌 - procedural galaxy simulation in Rust and WebAssembly, rendered in the browser at [galaxy-gen.coilysiren.me](https://galaxy-gen.coilysiren.me).
* **Many MCPs** - narrow agent interfaces for personal finance, private feeds, games, browsers, project work, and adjacent systems.

Across all of it, the useful question is not whether an agent produced a diff. It is whether the system can explain what happened, recover from interruption, and prove the result.

## Platform notes

The homelab spans two physical sites on one Tailscale mesh. The primary k3s cluster is the application and state plane. The second is the operations and recovery plane. GPU machines join on demand for local inference, while hosted frontier models handle work beyond the small local tier.

The durable choices are simple:

* Isolate state and keep recovery on a different power and network path.
* Put authentication, ingress, DNS, certificates, and secrets at explicit boundaries.
* Make agent sessions, model traffic, services, and cross-site reachability observable.
* Assume every compute node except the primary can disappear.

Core stack: Go, Python, TypeScript, Bash, and C#. AWS, Kubernetes, Terraform, Docker, and Tailscale. Prometheus, Grafana, Sentry, and OpenTelemetry. Codex, Claude Code, and MCP.

## Elsewhere

[coilysiren.me](https://coilysiren.me) · [Resume](https://coilysiren.me/resume) · [Bluesky](https://bsky.app/profile/coilysiren.me) · [X](https://x.com/coilysiren) · [LinkedIn](https://linkedin.com/in/coilysiren)

## See also

* [AGENTS.md](AGENTS.md) - agent bootstrap guide and operating rules.
* [docs/FEATURES.md](docs/FEATURES.md) - inventory of what ships today.
