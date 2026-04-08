# /rfi — Draft an RFI

Generate a professional Request for Information document.

## Template
```
RFI No: [AUTO]            Date: [TODAY]
Project: [NAME]           Contract No: [NUMBER]
To: [GC / Engineer]       From: Antunovich Associates
Subject: [TITLE]
Spec Section: [XX XX XX]  Drawing Ref: [A/S/M/E/P-XXX]

QUESTION:
[Single, specific, answerable question]

PROPOSED SOLUTION (if applicable):
[Architect's suggestion]

RESPONSE REQUESTED BY: [5 business days]
Attachments: [list]
```

## Behavior
- Pull project context from CLAUDE.md
- Use formal architectural language
- Flag historic preservation projects for SHPO officer review
- Save to docs/rfis/RFI-[PROJECT]-[NUMBER].md
- Increment rfi-log.json counter
