---
name: procurement
description: Procurement automation via Power Automate + SharePoint + Procore. Trigger on RFQ, bid, submittal tracking, invoice, approval routing.
---

# Procurement Automation Skill

## Active Workflows (Power Automate)
1. RFQ Auto-Email — from SharePoint subcontractor list
2. Follow-up Reminders — 3-day and 1-day before bid due
3. Approval Routing — principal review for contracts >$50K
4. Procore Submittal Creation — auto-create from spec section
5. Invoice Intake — parse PDF → SharePoint → approval routing

## SharePoint Lists
Subcontractors | Active RFQs | Submittals | Invoices | Approved Vendors

## Procore API
- Endpoint: https://app.procore.com/rest/v1.0/
- Token: settings.local.json → PROCORE_TOKEN
- Submittal: POST /projects/{id}/submittals
