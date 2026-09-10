# I build agentic engineering platforms

<img src="https://github.com/coilysiren.png?size=200" width="88" align="right" alt="Kai Ase Siren">

I'm **Kai Ase Siren**, a senior platform engineer, ten-plus years in. I build the policy-bound platform layer that lets engineering teams develop, ship, and operate agentic systems safely. That layer is the four projects below, built as independent open-source work: bounded execution and egress in umbra, guarded MCP generation in mcp-beaver, context composition in agent-compose, and evaluation in housecast. The Kubernetes and observability systems underneath come from the day job and the two-site homelab described further down.

The throughline is developer infrastructure, and agents are its newest consumer. That has meant language-ecosystem tooling at Ruby Together, multi-cloud platforms at Textio, government infrastructure at Nava, and agent-facing observability and MCP surfaces at Kapwing.

Outside work, I run a two-site homelab and a public game server. Both are practical testbeds for the same platform, reliability, and observability questions I work on professionally.

[coilysiren.me](https://coilysiren.me) is the shorter, visual version of this project map.

## What I ship

<table>
<tr>
<td width="50%"><a href="https://github.com/coilyco-flight-deck/agent-compose"><img src="https://coilysiren.me/images/banners/agent-compose.jpg" alt="agent-compose // $ acompose - Compose agent personas and context"></a><br><br>Picks the persona an agent runs as and delivers the composed bundle into the harness. It changes what the agent knows and how it is framed, never what it is allowed to do: the bundle is plain files you can read and diff before a run, carrying no credential, no mount, and no command.</td>
<td width="50%"><a href="https://forgejo.coilysiren.me/coilyco-flight-deck/housecast"><img src="https://coilysiren.me/images/banners/housecast.jpg" alt="housecast // roster.yaml - Agent context, cast from one roster"></a><br><br>One YAML file declares every role. The bundle an agent gets and the scorecard that grades it are both cast from that file, so what gets tested and what ships are the same bundle.</td>
</tr>
<tr>
<td width="50%"><a href="https://github.com/coilyco-flight-deck/mcp-beaver"><img src="https://coilysiren.me/images/banners/mcp-beaver.jpg" alt="mcp-beaver // .mcp.kdl - A MCP server generator with a natural flow"></a><br><br>One guardfile in, one guarded MCP server out, which is the natural flow the name points at. An operation nobody declared has no tool and no endpoint, so a write-capable MCP server is only ever as wide as one small file you can read end to end.</td>
<td width="50%"><a href="https://github.com/coilyco-flight-deck/umbra"><img src="https://coilysiren.me/images/banners/umbra.jpg" alt="umbra - occlusion for agent CLIs and APIs"></a><br><br>A least privilege layer for agent command-line tools and HTTP requests, which stay occluded until a policy file grants them. Arguments are checked before the process starts, each command needs its own scope token, and every call lands in an append-only audit log.</td>
</tr>
</table>

## Also active

### Infrastructure

* **[agentic-os](https://github.com/coilyco-flight-deck/agentic-os)** - cross-platform agent operating layer with dotfiles, skills, guarded tooling, and repository validators.
* **[infrastructure](https://github.com/coilyco-bridge/infrastructure)** - infrastructure as code for my hosts and Kubernetes homelab, including Ansible convergence and observability.
* **Operator context and automation** - the private skill catalogue, fleet inventory, and cross-repository coordination behind my agent environments.
* **Deployment control plane** - the private Kubernetes declarations for always-on services across the homelab.

### Product

* **[sirens-echo](https://github.com/coilyco-gaming/sirens-echo)** - a Discord community agent harness. It answers only when a person mentions it in a channel it was granted, and a validator strips the greeting, the emoji, and the sign-off before anything posts.
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
