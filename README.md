# resumeGen

LaTeX-based resume generator using a custom class file and modular section inputs.

## Requirements

- [MacTeX](https://www.tug.org/mactex/) (provides `xelatex`)
- [just](https://github.com/casey/just) — command runner (`brew install just`)

## Commands

| Command | Description |
|---|---|
| `just build` | Compile resume to PDF |
| `just clean` | Remove build artifacts |

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

## Editing

- **Personal info** (name, email, links): `resume.tex`
- **Content**: individual files in `master/`
- **Styling**: `cvstyle.cls`
