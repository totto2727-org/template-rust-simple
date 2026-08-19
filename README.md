# Rust Simple CLI Template

A GitHub repository template for starting a small Rust command-line application with a Nix development shell, a buildable package and overlay, standard Just tasks, continuous integration, and optional FlakeHub publishing.

## Usage

The included command can be run from source with Cargo or through the Nix package:

```console
$ cargo run --quiet
Hello, world!

$ nix run .
Hello, world!
```

## Key features

- Rust 2024 command-line layout with an end-to-end integration test
- Nix development shell with rustup and Just
- Buildable Nix package and reusable overlay
- Standard formatting, linting, build, test, run, and CI tasks
- Strict Clippy policy with `unsafe` code forbidden by default
- Optional FlakeHub publishing workflow
- Copy-target README and AGENTS templates that follow the share-artifact specification

## Prerequisites

- **GitHub CLI** (optional): Run the documented creation command; GitHub's **Use this template** flow can be used instead.
- **Rust 1.85 or later and Cargo**: Required to run the command from source with `cargo run --quiet`.
- **Nix with flakes enabled**: Optional alternative for running the packaged command with `nix run .`.

## Setup

1. Create and clone a repository from the template with GitHub CLI, or use GitHub's **Use this template** flow and clone it normally.

```bash
gh repo create username/project --template totto2727-org/template-rust-simple --public --clone
cd project
```

2. Run the sample directly from source:

```bash
cargo run --quiet
```

3. Alternatively, run the packaged command through Nix:

```bash
nix run .
```

## API

### `project`

Runs the sample command-line application and prints one greeting followed by a newline.

```console
$ nix run .
Hello, world!
```

## Development

For template conversion, project structure, and development commands, see [AGENTS.md](./AGENTS.md).

## License

[MIT](./LICENSE)

_This README was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [README template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/readme/template.md)._
