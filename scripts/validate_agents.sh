#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

echo "[validate] checking required files..."
required=(
  "OPENCLAW_MASTER_CONFIG.md"
  "agents/BOSS.md"
  "agents/BUILDER.md"
  "agents/SCOUT.md"
  "agents/OPERATOR.md"
  "state/tasks/builder-smoke-test.md"
  "state/tasks/scout-smoke-test.md"
  "state/tasks/operator-smoke-test.md"
  "state/tasks/e2e-handoff-report.md"
)

missing=0
for f in "${required[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo "[missing] $f"
    missing=1
  fi
done

if [[ $missing -eq 1 ]]; then
  echo "[validate] FAILED: missing required artifacts"
  exit 1
fi

echo "[validate] all required artifacts present"

# Quick sanity checks
for f in agents/BOSS.md agents/BUILDER.md agents/SCOUT.md agents/OPERATOR.md; do
  if ! grep -qi "Identity" "$f"; then
    echo "[warn] $f missing expected 'Identity' section"
  fi
done

echo "[validate] PASS"
