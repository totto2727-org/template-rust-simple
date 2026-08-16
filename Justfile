set shell := ["bash", "-euo", "pipefail", "-c"]

default: ci

fix: fix-format fix-lint

fix-format:
    cargo fmt --all

fix-lint:
    cargo clippy --fix --allow-dirty --allow-staged --all-targets --all-features -- -D warnings

check: check-format check-lint

check-format:
    cargo fmt --all --check

check-lint:
    cargo clippy --all-targets --all-features -- -D warnings

build: build-cargo build-nix

build-cargo:
    cargo build --all-features

build-nix:
    nix build --no-link

test:
    cargo test --all-features

run:
    cargo run

run-nix:
    nix run .

ci: check build test
