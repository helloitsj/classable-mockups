Push all changes to GitHub and update the live mockup site.

Project structure:
- Mockup HTML files live in: docs/
- Deploy tooling (.ps1, .bat, .claude/) lives in repo root — never published
- GitHub Pages serves from: docs/ branch main → https://helloitsj.github.io/classable-mockups/

Run the following steps:
1. Check git status to see what changed
2. If there are changes, run: git add -A
3. Commit with message: "Update mockups [today's date]"
4. Push to origin main: git push origin main
5. Report which files in docs/ changed and confirm the push succeeded
6. Remind me the live site updates at https://helloitsj.github.io/classable-mockups/ within ~60 seconds

If there's nothing to commit, say "Nothing to push — all mockups are already up to date."
If the push fails, remind me to check git remote -v and gh auth status.
