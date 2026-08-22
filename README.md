# Rust Simple CLI Template

A GitHub repository template for starting a small Rust command-line application with an immediately runnable sample, direct Cargo execution, and an optional reproducible Nix package.

## Usage

The included command can be run from source with Cargo or through the Nix package:

```console
$ cargo run --quiet
Hello, world!

$ nix run .
Hello, world!
```

## Key features

- Minimal Rust 2024 command with immediate observable output
- Direct execution from source with Cargo
- Optional reproducible execution through the Nix package

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
