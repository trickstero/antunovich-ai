#!/bin/bash
echo "🔍 Scanning for exposed credentials..."
PATTERNS=("ghp_" "sk-ant-" "AIza" "AKIA" "api_key" "secret")
FOUND=0
for p in "${PATTERNS[@]}"; do
  if git diff --cached | grep -qi "$p"; then
    echo "❌ Possible secret: $p — aborting"; FOUND=1
  fi
done
[ $FOUND -eq 0 ] && echo "✅ No secrets detected"
exit $FOUND
