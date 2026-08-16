# template-rust-simple

## Repository structure

```text
.github/workflows/          Validation and optional publishing workflows
AGENTS_TEMPLATE.md          AI and developer guidance for copied projects
README_TEMPLATE.md          End-user documentation for copied projects
Cargo.toml                  Binary crate metadata and lint policy
Justfile                    Standard repository tasks
flake.nix                   Development shell, package, and overlay outputs
package.nix                 Nix package for the compiled command
rust-toolchain.toml         Rustup channel and components
src/main.rs                 Sample command-line entry point
tests/cli.rs                End-to-end command test
```

## Development commands

### Execution rules

- Run commands from the repository root.
- Enter the environment with `nix develop` before running Cargo or Just tasks.
- Use Just recipes for the standard Rust workflow; use Nix commands directly for package and flake validation.
- Keep `README_TEMPLATE.md` and `AGENTS_TEMPLATE.md` ready to become the copied project's canonical documents.

### Standard tasks

- `nix develop` — Enter the environment that supplies rustup and Just; rustup resolves the channel declared in `rust-toolchain.toml`.
- `just fix` — Format Rust source and apply supported Clippy fixes.
- `just check` — Verify rustfmt and Clippy findings.
- `just build` — Build the binary with every feature enabled.
- `just test` — Run all tests with every feature enabled.
- `just run` — Run the sample command.
- `just ci` — Run check, build, and test tasks.
- `nix build` — Build the installable package from `package.nix`.
- `nix run .` — Run the packaged command.
- `nix flake check --all-systems --no-build` — Evaluate flake outputs for every supported system without building them.

## Architecture

### Template documentation

- `README.md` and this `AGENTS.md` describe how to use and maintain the template repository.
- `README_TEMPLATE.md` and `AGENTS_TEMPLATE.md` become the copied project's documentation after their placeholders are replaced.
- All four documents follow the share-artifact README or AGENTS structure and retain their provenance footers, with the explicit project-level exception that no `CLAUDE.md` alias is maintained.

### Command and package

- `src/main.rs` owns the sample command entry point and prints the observable greeting.
- `tests/cli.rs` runs the compiled binary and verifies its exit status and stdout.
- `package.nix` builds the command with nixpkgs' Rust platform independently of the rustup-based development shell.
- `flake.nix` exports the package, default package, and reusable overlay for supported Darwin and Linux systems.

### Quality policy

- `Cargo.toml` forbids `unsafe` code and denies Clippy `all`, `pedantic`, `unwrap_used`, and `expect_used` findings.
- The CI workflow enters the Nix environment and runs `just ci`.
- The FlakeHub workflow remains disabled until a copied project explicitly and safely enables publication.

## Development tools

- **Rustup**: Installs and selects the Rust toolchain declared in `rust-toolchain.toml`.
- **Rust and Cargo**: Build, check, test, and run the command-line application.
- **Clippy and rustfmt**: Enforce lint and formatting policy.
- **Just**: Defines the standard development task surface.
- **Nix flakes**: Build the package and expose its overlay while pinning Nix inputs; the floating rustup channel is resolved separately.

## Package-specific rules

- Replace `project` in `Cargo.toml`, `package.nix`, `flake.nix`, and `tests/cli.rs`; replace `username/project`, repository metadata, description, keywords, version, and Nix metadata.
- Delete `package.nix` and remove the package and overlay wiring from `flake.nix` only when the copied project does not need an installable Nix package; keep the development shell.
- Keep or replace the stable `rust-toolchain.toml` channel, components, and targets according to the copied project's requirements.
- Customize `README_TEMPLATE.md` and `AGENTS_TEMPLATE.md`. Document the complete public command surface inline; if the copied project introduces a library API, inspect its canonical registry documentation first and use a maintained registry API index when available.
- After removing all placeholders, replace the template-only canonical documents:

```bash
rm README.md AGENTS.md
mv README_TEMPLATE.md README.md
mv AGENTS_TEMPLATE.md AGENTS.md
```

- Keep the FlakeHub workflow disabled until every mutable `uses:` reference in the privileged publishing workflow is pinned to an audited full commit SHA. Use the official FlakeHub publishing wizard to verify the repository name, set visibility to `public`, and verify the trusted GitHub organization binding; run `nix flake check --all-systems --no-build` and confirm the workflow triggers only from protected `main`. After those checks and action pinning, rename the file to `flakehub-publish-rolling.yml` and run `just ci`; delete the disabled file when publication is not required.
- Update `Cargo.lock` after dependency or toolchain changes and run `nix flake update` after Nix input changes.
- Run `just ci`, `nix build`, and `nix flake check --all-systems --no-build` in the converted repository before handoff.

_This AGENTS.md was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [AGENTS template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/agents/template.md)._
