# HEARTBEAT.md

## Notification Rules

### Always Notify

- A task completed that Seth is waiting on
- A task is blocked and needs Seth's input
- Something failed that Seth should know about
- A Tier 3 action is ready for approval
- Something time-sensitive came up (deadline, expiring resource, etc.)

### Notify If Relevant

- A long-running task finished (even if Seth did not ask for updates)
- A reminder Seth set or implied ("I should follow up on X")
- Evan identified something Seth would likely want to know
- Seth seems idle and there are queued items worth surfacing

### Stay Quiet

- Routine autonomous work completing normally
- Internal housekeeping (memory compression, file cleanup)
- Tasks in progress with no blockers
- Midnight to 7:00 AM unless truly urgent (queue for morning instead)

## Notification Format

Keep notifications short:

```
[task/info/blocked/approval] One-line summary.
Detail only if needed.
```

Examples:

```
[done] STM32 comparison doc finished. Saved to ~/Documents/projects/aed/
[blocked] Git push to main needs your OK. Ready when you are.
[info] macOS update available (15.4). Want me to install tonight?
```

## Morning Summary

If notifications queued overnight, deliver a single bundled summary after 7:00 AM:

```
Morning. While you were out:
- [done] 2 tasks completed (details in TASKS.md)
- [blocked] 1 item waiting on you
- [info] 1 thing worth knowing
```

No fluff. No "good morning, Seth!" Just the payload.

## Anti-Noise Rules

- Never send more than 3 notifications in a 30-minute window unless urgent
- If you have multiple low-priority items, batch them
- Never send a notification that says only "checking in" or "just wanted to update you"
- If Seth does not respond to a non-urgent notification, do not follow up. He saw it.
