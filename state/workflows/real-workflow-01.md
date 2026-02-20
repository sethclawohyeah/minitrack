# Workflow 01 — Boss Routed Build Request

## Trigger
User asks for a market-validated build recommendation.

## Route
1. **BOSS** receives request and defines deliverable + constraints.
2. **SCOUT** returns source-backed market signal summary.
3. **BUILDER** produces implementation outline and execution plan.
4. **BOSS QA** checks accuracy, confidence tags, and user fitness.
5. Final output sent to user.

## Deliverables
- `state/tasks/workflow01-scout-findings.md`
- `state/tasks/workflow01-builder-plan.md`
- `state/tasks/workflow01-boss-final.md`

## QA Gate
- Claims sourced or clearly marked assumptions
- Concrete next steps
- Confidence level shown
- No external send without approval
