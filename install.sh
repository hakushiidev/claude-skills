#!/bin/sh
# Kopiert alle Skills nach ~/.claude/skills (gilt dann für jedes Repo in dieser Umgebung).
# Aufruf im Setup-Script der Cloud-Umgebung:
#   curl -fsSL https://raw.githubusercontent.com/hakushiidev/claude-skills/main/install.sh | sh
set -eu
tmp=$(mktemp -d)
git clone --depth 1 -q https://github.com/hakushiidev/claude-skills "$tmp"
mkdir -p "$HOME/.claude/skills"
cp -r "$tmp"/skills/* "$HOME/.claude/skills/"
rm -rf "$tmp"
# Für webapp-testing: Python-Playwright passend zum vorinstallierten Chromium der Cloud (nur wenn pip da ist)
if command -v pip >/dev/null 2>&1 && ! python3 -c "import playwright" 2>/dev/null; then
  pip install -q playwright==1.56.0 >/dev/null 2>&1 || echo "claude-skills: playwright (Python) konnte nicht installiert werden"
fi
echo "claude-skills: $(ls "$HOME/.claude/skills" | wc -l) Skills installiert"
