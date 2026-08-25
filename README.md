# I build agentic engineering platforms

<img src="https://github.com/coilysiren.png?size=200" width="88" align="right" alt="Kai Siren">

🌑 lights out, 🟢 flight deck green, 🛡️ agents warded for an 8h+ run

I'm **Kai Siren**, a staff-level platform engineer, ten-plus years in. I build the governed platform layer that lets engineering teams develop, ship, and operate agentic systems safely. The work spans infrastructure, context composition, bounded execution, MCP delivery, model routing, observability, and the Kubernetes systems underneath.

The throughline is developer infrastructure. That has meant language-ecosystem tooling at Ruby Together, multi-cloud platforms at Textio, government infrastructure at Nava, and agentic debugging workflows at Kapwing.

Outside work, I run a two-site homelab and a public game server. Both are practical testbeds for the same platform, reliability, and observability questions I work on professionally.

[coilysiren.me](https://coilysiren.me) is the shorter, visual version of this project map.

## Active portfolio

The order is intentional: infrastructure first, then the agent platform, then products where the whole system gets used.

### Infrastructure

* **[agentic-os](https://github.com/coilyco-flight-deck/agentic-os)** - cross-platform agent operating layer with dotfiles, skills, guarded tooling, and repository validators.
* **[infrastructure](https://github.com/coilyco-flight-deck/infrastructure)** - infrastructure as code for my hosts and Kubernetes homelab, including Ansible convergence and observability.
* **Operator context and automation** - the private skill catalogue, fleet inventory, and cross-repository coordination behind my agent environments.
* **Deployment control plane** - the private Kubernetes declarations for always-on services across the homelab.

### Agent platform

* **[agent-compose](https://github.com/coilyco-flight-deck/agent-compose)** - eval driven agent roles and personas, composed into plain files you can read and diff before a run.
* **[umbra](https://github.com/coilyco-flight-deck/umbra)** - config driven occlusion framework: arguments validated before a process starts, and every call in an append-only audit log.
* **[mcp-beaver](https://github.com/coilyco-flight-deck/mcp-beaver)** - a MCP server generator with a natural flow, where an operation you did not declare has no tool and no endpoint.

### Product

* **[Eco App](https://github.com/coilyco-gaming/eco-app)** 🌎 - server, jobs, replay, and telemetry for the Eco community.
* **[Galaxy Gen](https://github.com/coilyco-gaming/galaxy-gen)** 🌌 - procedural galaxy simulation in Rust and WebAssembly, rendered in the browser at [galaxy-gen.coilysiren.me](https://galaxy-gen.coilysiren.me).
* **[sirens-echo](https://github.com/coilyco-gaming/sirens-echo)** 🤖 - a discord community agent harness, answering only when mentioned in a channel it was granted.
* **Many MCPs** - narrow agent interfaces for personal finance, private feeds, games, browsers, project work, and adjacent systems.

Across those groups, the useful question is not whether an agent produced a diff. It is whether the system can explain what happened, recover from interruption, and prove the result.

## Production floor

The work is split across four namespaces:

Each tag shows how many repositories in that namespace carry it. Repository names stay on the organization profile pages.

<table>
<tr>
<td width="112" align="center"><a href="https://github.com/coilyco-flight-deck"><img src="https://github.com/coilyco-flight-deck.png?size=200" width="96" alt="coilyco-flight-deck logo"></a></td>
<td><strong><a href="https://github.com/coilyco-flight-deck">coilyco-flight-deck</a></strong> - public builds: the governed agent stack, shared developer environment, and fleet infrastructure.<br><br>
<code>ai-agents (5)</code> · <code>ansible (1)</code> · <code>automation (7)</code> · <code>bluesky (1)</code> · <code>command-line (1)</code> · <code>devops (5)</code> · <code>dotfiles (1)</code> · <code>github-profile (1)</code> · <code>helm (1)</code> · <code>homelab (1)</code> · <code>homebrew (1)</code> · <code>infrastructure-as-code (1)</code> · <code>kubernetes (2)</code> · <code>llm (2)</code> · <code>mcp (6)</code> · <code>model-context-protocol (4)</code> · <code>observability (3)</code> · <code>opentelemetry (2)</code> · <code>personal-finance (1)</code> · <code>reddit (1)</code> · <code>rss (1)</code> · <code>scoop (1)</code> · <code>security (5)</code></td>
</tr>
<tr>
<td width="112" align="center"><a href="https://github.com/coilyco-bridge"><img src="https://github.com/coilyco-bridge.png?size=200" width="96" alt="coilyco-bridge logo"></a></td>
<td><strong><a href="https://github.com/coilyco-bridge">coilyco-bridge</a></strong> - control surfaces: operator-specific context and deployment machinery.<br><br>
<code>ai-agents (2)</code> · <code>automation (1)</code> · <code>benchmark (1)</code> · <code>comfyui (1)</code> · <code>data-visualization (1)</code> · <code>devops (4)</code> · <code>documentation (1)</code> · <code>generative-ai (1)</code> · <code>github-profile (1)</code> · <code>helm (1)</code> · <code>homelab (2)</code> · <code>kubernetes (1)</code> · <code>llm (1)</code> · <code>machine-learning (2)</code> · <code>mcp (1)</code> · <code>static-site (1)</code></td>
</tr>
<tr>
<td width="112" align="center"><a href="https://github.com/coilyco-gaming"><img src="https://github.com/coilyco-gaming.png?size=200" width="96" alt="coilyco-gaming logo"></a></td>
<td><strong><a href="https://github.com/coilyco-gaming">coilyco-gaming</a></strong> - games and game tooling: games, simulations, mods, and game-service tooling.<br><br>
<code>bevy (1)</code> · <code>discord (1)</code> · <code>eco-community-discord (1)</code> · <code>eco-game (4)</code> · <code>factorio (1)</code> · <code>game-development (1)</code> · <code>game-modding (3)</code> · <code>game-operations (1)</code> · <code>gaming (1)</code> · <code>github-profile (1)</code> · <code>go (1)</code> · <code>go-ops-tooling (1)</code> · <code>mcp (2)</code> · <code>message-dumps (1)</code> · <code>model-context-protocol (2)</code> · <code>procedural-galaxy-simulation (1)</code> · <code>rust (2)</code> · <code>rust-wasm (1)</code> · <code>steam (1)</code> · <code>telemetry (1)</code> · <code>unity (1)</code> · <code>webassembly (2)</code></td>
</tr>
<tr>
<td width="112" align="center"><a href="https://github.com/coilysiren"><img src="assets/coily-siren.png" width="96" alt="coilysiren logo"></a></td>
<td><strong><a href="https://github.com/coilysiren">coilysiren</a></strong> - personal work: this profile, <a href="https://coilysiren.me">coilysiren.me</a>, and private coordination surfaces.<br><br>
<code>ai-agents (2)</code> · <code>automation (1)</code> · <code>blog (1)</code> · <code>dataset (1)</code> · <code>devops (2)</code> · <code>documentation (1)</code> · <code>github-profile (1)</code> · <code>issue-tracker (1)</code> · <code>knowledge-base (1)</code> · <code>linkedin (1)</code> · <code>nlp (1)</code> · <code>observability (2)</code> · <code>personal-website (1)</code> · <code>project-management (1)</code> · <code>writing (1)</code></td>
</tr>
</table>

## Platform notes

The homelab spans two physical sites on one Tailscale mesh. The primary k3s cluster is the application and state plane. The second is the operations and recovery plane. GPU machines join on demand for local inference, while hosted frontier models handle work beyond the small local tier.

The durable choices are simple:

* Isolate state and keep recovery on a different power and network path.
* Put authentication, ingress, DNS, certificates, and secrets at explicit boundaries.
* Make agent sessions, model traffic, services, and cross-site reachability observable.
* Assume every compute node except the primary can disappear.

Core stack: Go, Python, TypeScript, Bash, and C#. AWS, Kubernetes, Terraform, Docker, and Tailscale. Prometheus, Grafana, Sentry, and OpenTelemetry. Codex, Claude Code, and MCP.

## Career

My current role is Senior Software Engineer at Kapwing. My background also includes urfave/cli maintainership, government infrastructure, multi-cloud platforms, and engineering management.

* **2025-now** - Kapwing, Senior Software Engineer
* **2023-2025** - Nava, Principal Infrastructure Engineer
* **2022-2023** - Textio, Staff Infrastructure Engineer
* **2021-2022** - EnergyHub, DevOps Engineering Manager
* **2020-2021** - Bluelink, Senior Backend Engineer
* **2018-2020** - Textio, Senior Infrastructure Engineer
* **2016-2018** - Callisto, Senior Software Engineer

Older: Harlot, Quirell/CollectQT, NASA Goddard. Full résumé: [coilysiren.me/resume](https://coilysiren.me/resume).

## Elsewhere

[coilysiren.me](https://coilysiren.me) · [Bluesky](https://bsky.app/profile/coilysiren.me) · [X](https://x.com/coilysiren) · [LinkedIn](https://linkedin.com/in/coilysiren)

## See also

* [AGENTS.md](AGENTS.md) - agent bootstrap guide and operating rules.
* [docs/FEATURES.md](docs/FEATURES.md) - inventory of what ships today.
