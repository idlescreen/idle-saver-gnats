#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0
# Build RPM/DEB for this saver only after tests pass.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"
./scripts/qa_package_gate.sh
echo ">>> cargo build --release"
cargo build --release
echo ">>> cargo generate-rpm"
cargo generate-rpm
if command -v cargo-deb >/dev/null 2>&1 || cargo deb --help >/dev/null 2>&1; then
  cargo deb --no-build || true
fi
echo "Package artifacts under target/generate-rpm/ (and target/debian/ if deb built)"
