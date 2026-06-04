# Agent instructions

Workspace conventions load globally via `~/.claude/CLAUDE.md` -> `agentic-os-kai/AGENTS.md`. This file covers only what is specific to this repo.

---

This is the GitHub profile repo - `coilysiren/coilysiren` renders as the landing page on <https://github.com/coilysiren>.

`README.md` is one of the sync targets for `Resume.md`'s intro paragraphs (see the parent `AGENTS.md` for the full sync list). Direct-to-main per the workspace git workflow, no PR.

## Scope

The GitHub profile landing page and its supporting docs. No application code.

## Project shape

`README.md` is the rendered profile. `docs/` holds overflow split out of the README (`production_floor.md`, `service_history.md`, `FEATURES.md`). Commit-msg enforcement rides the `coilysiren/agentic-os` pre-commit suite in `.pre-commit-config.yaml`, not a local `scripts/` dir.

## Repo boundaries

Stay inside this repo. Cross-repo context lives in the parent `../AGENTS.md` and `agentic-os-kai`.

## Commands

No dev verbs - see [.coily/coily.yaml](.coily/coily.yaml). Run the gate with `pre-commit run --all-files`.

## Validation

`pre-commit run --all-files` must pass before any commit (agentic-os documentation-layout, catalog, and commit hooks).

## Safety

Never use `--no-verify`. Never commit secrets - opaque ids go in AWS SSM per the parent `AGENTS.md`.

## Cross-repo contracts

`README.md` intro paragraphs sync from `Resume.md` (sync list in the parent `coilysiren/AGENTS.md`). The pre-commit hook suite is pinned by upstream ref to `coilysiren/agentic-os` and rolled out from `agentic-os-kai`.

## Release

No release artifact. Changes land on `main` and render live on the profile page.

## Agent rules

Commit to `main` directly and push after each commit, no PRs unless asked. Close issues with a `closes #<N>` trailer. Voice rules apply (she/her, no em-dashes, no semicolons in prose).

## See also

- [README.md](README.md) - human-facing intro.
- [docs/FEATURES.md](docs/FEATURES.md) - inventory of what ships today.
- [.coily/coily.yaml](.coily/coily.yaml) - allowlisted commands.

Cross-reference convention from [coilysiren/agentic-os#59](https://github.com/coilysiren/agentic-os/issues/59).
