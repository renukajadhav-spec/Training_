# Training Progress & Proof – Renuka Jadhav

Every finished task gets a proof: a commit, a link, or a screenshot saved in `proof/`.
Plan: [training-plan.md](training-plan.md)

## Summary

| Day | Status | Main proof |
|---|---|---|
| 1 | Done (1 item to confirm) | [notes.md on GitHub](https://github.com/renukajadhav-spec/training/blob/main/Day%2001/notes.md) |
| 2 | Done (send notes to the manager; Intro-to-GitHub screenshot missing) | [commit history](https://github.com/renukajadhav-spec/training/commits/main) |
| 3 | Not started | |

## Day 1 – Set up laptop, meet VS Code (12 Oct 2026)

| # | Task | Status | Proof |
|---|---|---|---|
| 1 | Install VS Code and Git | Done | `git version 2.56.0.windows.2` shown in VS Code's Git Bash terminal |
| 2 | Claude Code extension + company login | Extension done; **signed in with personal account** (checked 14 Oct) | Get company login from the manager → `/logout` → `/login` → screenshot `/status` → `proof/day1-claude-login.png` |
| 3 | Folder `training`, opened in VS Code | Done | `Desktop\Training` open as the VS Code workspace |
| 4 | `notes.md` with heading, list, bold | Done | [notes.md](https://github.com/renukajadhav-spec/training/blob/main/Day%2001/notes.md), commits `534780a`, `aa2414e` |
| 5 | `git --version` in the VS Code terminal | Done | Version shown after fixing `git--version` → `git --version` |
| 6 | Ask Claude "Explain what this folder contains" | Done | Claude listed and read `.vscode`, `Day 01`, `Day 02` and the PDF (14 Oct) |

## Day 2 – Git and GitHub (13–14 Oct 2026)

| # | Task | Status | Proof |
|---|---|---|---|
| 1 | GitHub account (work email) | Done | Account [renukajadhav-spec](https://github.com/renukajadhav-spec) |
| 2 | "Introduction to GitHub" exercise | Done (per notes) | **Missing:** no public exercise repo found. Screenshot the finished exercise → `proof/day2-intro-github.png` |
| 3 | Repo `training`, connected to Day 1 folder | Done | [training](https://github.com/renukajadhav-spec/training), first commit `5fb1348` |
| 4 | Change `notes.md`, commit + push ×3 | Done | `aa2414e` Format notes · `dbe0ac1` Git commands section · `7800e3b` Day 2 template – [history](https://github.com/renukajadhav-spec/training/commits/main) |
| 5 | Branch `practice`, change, merge back | Done | Commit `57cd23a` on [practice](https://github.com/renukajadhav-spec/training/tree/practice), fast-forward merged into `main` |

**Extra work:** 5-page PDF presentation `Training Day 1 Presentation.pdf`; INDEX/MATCH practice file checked (2/20 correct, Task 3 fix explained).

**Open fixes for Day 2:**
- [x] Repo name: renamed `Training_` → `training` on 14 Oct; local folder re-pointed with `git remote set-url`.
- [x] Delete the accidental duplicate repo `Training.` (deleted 14 Oct; confirmed via GitHub API, now returns 404).
- [x] Commit email: switched to `renuka.jadhav@verveadvisory.com` on 14 Oct. Earlier commits keep the Gmail; add it on GitHub → Settings → Emails so they link to the profile too.
- [x] Commit "Added Day 2 notes" with the content of `Day 2.docx` (14 Oct).
- [ ] Send Day 1 and Day 2 daily notes to the manager.
