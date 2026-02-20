# DAY1-7_BOOT_PLAN.md

## Day 1-2: Boss only
- [ ] Start BOSS only
- [ ] Test priority handling on 3 sample tasks
- [ ] Verify QA gate behavior before user output

## Day 3-4: Add Builder
- [ ] Route one build task through BOSS -> BUILDER -> BOSS
- [ ] Verify deliverable format and QA rejection path
- [ ] Capture one prompt tweak if needed

## Day 5-6: Add Scout
- [ ] Route one research task through BOSS -> SCOUT -> BOSS
- [ ] Run one multi-agent handoff (SCOUT -> BUILDER)
- [ ] Confirm source quality + confidence tags

## Day 7: Add Operator
- [ ] Run daily briefing draft
- [ ] Test classification: URGENT-RESPOND / RESPOND / INFORM / HANDLE / DISCARD
- [ ] Verify BOSS approval gate for outbound messages

## Validation checkpoints
- [ ] state/ namespaces present and writable
- [ ] Agent prompts exist in agents/
- [ ] Master config copied into workspace root
- [ ] Baseline metrics file initialized

## Baseline metrics file
Create: `state/metrics/baseline.json`

```json
{
  "tasks_completed_per_day": 0,
  "qa_rejection_rate": 0,
  "fallback_activations": 0,
  "avg_turnaround_minutes": 0,
  "user_overrides_per_day": 0
}
```
