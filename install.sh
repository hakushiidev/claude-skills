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
echo "claude-skills: $(ls "$HOME/.claude/skills" | wc -l) Skills installiert"
