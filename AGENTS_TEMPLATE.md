# username/project

Replace this paragraph with the project-specific guidance that AI agents need before modifying the repository.

## Language Rules

- Use English by default for source code, configuration, documentation, and other repository-recorded artifacts.
- Replace or extend these rules when the copied project has additional language requirements.

## Repository Structure

- `Cargo.toml` defines the crate metadata, lint policy, and dependencies.
- `rust-toolchain.toml` defines the Rust channel and rustup components.
- `src/main.rs` contains the command-line application entry point.
- `tests/` contains end-to-end command tests.
- `package.nix` defines the installable Nix package built with nixpkgs' Rust platform independently of the rustup development toolchain.
- `flake.nix` and `flake.lock` expose the package and overlay while pinning rustup, Just, and other Nix-provided tools.
- `.github/workflows/` contains validation and optional publishing workflows.

## Development Commands

Run commands from the repository root inside the Nix development shell.

### Execution Rules

- Enter the environment with `nix develop` before running project commands.
- Use Just recipes instead of invoking formatting, linting, build, or test commands directly.

### Standard Tasks

```bash
just fix
just check
just build
just test
just run
just run-nix
just ci
```

Targeted tasks are available as `fix-format`, `fix-lint`, `check-format`, `check-lint`, `build-cargo`, and `build-nix`.

## Package Updates

Update `Cargo.lock` when dependencies change. Update `rust-toolchain.toml` when the Rust channel, components, or targets change. Run `nix flake update` when Nix inputs change.

## Rust Conventions

- Keep `unsafe` code forbidden unless the project documents and reviews a necessary exception.
- Preserve the lint policy in `Cargo.toml` unless the project documents a deliberate change.
- Cover externally observable command behavior with end-to-end tests.

## Architecture and Conventions

Replace this section with the copied project's source layout, public boundaries, naming rules, and other repository-specific constraints.

## Development Tools

- **Rustup** - installs and selects the Rust toolchain declared in `rust-toolchain.toml`.
- **Rust and Cargo** - build, check, test, and run the command-line application.
- **Clippy and rustfmt** - lint and format Rust source code.
- **Just** - provides the standard development commands.
- **Nix flakes** - build the package with nixpkgs' Rust platform and expose its package and overlay while pinning rustup, Just, and other Nix-provided tools.
