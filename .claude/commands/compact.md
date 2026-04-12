---
name: compact
description: Compact the current session into structured memory. Run when context reaches 70-80%. Produces a summary block to paste into Obsidian Memory.md or carry into a new Claude session.
---

Compact this conversation into structured memory. Analyze the full conversation history and produce a memory block in the following format:

## Memory Block — [DATE]

### Decisions Made
[List every decision reached in this session. Include the reasoning and any constraints that informed it. Be specific — "chose terrazzo over polished concrete for lobby" not "made a flooring decision".]

### Open Items
[List every unresolved question, pending task, or deferred decision. Include who owns it and any deadline mentioned.]

### Technical Context Learned
[Capture any project-specific facts, code/material standards, product details, or firm conventions that were established or clarified in this session. These are facts Claude should know in the next session without re-discovering them.]

### Files Modified
[List every file created, edited, or deleted with its path and what changed.]

### Blockers & Dependencies
[Anything that's waiting on someone else — IT tickets, subconsultant responses, owner decisions, permit reviews.]

### Next Session Should Start With
[1–2 sentence instruction for the next Claude session. What's the immediate priority?]

---

**Rules for compaction:**
- Preserve specific names, numbers, dates, drawing references, and spec sections — these are expensive to re-derive
- Drop conversational pleasantries, false starts, and exploratory tangents that didn't lead anywhere
- If a decision was reversed during the session, record only the final decision (note it was reversed if relevant)
- Keep the total block under 500 words — this will be injected into future context windows
- Format as a single markdown block that can be copy-pasted directly into Memory.md
