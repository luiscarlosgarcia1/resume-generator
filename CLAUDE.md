# resumeGen — Project Context

## Purpose
LaTeX-based resume generator for Luis Carlos Garcia. Produces a single-page PDF resume (`resume.pdf`) compiled with XeLaTeX.

## Structure

```
resume.tex        — root document: personal info, page config, section order
cvstyle.cls       — ALL styling, layout, fonts, colors, and environment definitions
master/           — content-only section files, one per resume section
  summary.tex
  education.tex
  extracurricular.tex
  projects.tex
  experience.tex
  volunteer.tex
  certificates.tex
  skills.tex
fonts/            — local font files (SourceSans3, Roboto)
```

## How it works
`resume.tex` loads `cvstyle.cls` as its document class, sets page geometry and accent color, defines personal info, then `\input`s each master file in order. Each master file calls the environments and commands defined in `cvstyle.cls` (e.g. `\begin{cventries}`, `\cventry`, `\begin{cvskills}`, `\cvskill`).

## Styling rule — CRITICAL
**All styling lives in `cvstyle.cls`. Period.**

Master files in `master/` are content only — section title + data. They must never contain:
- `\renewenvironment` or `\renewcommand` overrides
- `\makeatletter` / `\makeatother` blocks
- `\setlength`, `\renewcommand{\arraystretch}`, or any spacing/layout commands
- Custom tabular/tabularx definitions

If a new master file is added, follow the same rule: drop in content using the existing `cvstyle.cls` commands and nothing else. If the layout needs to change, make the change in `cvstyle.cls`.

## Compiling
```
xelatex resume.tex
```
Or via the Justfile if one is configured.
