set shell := ["bash", "-euo", "pipefail", "-c"]

mod check 'check.just'
mod fix 'fix.just'

default:
    @just --list --list-submodules

build:
    cargo build --all-features

test:
    cargo test --all-features

run:
    cargo run

ci: check::all build test
