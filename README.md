# claude-skills

Skills für Claude Code (Design, Entwicklungsablauf, Planung, Browser-Tests), gesammelt an einer Stelle. Die Ordner unter `skills/` sind unverändert
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
| Superpowers – strukturierter Ablauf: `using-superpowers`, `brainstorming`, `writing-plans`, `executing-plans`, `subagent-driven-development`, `test-driven-development`, `systematic-debugging`, `verification-before-completion`, `requesting-code-review`, `receiving-code-review`, `dispatching-parallel-agents`, `using-git-worktrees`, `finishing-a-development-branch`, `writing-skills`, `diagnosing-superpowers` | [obra/superpowers](https://github.com/obra/superpowers) | `bb92a77` |
| `webapp-testing` – Browserabläufe mit Playwright testen | [anthropics/skills](https://github.com/anthropics/skills) | `dbd4588` |
| `planning-with-files` – Plan, Fortschritt und Erkenntnisse in Dateien (`task_plan.md`, `findings.md`, `progress.md`) | [OthmanAdi/planning-with-files](https://github.com/OthmanAdi/planning-with-files) | `ff349eb` |

Hinweise:

- `designer-frontend-design` heißt im Original `frontend-design`. Umbenannt, damit es nicht mit Anthropics
  `frontend-design` kollidiert; die Verweise in `design-flow`, `design-brief` und `design-tokens` sind angepasst.
- `impeccable` lädt beim ersten Aufruf sein Hilfsprogramm von den GitHub-Releases von pbakaus/impeccable.
- `web-design-guidelines` holt die Regeln bei jedem Review frisch von github.com/vercel-labs/web-interface-guidelines.
- Superpowers ist hier als reine Skill-Sammlung installiert, ohne den SessionStart-Hook des Plugins.
  Den Ablauf startet man daher mit `/using-superpowers` oder indem man um Brainstorming/Planung bittet.
- `diagnosing-superpowers` liest auf Wunsch Sitzungsprotokolle und kann einen Fehlerbericht für obra/superpowers vorbereiten.
- `planning-with-files` bringt eigene Hooks mit, die nur laufen, solange der Skill aktiv ist; sie lesen und schreiben nur die Plandateien im Projekt.
- `webapp-testing` braucht Python mit Playwright. `install.sh` installiert `playwright==1.56.0` (passt zum vorinstallierten Chromium der Cloud), falls es fehlt.
- Regeln aus der `CLAUDE.md` eines Projekts haben Vorrang vor den Skills.
