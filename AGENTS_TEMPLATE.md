# username/project

Replace this paragraph with the project-specific guidance that AI agents need before modifying the repository.

## Language Rules

- Use English by default for source code, configuration, documentation, and other repository-recorded artifacts.
- Replace or extend these rules when the copied project has additional language requirements.

## Repository Structure

- `Cargo.toml` defines the crate metadata, lint policy, and dependencies.
- `src/` contains the library implementation.
- `tests/` contains integration tests.
- `flake.nix` and `flake.lock` define the reproducible development environment.
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
just ci
```

Targeted tasks are available as `fix-format`, `fix-lint`, `check-format`, and `check-lint`.

## Package Updates

When upgrading a package or the Rust toolchain, update `Cargo.lock` as needed and run `nix flake update`.

## Rust Conventions

- Keep `unsafe` code forbidden unless the project documents and reviews a necessary exception.
- Preserve the lint policy in `Cargo.toml` unless the project documents a deliberate change.
- Keep public APIs documented and cover externally observable behavior with integration tests.

## Architecture and Conventions

Replace this section with the copied project's source layout, public boundaries, naming rules, and other repository-specific constraints.

## Development Tools

- **Rust and Cargo** - build, check, test, and package the library.
- **Clippy and rustfmt** - lint and format Rust source code.
- **Just** - provides the standard development commands.
- **Nix flakes** - provide the pinned development toolchain and dependencies.
