#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
METRICS="$ROOT/state/metrics"
BASE="$METRICS/baseline.json"
LOG="$METRICS/daily-$(date +%F).json"

mkdir -p "$METRICS"
[[ -f "$BASE" ]] || cat > "$BASE" <<'JSON'
{
  "tasks_completed_per_day": 0,
  "qa_rejection_rate": 0,
  "fallback_activations": 0,
  "avg_turnaround_minutes": 0,
  "user_overrides_per_day": 0
}
JSON

# Lightweight computed metrics from current workspace artifacts
count_tasks=$(find "$ROOT/state/tasks" -type f -name "*.md" | wc -l | tr -d ' ')

cat > "$LOG" <<JSON
{
  "date": "$(date +%F)",
  "generated_at": "$(date -u +%FT%TZ)",
  "tasks_artifacts_count": $count_tasks,
  "notes": "Auto-generated local metrics snapshot"
}
JSON

echo "wrote $LOG"
