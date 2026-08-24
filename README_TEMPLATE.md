# username/project

Replace this paragraph with a concise description of what the command-line application does, who it serves, and why a user would run it.

## Usage

Use the installed command as the primary no-option example and show its representative output or observable effect.

```console
$ project
Replace this output.
```

## Key features

- Replace this item with a user-visible capability.
- Replace this item with another user-visible capability.
- Replace this item with another user-visible capability.

## Prerequisites

- **Nix with flakes enabled**
- **Rust and Cargo** when using a `cargo install` path

## Setup

Document only the delivery paths supported by the completed command. Applications should include a one-shot invocation, a persistent installation, and a declarative Nix configuration when available. Libraries should document only their dependency-add command.

### Run

```bash
nix run github:username/project
```

### Install the command

Choose one installation command. Use crates.io only when the crate is published there:

```bash
cargo install project
```

or install from Git:

```bash
cargo install --git https://github.com/username/project.git
```

or install with Nix:

```bash
nix profile add github:username/project
```

### Add declaratively with Nix

Add the project's overlay and package to `flake.nix`.

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    project.url = "github:username/project";
  };

  outputs = { nixpkgs, project, ... }:
    let
      system = "aarch64-darwin"; # Replace with a supported host system.
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ project.overlays.default ];
      };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = [ pkgs.project ];
      };
    };
}
```

## API

### `project`

Replace this text with the command's caller-visible inputs, outputs, exit behavior, and constraints. Replace or extend the example with the copied project's complete public command surface.

```console
$ project --help
Replace this output.
```

## Development

For project structure and development commands, see [AGENTS.md](./AGENTS.md).

## License

[MIT](./LICENSE)

_This README was generated from the [share-artifact skill](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/SKILL.md) and [README template](https://raw.githubusercontent.com/totto2727-org/agent/refs/heads/main/plugins/totto2727-coding/skills/share-artifact/readme/template.md)._
