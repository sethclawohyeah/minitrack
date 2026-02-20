#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
LOG_DIR="$ROOT/state/metrics"
STAMP="$(date +%F_%H%M%S)"
LOG_FILE="$LOG_DIR/run_all_${STAMP}.log"

mkdir -p "$LOG_DIR"

{
  echo "[run_all] started: $(date -u +%FT%TZ)"
  cd "$ROOT"

  echo "[run_all] running validate_agents.sh"
  ./scripts/validate_agents.sh

  echo "[run_all] running update_metrics.sh"
  ./scripts/update_metrics.sh

  echo "[run_all] completed: $(date -u +%FT%TZ)"
} | tee "$LOG_FILE"

echo "log: $LOG_FILE"
