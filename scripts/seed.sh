#!/bin/bash
echo "🌱 Seeding Antunovich AI workspace..."
mkdir -p docs/{rfis,specs,shpo,submittals,references}
mkdir -p .claude/sessions
echo '{"projects":{}}' > docs/rfis/rfi-log.json
echo '{"projects":[]}' > docs/projects.json
echo "✅ Workspace seeded"
