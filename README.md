# Rust Simple Library Template

A GitHub repository template for starting a small Rust library with reproducible Nix tooling, standard Just tasks, continuous integration, and optional FlakeHub publishing.

## Usage

Create a repository from the template, replace the crate placeholders, and use the included `add` function as the starting public API:

```rust
use project::add;

assert_eq!(add(2, 3), 5);
```

## Key features

- Rust 2024 library layout with documented public API and an integration test
- Reproducible Nix development shell with Rust, Cargo, Clippy, rustfmt, and Just
- Standard formatting, linting, build, test, and CI tasks
- Strict Clippy policy with `unsafe` code forbidden by default
- Optional FlakeHub publishing workflow
- Copy-target README and AGENTS templates that follow the share-artifact specification

## Prerequisites

- **GitHub CLI** (optional): Run the documented creation command; GitHub's **Use this template** flow can be used instead.
- **Nix**: Enter the pinned development environment.

## Setup

1. Create and clone a repository from the template with GitHub CLI, or use GitHub's **Use this template** flow and clone it normally.

```bash
gh repo create username/project --template totto2727-org/template-rust-simple --public --clone
```

2. Enter the repository and replace the crate name, repository, description, and keywords in `Cargo.toml`.

```bash
cd project
```

3. Enter the development environment.

```bash
nix develop
```

4. Complete the documentation, crate, and optional publishing conversion steps in [AGENTS.md](./AGENTS.md), then run `just ci`.

## API

### `add`

Returns the sum of two signed 32-bit integers and provides a minimal public function to replace when starting the copied library.

```rust
assert_eq!(project::add(-2, 5), 3);
```

## Development

For template conversion, project structure, and development commands, see [AGENTS.md](./AGENTS.md).

## License

[MIT](./LICENSE)

_This README was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [README template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/readme/template.md)._
