# Rust Simple CLI Template

A GitHub repository template for starting a small Rust command-line application with a Nix development shell, a buildable package and overlay, standard Just tasks, continuous integration, and optional FlakeHub publishing.

## Usage

Create a repository from the template, complete the conversion described in `AGENTS.md`, and run the included command:

```console
$ cargo run --quiet
Hello, world!

$ nix run .
Hello, world!
```

## Key features

- Rust 2024 command-line layout with an end-to-end integration test
- Reproducible Nix development shell with rustup and Just
- Buildable Nix package and reusable overlay
- Standard formatting, linting, build, test, run, and CI tasks
- Strict Clippy policy with `unsafe` code forbidden by default
- Optional FlakeHub publishing workflow
- Copy-target README and AGENTS templates that follow the share-artifact specification

## Prerequisites

- **GitHub CLI** (optional): Run the documented creation command; GitHub's **Use this template** flow can be used instead.
- **Nix**: Build or run the template package through the pinned flake.

## Setup

1. Create and clone a repository from the template with GitHub CLI, or use GitHub's **Use this template** flow and clone it normally.

```bash
gh repo create username/project --template totto2727-org/template-rust-simple --public --clone
cd project
```

2. Complete the project-specific conversion in [AGENTS.md](./AGENTS.md).

## API

### `project`

Runs the sample command-line application and prints one greeting followed by a newline. The copied project replaces this placeholder command and its documented behavior.

```console
$ nix run .
Hello, world!
```

## Development

For template conversion, project structure, and development commands, see [AGENTS.md](./AGENTS.md).

## License

[MIT](./LICENSE)

_This README was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [README template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/readme/template.md)._
