fmt:
  cargo fmt

check:
  cargo check --all-features

clippy:
  cargo clippy --all-features

checkf:
  @just fmt
  @just check

checkfc:
  @just checkf
  cargo clippy

run +arguments="":
  @just checkfc
  cargo run -- {{arguments}}

