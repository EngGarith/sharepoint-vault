#!/bin/bash
# sync-vault.sh — copies SharePoint Vault content into Quartz content/ directory.
# Run this whenever vault notes change, then push to trigger a redeploy.
# Usage: ./sync-vault.sh

set -e

VAULT="/Users/garithduncan/Desktop/SharePointVault"
CONTENT="$(cd "$(dirname "$0")" && pwd)/content"

echo "Syncing vault → content/..."

rsync -a --delete \
  --exclude='.obsidian' \
  --exclude='CLAUDE.md' \
  --exclude='Templates' \
  --exclude='*.base' \
  --exclude='.DS_Store' \
  "$VAULT/" "$CONTENT/"

# Restore the handcrafted site homepage (lives outside the vault sync)
HOMEPAGE="$(dirname "$0")/site-homepage.md"
if [ -f "$HOMEPAGE" ]; then
  cp "$HOMEPAGE" "$CONTENT/index.md"
fi

COUNT=$(find "$CONTENT" -name "*.md" | wc -l | tr -d ' ')
echo "✓  $COUNT notes synced to content/"
echo ""
echo "Next: git add -A && git commit -m 'Update vault content' && git push"
