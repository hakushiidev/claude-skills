# claude-skills

Design-Skills für Claude Code, gesammelt an einer Stelle. Die Ordner unter `skills/` sind unverändert
aus den Original-Repos übernommen; die Lizenz liegt jeweils im Skill-Ordner.

## Installation in der Cloud-Umgebung

In den Einstellungen der Cloud-Umgebung (Umgebungsmenü in der Titelleiste → Edit → **Setup script**) eintragen:

```sh
curl -fsSL https://raw.githubusercontent.com/hakushiidev/claude-skills/main/install.sh | sh
```

Das Script kopiert alle Skills nach `~/.claude/skills/` – damit gelten sie in jedem Repo, das mit dieser Umgebung läuft.
Lokal funktioniert derselbe Befehl im Terminal.

## Enthaltene Skills

| Skill(s) | Quelle | Stand |
|---|---|---|
| `impeccable` – Designkritik, Audit, gezielte Verbesserungen (`/impeccable critique`, `audit`, `polish` …) | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) | `919dbeb` |
| `design-flow`, `grill-me`, `design-brief`, `information-architecture`, `design-tokens`, `brief-to-tasks`, `designer-frontend-design`, `design-review` | [julianoczkowski/designer-skills](https://github.com/julianoczkowski/designer-skills) | `c259656` |
| `web-design-guidelines` – Review nach Vercels Web Interface Guidelines | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) | `063bee9` |
| `frontend-design` – Anthropics Frontend-Design-Skill | [anthropics/skills](https://github.com/anthropics/skills) | `dbd4588` |

Hinweise:

- `designer-frontend-design` heißt im Original `frontend-design`. Umbenannt, damit es nicht mit Anthropics
  `frontend-design` kollidiert; die Verweise in `design-flow`, `design-brief` und `design-tokens` sind angepasst.
- `impeccable` lädt beim ersten Aufruf sein Hilfsprogramm von den GitHub-Releases von pbakaus/impeccable.
- `web-design-guidelines` holt die Regeln bei jedem Review frisch von github.com/vercel-labs/web-interface-guidelines.
- Regeln aus der `CLAUDE.md` eines Projekts haben Vorrang vor den Skills.
