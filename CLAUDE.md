# CLAUDE.md — Antunovich Associates AI Workspace

## Firm Identity
- **Firm:** Antunovich Associates — Chicago (244 W. Huron St.) & Washington DC
- **Size:** ~80 staff | Mixed-use, Multi-family, Student Housing, Luxury Retail, Historic Preservation, Hospitality, Civic/Education, Workplace, Interior Design
- **AI Lead:** Staszek Matuzik (Senior Associate)

## Tech Stack
- **Visualization:** Lumion → 3ds Max → Krea.ai (Nano Banana / NB2) → Magnific → Topaz → Photoshop
- **Project Management:** Procore, Deltek
- **Collaboration:** SharePoint, Power Automate
- **Dev:** Node.js, Python, TypeScript
- **MCP Active:** Filesystem (local), Email
- **MCP Planned:** Revit (blocked by IT — needs npm registry + PyPI access)

## Architecture Conventions
- Always use professional architectural terminology
- Spec sections follow MasterFormat divisions
- RFIs reference drawing numbers and spec sections
- SHPO narratives follow Secretary of the Interior's Standards
- Visualization prompts use Todd Formula (see skills/todd-formula)

## Slash Commands (.claude/commands/)
- `/rfi` — Draft an RFI document
- `/spec` — Write a specification section (MasterFormat)
- `/shpo` — Draft SHPO preservation narrative
- `/render` — Generate Todd Formula visualization prompt
- `/review` — Run code or document review
- `/bootstrap` — Scaffold a new project module
- `/cost-impact` — Analyze cost + schedule impact of a design decision or change order (coordinates spec-writer + procurement)
- `/project-brief` — Generate principal-level strategic brief across all practice areas (coordinates all agents)
- `/sub-scan` — Evaluate subconsultants and recommend team assembly for pursuits

## Output Styles (.claude/output-styles/)
- `executive` — Principal/owner-facing: recommendation first, key metrics, next steps. 60-second read.
- `technical` — CA/engineering: code references, MasterFormat sections, compliance matrices, Procore-ready format.

## Sub-Agents (.claude/agents/)
- `spec-writer` — CSI MasterFormat specification drafting, product evaluation, submittal requirements
- `preservation-officer` — SHPO narratives, Secretary of the Interior's Standards compliance, landmark review
- `rfi-coordinator` — RFI drafting, contractor RFI response analysis, RFI log management

## Practice Areas (for context-aware responses)
1. Mixed-use retail (Crate & Barrel, Arhaus, Butter Milk Ranch)
2. Multi-family residential
3. Student housing (HUB / ŌLIV series)
4. Luxury retail (Armani, Prada, Brunello Cucinelli)
5. Interior design / FF&E
6. Workplace
7. Civic / Education (DePaul)
8. Historic Preservation (Uline Arena, Hotel Burnham, The Robey)
9. Hospitality

## Git & Deployment
- GitHub: trickstero/antunovich-ai
- Pages: https://trickstero.github.io/antunovich-ai
- Branch strategy: main (stable) → feature/* → PR → merge

## Security Rules
- Never store API keys in CLAUDE.md
- Use .env.example for key templates
- settings.local.json is gitignored — put secrets there
- PreCommit hook scans for exposed credentials

## Context Management
- 0–50% context → work freely
- 50–70% → monitor token usage
- 70–80% → run /compact
- 70–90% → run /compact
- 90%+ → /clear is mandatory

## Anti-Patterns (avoid)
- CLAUDE.md over 500 lines → causes context bloat
- Vague instructions → always be specific
- Replicating docs → link, don't copy
- No text guidance → leads to skipped tests
