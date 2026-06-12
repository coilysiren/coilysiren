# Agent instructions

Workspace conventions load globally via `~/.claude/CLAUDE.md` -> `agentic-os-kai/AGENTS.md`. This file covers only what is specific to this repo.

---

This is the GitHub profile repo - `coilysiren/coilysiren` renders as the landing page on <https://github.com/coilysiren>.

`README.md` is one of the sync targets for `Resume.md`'s intro paragraphs (full sync list in the `writing-bio-surface` skill, shipped from `agentic-os-kai`). Direct-to-main per the workspace git workflow, no PR.

## Scope

The GitHub profile landing page and its supporting docs. No application code.

## Project shape

`README.md` is the rendered profile, deliberately long-form (this repo is exempt from the fleet size caps and is the designated long-content surface). `docs/` holds `FEATURES.md` plus pointer stubs (`production_floor.md`, `service_history.md`) for content folded back into the README.

## Repo boundaries

Stay inside this repo. Cross-repo context lives in `agentic-os-kai/AGENTS.md`, loaded globally via `~/.claude/CLAUDE.md` on Kai's fleet - there is no workspace-relative `../AGENTS.md` a standalone clone can resolve.

## Commands

No dev verbs - see [.coily/coily.yaml](.coily/coily.yaml).

## Validation

None. This repo is exempt from the agentic-os fleet baseline - `.agentic-os-ignore` opts it out of the managed pre-commit block and hook wiring, and `.pre-commit-config.yaml` is intentionally empty. Proofread by hand.

## Safety

Never use `--no-verify`. Never commit secrets - opaque ids go in AWS SSM per the global operating context (`agentic-os-kai/AGENTS.md`).

## Cross-repo contracts

`README.md` intro paragraphs sync from `Resume.md` (sync list in the `writing-bio-surface` skill, shipped from `agentic-os-kai`). This repo opts out of fleet management via `.agentic-os-ignore` - baseline rollouts (managed hook block, hook wiring) skip it.

## Release

No release artifact. **GitHub is canonical for this repo - the only GitHub-canonical repo in the fleet.** The profile page renders from GitHub `main`, so changes land by pushing straight to GitHub `main` - no branches, no PRs. Forgejo is the mirror here (the inverse of the workspace default); push it too so the fleet git sweep stays quiet. Fleet-tooling encoding of this exception: [infrastructure#299](https://forgejo.coilysiren.me/coilyco-flight-deck/infrastructure/issues/299).

## Agent rules

Commit to `main` directly and push after each commit, no branches, no PRs. Close issues with a `closes #<N>` trailer. Voice rules apply (she/her, no em-dashes, no semicolons in prose).

## See also

- [README.md](README.md) - human-facing intro.
- [docs/FEATURES.md](docs/FEATURES.md) - inventory of what ships today.
- [.coily/coily.yaml](.coily/coily.yaml) - allowlisted commands.

Cross-reference convention from [coilysiren/agentic-os#59](https://github.com/coilysiren/agentic-os/issues/59).
