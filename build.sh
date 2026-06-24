#!/usr/bin/env bash
set -euo pipefail

cargo build --manifest-path mdbook-katex/Cargo.toml --quiet

export PATH="$(pwd)/mdbook-katex/target/debug:$PATH"

cmd="mdbook serve"
if [[ "${1:-}" == "--open" ]]; then
  cmd="mdbook serve --open"
fi

exec $cmd
