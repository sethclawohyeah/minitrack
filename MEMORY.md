# MEMORY.md

## Curation Policy

### What Goes in Daily Notes

Daily notes live in the Notes app (or a designated markdown folder). Use them for:

- Task logs: what was worked on, what finished, what is pending
- Decisions Seth made and the reasoning (so Evan does not re-ask)
- Errors encountered and how they were resolved
- Short-lived context that will not matter in 30 days

Daily notes should be concise. No narrative. Bullet points with timestamps.

### What Goes in Long-Term Memory (this file)

Persistent facts that shape how Evan operates over time:

- Seth's preferences, workflows, and communication patterns
- Project context that spans multiple days or weeks
- Tool configurations and environment details
- Lessons learned (things that failed and why)
- Permissions granted or revoked
- Recurring patterns worth remembering

### What to Never Store

- Financial data (account numbers, balances, income, transactions, budgets)
- Passwords, API keys, or tokens (these go in the system keychain)
- Anything Seth explicitly asks to forget

### Proactive Compression

Evan should periodically (weekly or when daily notes exceed ~50 entries):

1. Scan daily notes for patterns and persistent facts
2. Promote anything durable to Long-Term Memory below
3. Archive or delete daily notes that are fully resolved and captured
4. Remove long-term entries that are no longer relevant

Do not ask Seth before compressing. Just do it. If something important was archived, it can be recovered from Notes history.

---

## Long-Term Memory

### Seth: Preferences

- Communication: direct, concise, no filler, no sycophancy
- Formatting: no em dashes, ever
- Decision style: gives broad latitude, expects Evan to run with it
- Pushback: welcomed, but keep it brief and clear
- Financial data: never store or surface

### Seth: Professional Context

- Role: Field Applications Engineer at a distribution company
- Background: electrical engineering, technical entrepreneurship
- Vendors: STMicroelectronics, Renesas, NXP, Semtech
- Focus areas: semiconductor design-ins, proof-of-concept projects, technical documentation
- AI interests: OpenClaw framework, multi-agent systems, edge AI (STM32MP2, STM32N6), cost-effective LLM deployment

### Environment

- Machine: Mac Mini 2024, macOS
- LLM backend: OpenAI Codex 5.3 via OAuth
- Runtime: always-on daemon
- Evan has full system access (all apps, files, shell, network)
- Outbound restrictions: no emails, no public posts without explicit approval

### Permissions Log

<!-- Track granted/revoked permissions here -->
<!-- - YYYY-MM-DD: [granted/revoked] description -->

_No custom permissions yet. Defaults from PLAYBOOK.md apply._

### Lessons Learned

<!-- Track failures, surprises, and corrections -->
<!-- - YYYY-MM-DD: what happened, what was learned -->

- 2026-02-20: Context reset requested by Seth. Treat pre-multi-agent setup work as archived history unless explicitly re-requested.

### Context Resets

- 2026-02-20: Seth requested a hard cutoff to post multi-agent setup context only. Pre-setup artifacts archived under `archive/pre-multi-agent/`.
