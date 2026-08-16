# template-rust-simple

## Repository structure

```text
.github/workflows/          Validation and optional publishing workflows
AGENTS_TEMPLATE.md          AI and developer guidance for copied projects
README_TEMPLATE.md          End-user documentation for copied projects
Cargo.toml                  Crate metadata and lint policy
Justfile                    Standard repository tasks
flake.nix                   Reproducible Rust development environment
rust-toolchain.toml         Pinned Rust channel and components
src/lib.rs                  Sample public library implementation
tests/lib.rs                Sample integration test
```

## Development commands

### Execution rules

- Run commands from the repository root.
- Enter the environment with `nix develop` before running project tasks.
- Use Just recipes instead of invoking formatting, linting, build, or test tools directly.
- Keep `README_TEMPLATE.md` and `AGENTS_TEMPLATE.md` ready to become the copied project's canonical documents.

### Standard tasks

- `nix develop` — Enter the pinned Rust development environment.
- `just fix` — Format Rust source and apply supported Clippy fixes.
- `just check` — Verify rustfmt and Clippy findings.
- `just build` — Build the crate with every feature enabled.
- `just test` — Run all tests with every feature enabled.
- `just ci` — Run check, build, and test tasks.
- `nix flake check --all-systems --no-build` — Evaluate the development shell for every supported system without building it.

## Architecture

### Template documentation

- `README.md` and this `AGENTS.md` describe how to use and maintain the template repository.
- `README_TEMPLATE.md` and `AGENTS_TEMPLATE.md` become the copied project's documentation after their placeholders are replaced.
- All four documents follow the share-artifact README or AGENTS specification and retain their provenance footers.

### Library sample

- `src/lib.rs` demonstrates one documented public function without imposing an application architecture on copied repositories.
- `tests/lib.rs` demonstrates an externally observable integration test and can be replaced with project-specific tests.

### Quality policy

- `Cargo.toml` forbids `unsafe` code and denies Clippy `all`, `pedantic`, `unwrap_used`, and `expect_used` findings.
- The CI workflow enters the Nix environment and runs `just ci`.
- The FlakeHub workflow remains disabled until a copied project explicitly and safely enables publication.

## Development tools

- **Rust and Cargo**: Build, check, test, and package the sample library.
- **Clippy and rustfmt**: Enforce lint and formatting policy.
- **Just**: Defines the standard development task surface.
- **Nix flakes**: Pin the Rust toolchain and supporting tools.

## Package-specific rules

- Replace the crate name, `username/project`, repository URL, description, keywords, README content, and AGENTS guidance when converting a copied repository.
- Customize `README_TEMPLATE.md` and `AGENTS_TEMPLATE.md`, apply the registry-first API documentation rule, then replace the template-only canonical documents:

```bash
rm README.md AGENTS.md
mv README_TEMPLATE.md README.md
mv AGENTS_TEMPLATE.md AGENTS.md
```

- Keep the FlakeHub workflow disabled until every mutable `uses:` reference in the privileged publishing workflow is pinned to an audited full commit SHA. Use the official FlakeHub publishing wizard to verify the repository name, public visibility, and trusted GitHub organization binding; run `nix flake check --all-systems --no-build` and confirm the workflow triggers only from protected `main`. After those checks and action pinning, rename the file to `flakehub-publish-rolling.yml` and run `just ci`; delete the disabled file when publication is not required.
- Update `Cargo.lock` after dependency or toolchain changes and run `nix flake update` after Nix input changes.
- Run `just ci` in the converted repository before handoff.

_This AGENTS.md was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [AGENTS template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/agents/template.md)._
