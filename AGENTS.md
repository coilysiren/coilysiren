# Agent instructions

You have landed in `coilysiren/coilysiren`, the GitHub profile repo: `README.md` renders as the landing page on <https://github.com/coilysiren>. This file is the bootstrap guide for an agent starting here with no other context. It points at where the rest of the world lives and how to find things, rather than prescribing steps.

## Orient yourself

How much context you have depends on where you are running:

- **On Kai's fleet**, the global conventions are already loaded: `~/.claude/CLAUDE.md` chains to `agentic-os-kai/AGENTS.md` (the private operating context, `coilyco-bridge/agentic-os-kai` on Forgejo), which layers on the public base from `agentic-os`. If a term in this repo confuses you, search those two files and their skills before searching the web.
- **On a standalone clone**, there is no global context and no `../AGENTS.md` to resolve. Everything this repo itself requires is in this file. The public half of the wider system is browsable at [coilyco-flight-deck/agentic-os](https://github.com/coilyco-flight-deck/agentic-os); the private half lives on a Forgejo you cannot reach, and nothing in this repo depends on it.

## The world this repo sits in

A search map, not a setup script:

- **Workspace layout** - repos on Kai's fleet check out to `~/projects/<owner>/<repo>`, so this repo's canonical home is `~/projects/coilysiren/coilysiren/`. Owner directories (`~/projects/coilysiren/`) are not repos - never clone into one directly. The `repo-coilysiren` pointer skill (stamped at `.agents/skills/repo-coilysiren/` by a fleet sweep) encodes the same path.
- **Two hosts, split canonicality** - the fleet's source of truth is Forgejo (`forgejo.coilysiren.me`), with GitHub as a PR-gated mirror. This repo is the one inversion: **GitHub is canonical** because the profile renders from GitHub `main`, and Forgejo is the mirror (fleet-tooling encoding: [infrastructure#299](https://forgejo.coilysiren.me/coilyco-flight-deck/infrastructure/issues/299)). Cross-repo issue refs in this repo are full URLs so the host is never ambiguous; a bare `#N` means this repo's tracker.
- **Four org bays** - `coilyco-flight-deck` (public builds), `coilyco-bridge` (control surfaces, including the coily security boundary), `coilyco-gaming` (game-server code), and `coilysiren` (personal: this repo, the website). The README's `production_floor` table is the human-facing map of the same split, and the website repo (`coilysiren/website`) is where the bay logos canonically live (`src/images/icons/`).
- **Commands route through coily on the fleet** - a CLI security boundary that reads each repo's `.coily/coily.yaml`. This repo declares no dev verbs (`commands: {}`); there is nothing to build or run here. On a standalone clone, plain git and a markdown preview are the whole toolchain. The one script, `scripts/fleet-readout.sh`, only works on the fleet (it reads the live tailnet and cluster through coily).
- **Deeper context ships as skills** - on the fleet, search `agentic-os-kai/.agents/skills/` by topic (`writing-bio-surface` holds the Resume sync list, `kai-git-workflow` the git exceptions, `tooling-repo-baseline` the fleet-management machinery behind `.agentic-os-ignore`).

## This repo, specifically

- **Shape** - `README.md` is the product: the rendered profile, deliberately long-form, the one repo exempt from fleet size caps. `docs/` holds `FEATURES.md` (the living inventory - update it in the same commit as any feature-shaped change) plus pointer stubs for content folded back into the README. `assets/` holds images that cannot be hotlinked. `scripts/fleet-readout.sh` regenerates the README's live readout blocks with the redaction rules built in.
- **Sync contract** - the README's intro paragraphs are a sync target for `Resume.md` (sync list in the `writing-bio-surface` skill). Edits to the `whoami` prose may be overwritten or propagated by that sync.
- **Validation** - none. `.agentic-os-ignore` opts the repo out of fleet baseline management and `.pre-commit-config.yaml` is intentionally empty. Proofread by hand.
- **Writing rules** - mobile first: no layout wider than 2 columns, code blocks under ~44 chars. Voice: she/her, no em-dashes, no semicolons in prose. The readouts are real - regenerate them with the script rather than hand-editing, and keep the honesty marks (the ✗ pods, the `1/3 nodes`) instead of greenwashing them.
- **Safety** - never `--no-verify`. Opaque identifiers (tokens, tailnet IPs/FQDNs, hash suffixes) never land in tracked files - on the fleet they belong in AWS SSM, and the readout script already strips them on the way in.

## Landing work

Commit straight to `main`, no branches, no PRs, push after each commit. Close issues with a `closes #<N>` trailer. The canonical checkout pushes GitHub and the Forgejo mirror in one command: `origin` fetches from GitHub and carries both pushurls, and a `forgejo` remote fetches the mirror - run `git remote -v` on a fleet checkout to see the wiring if a fresh clone needs it recreated. If the mirror push fails for lack of Forgejo credentials, the GitHub push already landed and the fleet git sweep will flag the mirror as behind - nothing is lost.

## See also

- [README.md](README.md) - the product.
- [docs/FEATURES.md](docs/FEATURES.md) - inventory of what ships today.
- [.coily/coily.yaml](.coily/coily.yaml) - catalog metadata, no commands.

Cross-reference convention from [coilyco-flight-deck/agentic-os#59](https://github.com/coilyco-flight-deck/agentic-os/issues/59). The README intentionally drops this footer: a profile repo citing its own owner's convention repo read as circular, and this repo is exempt from the convention's enforcement anyway.
