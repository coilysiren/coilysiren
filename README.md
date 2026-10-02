# I build agentic engineering platforms

<img src="https://github.com/coilysiren.png?size=200" width="88" align="right" alt="Kai Ase Siren">

I'm **Kai Ase Siren**, a senior platform engineer, ten-plus years in. I build the policy-bound platform layer that lets engineering teams develop, ship, and operate agentic systems safely. Two open-source projects carry that layer: umbra bounds what an agent can run, and housecast puts what it did in front of a person to grade. The Kubernetes and observability systems underneath come from the day job and the two-site homelab described further down.

The throughline is developer infrastructure, and agents are its newest consumer. That has meant language-ecosystem tooling at Ruby Together, multi-cloud platforms at Textio, government infrastructure at Nava, and agent-facing observability and MCP surfaces at Kapwing.

Outside work, I run a two-site homelab and a public game server. Both are practical testbeds for the same platform, reliability, and observability questions I work on professionally.

[coilysiren.me](https://coilysiren.me) is the shorter, visual version of this project map.

## What I ship

<table>
<tr>
<td width="50%"><a href="https://github.com/coilyco/umbra"><img src="https://coilysiren.me/images/banners/umbra.jpg" alt="umbra - occlusion for agent CLIs and APIs"></a><br><br>A least privilege layer for agent command-line tools and HTTP requests, which stay occluded until a policy file grants them. Arguments are checked before the process starts, any command you did not grant is refused, and every call lands in an append-only audit log. The plan for <a href="https://github.com/coilyco/umbra/blob/main/docs/umbra-v2.md">umbra v2</a> rebuilds it on urfave/cli v4, as v4's first real downstream.</td>
<td width="50%"><a href="https://github.com/coilyco/housecast"><img src="https://coilysiren.me/images/banners/housecast.jpg" alt="housecast // grade - Human-graded behavior evaluations, for any agent"></a><br><br>Human-graded behavior evaluations, for any agent. You bring the cases and the runner, and housecast puts each answer in front of a person with its target beside it, then records the grade apart from the run that produced it.</td>
</tr>
</table>

## Also active

### Infrastructure

* **[agentic-os](https://github.com/coilyco/agentic-os)** - cross-platform agent operating layer with dotfiles, skills, guarded tooling, and repository validators.
* **[agent-proxy](https://github.com/coilyco/agent-proxy)** - the observability and trajectory data plane for my agents, with OpenAI-compatible proxying. Its interfaces are still changing.
* **[node-stats-mcp](https://github.com/coilyco/node-stats-mcp)** - a read-only MCP for Linux and Kubernetes diagnostics, with bounded host introspection.
* **Homelab infrastructure** - the private infrastructure as code for my hosts and Kubernetes homelab, including Ansible convergence and observability.
* **Operator context and automation** - the private skill catalogue, fleet inventory, and cross-repository coordination behind my agent environments.
* **Deployment control plane** - the private Kubernetes declarations for always-on services across the homelab.

### Product

* **[Galaxy Gen](https://github.com/coilyco/galaxy-gen)** 🌌 - procedural galaxy simulation in Rust and WebAssembly, rendered in the browser at [galaxy-gen.coilysiren.me](https://galaxy-gen.coilysiren.me).
* **Eco server tooling** 🌎 - the private server, jobs, replay, and telemetry behind the Eco community I run, plus a Discord agent that answers only when a person mentions it.
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

[coilysiren.me](https://coilysiren.me) // [Resume](https://coilysiren.me/resume) // [Bluesky](https://bsky.app/profile/coilysiren.me) // [X](https://x.com/coilysiren) // [LinkedIn](https://linkedin.com/in/coilysiren)

## See also

* [AGENTS.md](AGENTS.md) - agent bootstrap guide and operating rules.
* [docs/FEATURES.md](docs/FEATURES.md) - inventory of what ships today.
