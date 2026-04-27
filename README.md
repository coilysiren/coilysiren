```
$ ssh kai@kai-server
Last login: now from anywhere via tailscale

██╗  ██╗ █████╗ ██╗    ███████╗██╗██████╗ ███████╗███╗   ██╗
██║ ██╔╝██╔══██╗██║    ██╔════╝██║██╔══██╗██╔════╝████╗  ██║
█████╔╝ ███████║██║    ███████╗██║██████╔╝█████╗  ██╔██╗ ██║
██╔═██╗ ██╔══██║██║    ╚════██║██║██╔══██╗██╔══╝  ██║╚██╗██║
██║  ██╗██║  ██║██║    ███████║██║██║  ██║███████╗██║ ╚████║
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝    ╚══════╝╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝

  platform / sre · east bay · >10 yrs in
  lights out, platform's green, agents are working the line.
```

<table>
<tr>
<td width="58%" valign="top">

### `> whoami`

**Hi! I'm Kai.** Platform engineer, >10 years in, currently most interested in what one person can build right now. The ceiling has shifted a lot in the last year and I'm pushing on it.

Day job is platform / SRE work that's slowly bending toward AI agents and observability. Off-hours I run a small lights-out factory: a single-node k3s homelab, a herd of agents that build and break my own services in the dark, and a steady output of small tools that exist because I wanted them to.

I treat AI tooling the way I'd treat any other piece of infra. Wire it in, instrument it, then push on it until it shows you where it breaks.

> "The thing I'm most excited about right now is **Gauntlet**, a two-agent adversarial loop that infers software correctness by watching how code behaves under sustained, targeted attack in a dark factory environment. About 20 agents are running on it as I write this." - [/now](https://coilysiren.me/now)

</td>
<td width="42%" valign="top">

### `> shift_report`

```yaml
operator:    Kai Siren
role:        Senior Platform Engineer
employer:    Kapwing
location:    East Bay, California
             (Ohlone territory)
shift:       lights-out

active_repos_30d: ~35
homelab:          single-node k3s
                  on Tailscale

specialties:
  - platform / SRE
  - AI agents + MCP
  - observability
  - adversarial testing
  - the substrate nobody
    notices until it breaks

prior_art:
  - urfave/cli maintainer
  - Built HHS gov site @ Nava
  - DevOps EM @ EnergyHub
  - Multi-cloud BGP VPN @ Textio
  - Crypto product @ Callisto
```

</td>
</tr>
</table>

---

## `> production_floor`

What's running in the dark factory right now. Status is honest, not aspirational.

| Build | What it is | Status |
|-------|-----------|--------|
| 🥊 **[gauntlet](https://github.com/coilysiren/gauntlet)** | Two-agent adversarial loop. Infers correctness by watching code behave under sustained, targeted attack. A fleet of agents running on it (count [on /now](https://coilysiren.me/now)). | `RUNNING HOT` |
| 🛰️ **[infrastructure](https://github.com/coilysiren/infrastructure)** | Single-node k3s, GH Actions deploys, SSM-backed secrets, reachable over Tailscale. The substrate everything else lives on. | `OPERATIONAL` |
| 🧰 **[coily](https://github.com/coilysiren/coily)** | Operator CLI wrapping kubectl / aws / gh / ssh for kai-server. The only tool authorized for privileged ops. Audit-logs everything. | `ACTIVE` |
| 🌱 **[eco-mods-public](https://github.com/coilysiren/eco-mods-public)** + **[eco-cycle-prep](https://github.com/coilysiren/eco-cycle-prep)** | C# mods + Python cycle automation for [Eco via Sirens](https://play.eco). Biggest OSS output over rolling 6-month windows. | `ACTIVE` |
| 📡 **[eco-spec-tracker](https://github.com/coilysiren/eco-spec-tracker)** | FastAPI + HTMX live dashboard of every player's professions. Live at [eco-jobs-tracker.coilysiren.me](https://eco-jobs-tracker.coilysiren.me). | `LIVE` |
| 🔌 **[eco-mcp-app](https://github.com/coilysiren/eco-mcp-app)** | Inline Claude Desktop widget for any public Eco server. Hand-rolled MCP Apps iframe in ~300 lines, no bundler. | `WIP` |
| 📊 **[bsky-popularity-contest](https://coilysiren.me/apps/bsky-popularity-contest/)** | Small Bluesky stats app. | `LIVE` |
| 📈 **claude-code-pulse** | Cognition-stack telemetry over Claude transcripts. Daily rollups, reading lists, the whole pipeline. | `ACTIVE` |
| 📝 **[Golang PR Field Notes](https://coilysiren.me)** | Blog series on real OSS contributions. | `ONGOING` |

---

## `> stack`

<div align="center">

![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![Go](https://img.shields.io/badge/Go-00ADD8?style=flat-square&logo=go&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=flat-square&logo=gnubash&logoColor=white)
![C#](https://img.shields.io/badge/C%23-512BD4?style=flat-square&logo=csharp&logoColor=white)

![AWS](https://img.shields.io/badge/AWS-232F3E?style=flat-square&logo=amazonaws&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=flat-square&logo=kubernetes&logoColor=white)
![k3s](https://img.shields.io/badge/k3s-FFC61C?style=flat-square&logoColor=black)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)
![Tailscale](https://img.shields.io/badge/Tailscale-242424?style=flat-square&logo=tailscale&logoColor=white)

![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=flat-square&logo=prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/Grafana-F46800?style=flat-square&logo=grafana&logoColor=white)
![Sentry](https://img.shields.io/badge/Sentry-362D59?style=flat-square&logo=sentry&logoColor=white)

![Claude](https://img.shields.io/badge/Claude_Code-CC785C?style=flat-square&logo=anthropic&logoColor=white)
![MCP](https://img.shields.io/badge/MCP-191919?style=flat-square&logo=anthropic&logoColor=white)

</div>

---

## `> service_history`

```
2025 - now    Kapwing                Senior Software Engineer
2023 - 2025   Nava                   Principal Infrastructure Engineer
2022 - 2023   Textio                 Staff Infrastructure Engineer
2021 - 2022   EnergyHub              DevOps Engineering Manager
2020 - 2021   Bluelink               Senior Backend Engineer
2018 - 2020   Textio                 Senior Infrastructure Engineer
2016 - 2018   Callisto               Senior Software Engineer
2015 - 2016   Harlot Media           Software Engineer
2014 - 2015   Quirell / CollectQT    Software Engineer
2012 - 2013   NASA Goddard           Engineering Student Ambassador
```

Full career page with stack details and shipped projects: [coilysiren.me/resume](https://coilysiren.me/resume).
Living document of what I'm into this week: [coilysiren.me/now](https://coilysiren.me/now).

---

## `> comms`

<div align="center">

[![Site](https://img.shields.io/badge/coilysiren.me-Site-FF6B6B?style=flat-square)](https://coilysiren.me)
[![Bluesky](https://img.shields.io/badge/@coilysiren.me-Bluesky-0285FF?style=flat-square&logo=bluesky&logoColor=white)](https://bsky.app/profile/coilysiren.me)
[![X](https://img.shields.io/badge/@coilysiren-X-000000?style=flat-square&logo=x&logoColor=white)](https://x.com/coilysiren)
[![LinkedIn](https://img.shields.io/badge/coilysiren-LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white)](https://linkedin.com/in/coilysiren)

</div>

---

> I build things for the joy of it. Things that give engineering teams more leverage. Now I'm pointing the same instinct at my own work, with AI as the accelerant.
