# username/project

## Repository structure

```text
.github/workflows/  Validation and publishing workflows
Cargo.toml          Crate metadata, lint policy, and dependencies
flake.nix           Reproducible development environment
rust-toolchain.toml Pinned Rust channel and components
src/                Library implementation
tests/              Integration tests
```

Replace the sample paths with the copied project's actual source and test layout.

## Development commands

### Execution rules

- Run commands from the repository root.
- Enter the environment with `nix develop` before running project tasks.
- Use Just recipes instead of invoking formatting, linting, build, or test tools directly.

### Standard tasks

- `nix develop` — Enter the pinned development environment.
- `just fix` — Format source and apply supported lint fixes.
- `just check` — Verify formatting and lint findings.
- `just build` — Build the crate with every feature enabled.
- `just test` — Run all tests with every feature enabled.
- `just ci` — Run the complete local validation gate.

## Architecture

### Package boundaries

- Replace this item with the copied project's module ownership and dependency direction.
- Propagate recoverable errors with typed results and keep `unsafe` code forbidden unless a documented exception is necessary.

### Public API

- Keep public declarations documented with caller-visible behavior, constraints, and errors.
- Inspect the canonical crate registry documentation first and use its maintained API index when one exists; only otherwise use complete inline coverage or a substantive existing guide.
- Cover externally observable behavior with focused tests.

## Development tools

- **Rust and Cargo**: Build, check, test, and package the project.
- **Clippy and rustfmt**: Enforce lint and formatting policy.
- **Just**: Defines the standard development task surface.
- **Nix flakes**: Pin the development toolchain and supporting dependencies.

## Package-specific rules

- Replace this section with repository-specific invariants and remove placeholder guidance before handoff.
- Keep publishing workflows disabled until every mutable `uses:` reference in each privileged publishing workflow is pinned to an audited full commit SHA.
- Before enabling FlakeHub publication, use the official FlakeHub publishing wizard to verify the repository name, public visibility, and trusted GitHub organization binding; run `nix flake check --all-systems --no-build` and confirm the workflow triggers only from protected `main`.
- Update `Cargo.lock` after dependency or toolchain changes.
- Run `nix flake update` after Nix input changes.

_This AGENTS.md was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [AGENTS template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/agents/template.md)._
