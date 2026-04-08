---
name: rfi-drafter
description: Draft professional RFI documents. Trigger on RFI, request for information, field question, construction administration.
---

# RFI Drafter Skill

## Format
```
RFI No: [AUTO]            Date: [TODAY]
Project: [NAME]           Contract No: [NUMBER]
To: [GC / Engineer]       From: Antunovich Associates
Subject: [TITLE]
Spec Section: [XX XX XX]  Drawing Ref: [A/S/M/E/P-XXX]

QUESTION: [Single, specific, answerable]

PROPOSED SOLUTION: [Optional]

RESPONSE REQUESTED BY: [5 business days]
Attachments: [list]
```

## RFI Log
- Stored at: docs/rfis/rfi-log.json
- Auto-increment per project
- Historic projects → flag for preservation officer
