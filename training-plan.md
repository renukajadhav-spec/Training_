# Training Plan – Days 1 to 10

**Trainee:** Renuka Jadhav · **Mentor:** Palash · **Source:** Training_Plan_Days_1-10.pdf

Every day ends with: work committed and pushed (proof), `progress.md` updated, daily note sent to Palash.

## Suggested schedule

| Day | Topic | Suggested date | Status |
|---|---|---|---|
| 1 | Set up laptop, meet VS Code | Mon 12 Oct | Done |
| 2 | Git and GitHub | Tue 13 – Wed 14 Oct | Done (2 small fixes open) |
| 3 | Profile page with Claude Code | Thu 15 Oct | Next |
| 4 | First database (Supabase) | Fri 16 Oct | |
| 5 | Connect a page to the database | Mon 19 Oct | |
| 6 | Write a clear brief (PRD) | Tue 20 Oct | |
| 7 | Mini app, part 1 | Wed 21 Oct | |
| 8 | Mini app, part 2 | Thu 22 Oct | |
| 9 | Finding and fixing problems (FRs) | Fri 23 Oct | |
| 10 | Finish, write up and demo | Mon 26 Oct | |

Dates assume Monday–Friday, one plan day per working day. Move them if Palash sets a different pace.

---

## Week 1

### Day 1: Set up your laptop and meet VS Code
1. Install VS Code and Git on your laptop.
2. In VS Code, install the Claude Code extension and sign in with the company Claude login Palash gives you.
3. Make a folder called `training`. Open it in VS Code.
4. Create a file `notes.md`. Write what you learned today using a heading, a list and bold text.
5. Open the terminal inside VS Code and type `git --version`. If you see a version number, Git is ready.

### Day 2: Git and GitHub – saving versions of your work
1. Create a free GitHub account (use your work email).
2. Finish the "Introduction to GitHub" exercise.
3. Create a new repository called `training` and connect your Day 1 folder to it. Ask Claude Code to help with each step and to explain each command before running it.
4. Change `notes.md`, then commit and push. Do this at least 3 times with clear messages, like "Added Day 2 notes".
5. Make a branch called `practice`, change something there, then merge it back.

### Day 3: Build your own profile page with Claude Code
1. Before asking Claude to build, write in `notes.md` what you want on the page: sections, colours, what it should say about you.
2. Switch Claude Code to Plan mode. Paste your notes and ask for a plan first. Read the plan. Change anything you don't like.
3. Let Claude build the page. Open it in your browser and check it.
4. Ask for at least 2 changes in plain words (for example "make the headings bigger", "add my skills as small tags").
5. Commit and push. Then follow the GitHub Pages guide to put it live.
6. Do not put your phone number or personal email on the public page.

**Easiest way:** write the page wishes in `notes.md` first (10 min). Plan mode: press Shift+Tab in Claude Code until it shows "plan mode". Build it as a single `index.html` file. GitHub Pages: repo **Settings → Pages → Deploy from branch → main**.
**Learn more:** ask Claude to explain what HTML and CSS each do, and open the browser's DevTools (F12) to see the page structure.
**Proof:** live GitHub Pages link + commits for the 2 changes + screenshot.

### Day 4: How apps work, and your first database
1. Create a free Supabase account and a new project called `training`.
2. In Excel, make a vendor list of 15 fake vendors: name, city, GSTIN, credit limit, balance, due date. Save it as CSV.
3. Create a `vendors` table in Supabase and import the CSV.
4. In the SQL editor, ask Claude to help you write queries such as "vendors with balance above credit limit" and "total balance by city". Run them.
5. Write in your notes: how is a Supabase table like an Excel sheet, and how is it different?

**Easiest way:** Claude can generate the 15 fake vendors as a CSV for you. Use dates in `YYYY-MM-DD` format so Supabase reads them correctly. Use Supabase's "Import data from CSV" button when creating the table.
**Learn more:** compare each SQL query with how you would do it in Excel (filter = `WHERE`, pivot = `GROUP BY`).
**Proof:** screenshots of the table and the query results + the SQL saved in a `.sql` file in the repo.

### Day 5: Connect a page to your database
1. Create a new folder and repo called `vendor-page`.
2. Ask Claude Code (Plan mode first) to build a page that shows your vendors from Supabase in a table, with overdue vendors in red.
3. Add a small form to add a new vendor. Check that the new vendor appears in Supabase.
4. Ask Claude: "Which key did you use? Is it safe to push this?" Make sure the secret key is not in any file you push.
5. Commit and push.

**Easiest way:** use only the **anon / publishable** key in the page, never the `service_role` (secret) key. Turn on Row Level Security with a policy, so the public key can only do what you allow.
**Learn more:** ask Claude to explain the difference between the two keys and what Row Level Security does.
**Proof:** `vendor-page` repo link + screenshot of the red overdue rows + screenshot of the new vendor in Supabase.

## Week 2 – Work the way our team works

### Day 6: Write a clear brief before building
By evening: a written brief for the mini app, and you know how to use branches and pull requests.

**Watch and read:** AI Fluency: Framework & Foundations (Anthropic Academy, free) · Claude Code 101 (finish the rest).

**Do:** The mini app for Days 7–8 is an **Expense Claim app**: an employee submits a claim, a manager approves or rejects it. Create a repo `expense-claims` and write these files yourself, in simple words (Claude can help tidy them up):
- `prd.md`: what the app does, who uses it, each screen, and the "Must have" list below.
- `rules.md`: rules Claude must follow. For example: plan first, ask before adding tables, never push secret keys, explain changes in simple words.
- `handoff.md`: where the work stands at the end of each day, so a new Claude session can pick up from there.

From today, every piece of work goes on its own branch. When done, open a **pull request** and merge it yourself.

| Must have | Nice to have (only if time) |
|---|---|
| Login for 2 types of users: employee and manager | Upload a bill photo |
| Employee submits a claim: date, category, amount, description | Total claimed this month, by category |
| Employee sees own claims and their status | Download claims as Excel |
| Manager sees pending claims and approves or rejects with a remark | Manager cannot approve own claim |
| Amount checks: no blank, no zero, no negative | |

**Show at review:** `prd.md` and `rules.md`. Palash may ask you to change them before you start building.

**Checklist:**
- [ ] Watch AI Fluency: Framework & Foundations
- [ ] Finish Claude Code 101
- [ ] Create the `expense-claims` repo
- [ ] Write `prd.md`
- [ ] Write `rules.md`
- [ ] Write `handoff.md`
- [ ] Do the work on a branch, open a pull request, and merge it
- [ ] Show `prd.md` and `rules.md` to Palash

**Easiest way:** write rough points yourself first, then ask Claude to tidy them, not to write them. Watch the videos in the morning, write in the afternoon.
**Proof:** course completion screenshots + merged PR link + the three files on GitHub.

### Day 7: Build the mini app, part 1
By evening: login works and an employee can submit and see claims.
1. Start Claude Code in Plan mode. Ask it to read `prd.md` and `rules.md` and make a build plan.
2. Check the plan: which tables will it create? Does it match your PRD? Approve only when it matches.
3. Build login and the employee screens on a branch. Test each one yourself with fake users.
4. Keep a list of anything that looks wrong. Ask Claude to fix it.
5. Update `handoff.md` before you stop. Open a PR and merge.

**Show at review:** log in as an employee and submit a claim, live. Show the claims table in Supabase.
**Proof:** merged PR link + screenshot of a submitted claim in Supabase.

### Day 8: Build the mini app, part 2
By evening: the whole "Must have" list works from start to end.
1. Start a **new** Claude session. Ask it to read `handoff.md` first. See how the handoff saves time.
2. Build the manager screen: pending claims, approve or reject with a remark.
3. Test the full flow: employee submits, then manager approves, then employee sees "Approved".
4. Try to break your own app: blank amount, negative amount, very long description. Note what happens.
5. If all "Must have" items work, pick one "Nice to have".
6. Update `handoff.md`, open a PR and merge.

**Show at review:** the full flow, live: submit, approve, see the status change.
**Proof:** merged PR link + a short "what I tried to break" list in `handoff.md`.

### Day 9: Finding and fixing problems
By evening: at least 2 practice FRs fixed, with the root cause of each found.

Palash gives 2–3 practice FRs (Feature Requests) on your own app. For each one:
1. Repeat the problem yourself first, so you see it with your own eyes.
2. Ask Claude to find the **root cause**: why it happens, not only how to hide it. Ask it to explain in simple words.
3. Fix it on its own branch, named after the FR (for example `fr-1-negative-amount`).
4. Test again: is the problem gone? Did anything else break?
5. Write a short comment for the user:

```
Problem:     what the user saw
Root cause:  why it happened, in one or two lines
Fix:         what was changed
Tested:      how you checked it works now
Status:      Fixed / Need more info
```

**Show at review:** one FR: show the problem, explain the root cause in your words, then show it fixed.
**Words to know:** Bug = something that does not work as it should. Root cause = the real reason behind it. Error message = the red text that tells you what went wrong; always copy it fully when asking Claude.
**Proof:** one PR per FR + the FR comments.

### Day 10: Finish, write up and demo
By evening: a full demo of the 10 days given to Palash.
1. Finish any open FRs and write their comments.
2. Ask Claude to help you write a `README.md` for the expense app: what it does, how to run it.
3. Prepare a 15-minute demo: your profile page, vendor page, expense app, and one FR you fixed.
4. Write in `notes.md`: 3 things you are confident about, and 3 things you still find hard.

**Show at review:** the final demo. Palash goes through a "ready" checklist with you.
**Proof:** `README.md` on GitHub + `progress.md` complete with every link.

---

## Daily note (send to Palash before the evening review, ~5 minutes)

```
Day __ note - Renuka

1. What I did today:
2. What I built (link or screenshot):
3. One thing I learned (in my own words):
4. Where I got stuck, and how I solved it:
5. Question for Palash:
```
