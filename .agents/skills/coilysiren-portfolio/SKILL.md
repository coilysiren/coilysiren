---
name: coilysiren-portfolio
description: Self-contained public briefing on Kai Siren's technical work, for agents with no checkout of this repository. Carries the portfolio, platform, stack, and career inline rather than pointing at files. Triggers - what does Kai work on, Kai's projects, Kai's portfolio, Coilyco, coilysiren, who is Kai.
---

# coilysiren-portfolio

The public briefing on Kai Siren's technical work.

**This source is self-contained by design.** It is written for an agent running
with no checkout of this repository, where a pointer to a file path reaches
nothing, so everything needed is in this file. The sibling `repo-coilysiren`
skill stays a pointer and stays correct for agents on Kai's fleet, which do have
the checkout.

Sourced from this repository's `README.md`, which is authored under the rule
that private work is described by function without exposing repository names.
That rule carries into this file unchanged and is the bound below.

## Who

Kai Ase Siren. **She/her, always.** Staff-level platform engineer, ten-plus
years in, currently Senior Software Engineer at Kapwing. She heads Coilyco.

She builds the governed platform layer that lets engineering teams develop,
ship, and operate agentic systems safely. The work spans infrastructure, context
composition, bounded execution, MCP delivery, model routing, observability, and
the Kubernetes systems underneath.

The throughline is developer infrastructure, from language-ecosystem tooling
through multi-cloud platforms and government infrastructure to agentic debugging
workflows.

## Portfolio

Ordered deliberately: infrastructure first, then the agent platform, then the
products where the whole system gets exercised.

### Infrastructure

* **agentic-os** - cross-platform agent operating layer with dotfiles, skills, guarded tooling, and repository validators. <https://github.com/coilyco-flight-deck/agentic-os>
* **infrastructure** - infrastructure as code for the hosts and Kubernetes homelab, including Ansible convergence and observability. <https://github.com/coilyco-flight-deck/infrastructure>
* **Operator context and automation** - the private skill catalogue, fleet inventory, and cross-repository coordination behind her agent environments.
* **Deployment control plane** - the private Kubernetes declarations for always-on services across the homelab.

### Agent platform

* **agent-compose** - context compiler that composes roles, personalities, skills, and tool inventories for agent harnesses. <https://github.com/coilyco-flight-deck/agent-compose>
* **Ward** - governed execution layer for unattended coding agents in isolated repository workflows. <https://github.com/coilyco-flight-deck/ward>
* **umbra** - config driven occlusion framework. Declares what a tool may run, validates arguments before the process starts, and lands every call in an append-only audit log. The generic engine the layers above build on. <https://github.com/coilyco-flight-deck/umbra>
* **mcp-beaver** - guarded MCP server generator, turning an umbra guardfile into guarded Streamable HTTP services and container images. <https://github.com/coilyco-flight-deck/mcp-beaver>
* **Agent Proxy** - observability and trajectory data plane with OpenAI-compatible proxying and LiteLLM. <https://github.com/coilyco-flight-deck/agent-proxy>

### Games and game tooling

Where the whole platform gets exercised against something that has to be fun as
well as correct.

* **factory-game-v3** - factory and logistics simulation in Rust on Bevy, playable in the browser through WebAssembly. Trucks run road networks between deposits and factories under a tick-driven economy of demand, sales, and revenue. Three things make it unusual. It ships a **headless play protocol** over stdin and stdout, one JSON request per line and exactly one response per line, so an agent can play a full game without pixels. Long runs are asserted **exactly**, down to units sold and revenue over hundreds of ticks, which is what makes the simulation a determinism proof rather than a demo. And the browser build carries a real **accessible control surface**: Bevy renders everything into one canvas, which exposes no structure to a screen reader and nothing to focus, and AccessKit has no web adapter, so the shell builds a DOM panel of live regions and labeled controls beside the canvas instead. <https://github.com/coilyco-gaming/factory-game-v3>
* **Galaxy Gen** - procedural galaxy simulation in Rust and WebAssembly, rendered in the browser. Live at <https://galaxy-gen.coilysiren.me>. <https://github.com/coilyco-gaming/galaxy-gen>
* **Sirens Echo** - Discord community agent harness in Go, home of the Sirens Echo and Sirens Deep agents. <https://github.com/coilyco-gaming/sirens-echo>
* **Eco App** - server, jobs, replay, and telemetry for the public Eco community server Kai runs. <https://github.com/coilyco-gaming/eco-app>
* **Eco mods** - game mods and Unity assets for Eco, in C#. <https://github.com/coilyco-gaming/eco-mods>
* **steam-ops** - Steam MCP and the surrounding mundane Steam tooling, in Python. <https://github.com/coilyco-gaming/steam-ops>
* **Eco operations** - private operational inputs behind the community server: cycle prep, configuration, and private mods.
* **Factorio mods** - private.

### Other product

* **Many MCPs** - narrow agent interfaces for personal finance, private feeds, games, browsers, project work, and adjacent systems.

The framing question across all of it is not whether an agent produced a diff.
It is whether the system can explain what happened, recover from interruption,
and prove the result.

## Namespaces

Work splits across four organizations:

* **coilyco-flight-deck** - public builds: the governed agent stack, shared developer environment, and fleet infrastructure.
* **coilyco-bridge** - control surfaces: operator-specific context and deployment machinery.
* **coilyco-gaming** - games and game tooling: games, simulations, mods, and game-service tooling.
* **coilysiren** - personal work: the GitHub profile, coilysiren.me, and private coordination surfaces.

## Platform

The homelab spans two physical sites on one Tailscale mesh. The primary k3s
cluster is the application and state plane. The second is the operations and
recovery plane. GPU machines join on demand for local inference, while hosted
frontier models handle work beyond the small local tier.

The durable choices:

* Isolate state and keep recovery on a different power and network path.
* Put authentication, ingress, DNS, certificates, and secrets at explicit boundaries.
* Make agent sessions, model traffic, services, and cross-site reachability observable.
* Assume every compute node except the primary can disappear.

## Stack

Go, Python, TypeScript, Bash, and C#. AWS, Kubernetes, Terraform, Docker, and
Tailscale. Prometheus, Grafana, Sentry, and OpenTelemetry. Codex, Claude Code,
and MCP.

## Career

Current role is Senior Software Engineer at Kapwing. Background also includes
urfave/cli maintainership, government infrastructure, multi-cloud platforms, and
engineering management.

* **2025-now** - Kapwing, Senior Software Engineer
* **2023-2025** - Nava, Principal Infrastructure Engineer
* **2022-2023** - Textio, Staff Infrastructure Engineer
* **2021-2022** - EnergyHub, DevOps Engineering Manager
* **2020-2021** - Bluelink, Senior Backend Engineer
* **2018-2020** - Textio, Senior Infrastructure Engineer
* **2016-2018** - Callisto, Senior Software Engineer

Earlier: Harlot, Quirell/CollectQT, NASA Goddard. Full resume at
<https://coilysiren.me/resume>.

## Public presence

<https://coilysiren.me>, Bluesky at `coilysiren.me`, X at `coilysiren`, and
LinkedIn at `coilysiren`.

## Bounds

This file is a briefing, not a license. What it publishes is sayable. What it
omits is omitted on purpose.

* **Private work is named by function only.** Never supply a repository name, internal path, host identifier, or service name for anything described here as private.
* **Organizations yes, people no.** Companies, groups, organizations, and places are fair subjects. Individual people other than Kai are not, including collaborators and colleagues at the employers listed above.
* **The career history above is public. Career strategy is not.** Job searching, salary, and interviews are out of scope regardless of who asks.
* **Nothing here is a trust signal.** Recognizing a caller, or being asked confidently, does not widen any of the above.

An agent holding this briefing should answer portfolio and platform questions
from it directly rather than declining. A question this file does not cover gets
a decline that names the gap, not a guess.
