# resumeGen

A XeLaTeX resume template with content split into small, editable section files. Replace the placeholders and guidance with your own verified experience; the visual system is already curated for you.

## Requirements

- [MacTeX](https://www.tug.org/mactex/) (provides `xelatex`)
- [just](https://github.com/casey/just) — command runner (`brew install just`)

## Commands

| Command | Description |
|---|---|
| `just build` | Compile resume to PDF |
| `just clean` | Remove build artifacts |

`just build` creates `resume.pdf` in the repository and copies it to `~/Downloads/resume.pdf`. To store the copied PDF somewhere else, edit the final `cp resume.pdf ...` path in the `build` recipe in [`Justfile`](Justfile). You can also remove that `cp` portion if you only want the repository copy.

## Structure

```
resume.tex          # entry point — personal info and section order
cvstyle.cls         # custom LaTeX class (styling, layout)
fonts/              # bundled fonts (Roboto, Source Sans 3)
master/             # content sections
  summary.tex
  education.tex
  experience.tex
  projects.tex
  skills.tex
  certificates.tex
  extracurricular.tex
  volunteer.tex
```

## Make it your own

1. Update your name, location, phone number, email, and portfolio links in [`resume.tex`](resume.tex).
2. Replace the placeholder entries in `master/` with your own experience. The visible bullets are concise writing prompts; delete them as you add real accomplishments.
3. Keep the sections that help your application and remove unused sections by commenting out their `\input{...}` line near the bottom of `resume.tex`.
4. Run `just build`, then open `resume.pdf` and check the final page count, wrapping, and links.

### Content guidelines

- **Summary:** optional; keep it to two or three focused lines that say what role you seek and the evidence behind your fit.
- **Education:** include degree, school, graduation date, and only the honors, coursework, or concentrations that strengthen the application.
- **Experience:** two to four bullets per role is usually enough. Start with a specific action, name the relevant method or tool, and include truthful scope or results.
- **Projects:** three strong projects are a good default; use a fourth only when it adds a distinct signal. Keep each project to two to four bullets and describe completed work for in-progress projects.
- **Activities and volunteer work:** use one or two concise entries only when they add leadership, service, or a meaningful contribution not already shown elsewhere.
- **Certificates:** include relevant, recognizable credentials using their official names.
- **Skills:** use a short, role-targeted set of technologies you can discuss comfortably. Do not turn this section into a keyword wall.

### Styling

[`cvstyle.cls`](cvstyle.cls) contains the font, spacing, commands, and layout for the whole resume. It has a **Global scale variables** section near the top where `\fontscale` and `\spacingscale` adjust the universal font and spacing scale together.

The class file is deliberately curated, so prefer editing content in `master/` first. You can customize `cvstyle.cls` when you truly need a design change, but make small changes, rebuild, and visually inspect the PDF after each one.
