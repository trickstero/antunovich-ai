# Prompt Version Registry

Track prompt versions for critical deliverable types. When a prompt produces better results, record the version here. When it regresses, roll back by referencing the last known-good version.

## How to Use

1. When you refine a skill prompt (e.g., `skills/shpo-narrative/SKILL.md`), bump the version below
2. Note what changed and why
3. If output quality drops, revert the skill file and pin to the previous version
4. Test against the sample inputs listed for each prompt type

---

## SHPO Narrative Prompt

| Version | Date | Status | Change Summary |
|---------|------|--------|----------------|
| v1.0 | 2025-03-XX | current | Initial prompt — 9 Standards, 5-section narrative structure |

**Test inputs:**
- "Uline Arena — replace deteriorated brick at north facade"
- "Hotel Burnham — add rooftop mechanical screen"
- "The Robey — convert ground-floor retail to restaurant"

**Quality criteria:**
- [ ] Cites specific Standards by number (#1–#10)
- [ ] Describes existing condition before proposed work
- [ ] Includes reversibility statement
- [ ] Uses formal regulatory language
- [ ] Material specifications reference match-existing profiles

---

## Spec Writer Prompt

| Version | Date | Status | Change Summary |
|---------|------|--------|----------------|
| v1.0 | 2025-03-XX | current | Initial prompt — MasterFormat 3-part, luxury retail protocol |

**Test inputs:**
- "Section 09 30 00 — Tiling — bookmatched marble for Armani"
- "Section 08 44 13 — Curtain Walls — student housing facade"
- "Section 06 41 16 — Custom Millwork — retail casework"

**Quality criteria:**
- [ ] Correct 3-part MasterFormat structure (GENERAL / PRODUCTS / EXECUTION)
- [ ] ASTM test methods cited with performance values
- [ ] Submittal requirements complete (shop drawings, product data, samples)
- [ ] Luxury retail: brand-approved materials list referenced
- [ ] "Or approved equal" included unless sole-source justified

---

## RFI Drafter Prompt

| Version | Date | Status | Change Summary |
|---------|------|--------|----------------|
| v1.0 | 2025-03-XX | current | Initial prompt — single-question format, auto-increment, log tracking |

**Test inputs:**
- "Dimension conflict between A-201 and S-301 at grid line 4"
- "Substitution request: Lutron Palladiom vs. specified Ketra"
- "Field condition: existing CMU wall not plumb per survey"

**Quality criteria:**
- [ ] Single specific question (not compound)
- [ ] Drawing and spec references included
- [ ] Proposed solution offered when architect has preference
- [ ] Response deadline stated
- [ ] Historic projects flagged for preservation review

---

## Todd Formula (Visualization) Prompt

| Version | Date | Status | Change Summary |
|---------|------|--------|----------------|
| v1.0 | 2025-XX-XX | current | Base formula — Canon EOS R5, material zones, negative prompts |

**Test inputs:**
- "Mixed-use retail street elevation — golden hour — brick + storefront"
- "Student housing courtyard — overcast — landscaping + amenity terrace"
- "Luxury retail interior — Prada storefront — evening"

**Quality criteria:**
- [ ] Opens with "Real photograph NOT a render NOT CGI"
- [ ] Camera body + lens + settings specified
- [ ] Material zones described in photographer language
- [ ] Negative prompts present and under 2,000 chars total
- [ ] Interior requests redirect to tood-interior skill

---

## Version Control Rules

- **Never edit a prompt without bumping the version number here**
- **Keep at least one previous version description** so rollback is informed
- **Test against all sample inputs** before marking a new version as `current`
- **Mark regressed versions as `rolled-back`** with a note on what failed
