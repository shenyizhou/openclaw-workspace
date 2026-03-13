# Learnings

Corrections, insights, and knowledge gaps captured during development.

**Categories**: correction | insight | knowledge_gap | best_practice
**Areas**: frontend | backend | infra | tests | docs | config
**Statuses**: pending | in_progress | resolved | wont_fix | promoted | promoted_to_skill

## Status Definitions

| Status | Meaning |
|--------|---------|
| `pending` | Not yet addressed |
| `in_progress` | Actively being worked on |
| `resolved` | Issue fixed or knowledge integrated |
| `wont_fix` | Decided not to address (reason in Resolution) |
| `promoted` | Elevated to CLAUDE.md, AGENTS.md, or copilot-instructions.md |
| `promoted_to_skill` | Extracted as a reusable skill |

## Skill Extraction Fields

When a learning is promoted to a skill, add these fields:

```markdown
**Status**: promoted_to_skill
**Skill-Path**: skills/skill-name
```

Example:
```markdown
## [LRN-20250115-001] best_practice

**Logged**: 2025-01-15T10:00:00Z
**Priority**: high
**Status**: promoted_to_skill
**Skill-Path**: skills/docker-m1-fixes
**Area**: infra

### Summary
Docker build fails on Apple Silicon due to platform mismatch
...
```

---

## [LRN-20260313-001] 任务执行规则

**Logged**: 2026-03-13T20:35:00+08:00
**Priority**: high
**Status**: pending
**Area**: workflow

### Summary
用户要求在执行多个任务时，必须遵守以下规则：
1. 必须完整执行完上一个任务，确认成功后，再自动开始下一个。
2. 不要问我确认，不要等我回复。
3. 每个任务开始前告诉我：开始执行某个任务啦
4. 每个任务完成后告诉我：任务执行完成啦
5. 如果有多个任务的话，在全部做完后告诉我：全部任务都执行完毕啦

### Details
用户要求我在未来的任务中能够自动执行多个任务，并遵守上述规则。

### Suggested Action
在未来的任务中，我需要：
1. 确保每个任务都完整执行完，并确认成功。
2. 不要问用户确认，不要等用户回复。
3. 每个任务开始前告诉用户：开始执行某个任务啦
4. 每个任务完成后告诉用户：任务执行完成啦
5. 如果有多个任务的话，在全部做完后告诉用户：全部任务都执行完毕啦

### Metadata
- Source: user_feedback
- Tags: workflow, task_management
- See Also: 
- Pattern-Key: workflow.task_execution_rules
- Recurrence-Count: 1
- First-Seen: 2026-03-13
- Last-Seen: 2026-03-13

---
