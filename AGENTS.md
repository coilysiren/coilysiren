# Agent instructions

Workspace conventions load globally via `~/.claude/CLAUDE.md` -> `agentic-os-kai/AGENTS.md` (`coilyco-bridge/agentic-os-kai` on Forgejo - bare `agentic-os-kai` below means that repo). This file covers only what is specific to this repo.

---

This is the GitHub profile repo - `coilysiren/coilysiren` renders as the landing page on <https://github.com/coilysiren>.

`README.md` is one of the sync targets for `Resume.md`'s intro paragraphs (full sync list in the `writing-bio-surface` skill, shipped from `coilyco-bridge/agentic-os-kai` on Forgejo). Direct-to-main per the workspace git workflow, no PR.

## Scope

The GitHub profile landing page and its supporting docs. No application code.

## Project shape

`README.md` is the rendered profile, deliberately long-form (this repo is exempt from the fleet size caps and is the designated long-content surface). `docs/` holds `FEATURES.md` plus pointer stubs (`production_floor.md`, `service_history.md`) for content folded back into the README. `assets/` holds committed images the README cannot hotlink (the coily-siren bay logo - the GitHub account avatar is Kai's headshot, so the `github.com/<name>.png` trick serves the wrong image; canonical logo source is `coilysiren/website` `src/images/icons/`). `scripts/fleet-readout.sh` regenerates the README's live tailnet and pod readout blocks with the redaction rules built in.

## Repo boundaries

Stay inside this repo. Cross-repo context lives in `agentic-os-kai/AGENTS.md`, loaded globally via `~/.claude/CLAUDE.md` on Kai's fleet - there is no workspace-relative `../AGENTS.md` a standalone clone can resolve.

**Workspace layout.** On Kai's fleet every repo checks out to `~/projects/<owner>/<repo>`, where `<owner>` is the Forgejo org (here, also the GitHub owner). This repo's canonical path is `~/projects/coilysiren/coilysiren/`. `~/projects/coilysiren/` is the owner directory holding all coilysiren-org repos, not a repo itself - never clone into it directly. The `repo-coilysiren` pointer skill stamps the canonical path on this convention.

**Issue-ref convention.** Cross-repo issue refs in this repo are full URLs so the host is unambiguous (canonicality is split across the fleet: most repos are Forgejo-canonical at `forgejo.coilysiren.me`, this one is GitHub-canonical). Bare `owner/repo#N` is allowed only for same-repo refs.

## Commands

No dev verbs - see [.coily/coily.yaml](.coily/coily.yaml).

## Validation

None. This repo is exempt from the agentic-os fleet baseline - `.agentic-os-ignore` opts it out of the managed pre-commit block and hook wiring, and `.pre-commit-config.yaml` is intentionally empty. Proofread by hand.

## Safety

Never use `--no-verify`. Never commit secrets - opaque ids go in AWS SSM per the global operating context (`agentic-os-kai/AGENTS.md`).

## Cross-repo contracts

`README.md` intro paragraphs sync from `Resume.md` (sync list in the `writing-bio-surface` skill, shipped from `coilyco-bridge/agentic-os-kai` on Forgejo). This repo opts out of fleet management via `.agentic-os-ignore` - baseline rollouts (managed hook block, hook wiring) skip it.

## Release

No release artifact. **GitHub is canonical for this repo - the only GitHub-canonical repo in the fleet.** The profile page renders from GitHub `main`, so changes land by pushing straight to GitHub `main` - no branches, no PRs. Forgejo is the mirror here (the inverse of the workspace default). Push it too so the fleet git sweep stays quiet. Fleet-tooling encoding of this exception: [infrastructure#299](https://forgejo.coilysiren.me/coilyco-flight-deck/infrastructure/issues/299).

**Remote setup.** The canonical checkout carries two remotes: `origin` fetches from GitHub (`git@github.com:coilysiren/coilysiren.git`) and pushes to **both** GitHub and the Forgejo mirror via a second pushurl, and `forgejo` fetches from the mirror (`https://forgejo.coilysiren.me/coilysiren/coilysiren.git`). With that wiring, `git push origin main` satisfies the dual-push contract in one command. A fresh clone from GitHub has only `origin` - recreate the wiring with:

```sh
git remote set-url --add --push \
  origin \
  git@github.com:coilysiren/coilysiren.git
git remote set-url --add --push \
  origin \
  https://forgejo.coilysiren.me/coilysiren/coilysiren.git
git remote add forgejo \
  https://forgejo.coilysiren.me/coilysiren/coilysiren.git
```

Forgejo push auth comes from Kai's usual Forgejo credentials (HTTPS token or credential helper) - if the mirror push fails on a host without them, the GitHub push still landed and the fleet git sweep will flag the mirror as behind rather than losing work.

## Agent rules

Commit to `main` directly and push after each commit, no branches, no PRs. **Mobile first**: the profile renders on phones, so no layout wider than 2 columns (no side-by-side HTML tables, no 3-column markdown tables) and code blocks stay under ~44 characters wide. Close issues with a `closes #<N>` trailer. Voice rules apply (she/her, no em-dashes, no semicolons in prose).

## See also

- [README.md](README.md) - human-facing intro.
- [docs/FEATURES.md](docs/FEATURES.md) - inventory of what ships today.
- [.coily/coily.yaml](.coily/coily.yaml) - allowlisted commands.

Cross-reference convention from [coilyco-flight-deck/agentic-os#59](https://github.com/coilyco-flight-deck/agentic-os/issues/59). The README intentionally drops this footer: a profile repo citing its own owner's convention repo read as circular, and this repo is exempt from the convention's enforcement anyway.
