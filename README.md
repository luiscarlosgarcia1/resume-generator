# resumeGen

Minimal LaTeX setup for generating a resume, CV, and cover letter.

## Assumption
A TeX distribution is already installed.

## Quick start

```bash
cd /usrs/[usr_name]/Documents/resumeGen
make examples
```

This builds:
- `examples/resume.pdf`
- `examples/cv.pdf`
- `examples/coverletter.pdf`

## Build individual files

```bash
make resume.pdf
make cv.pdf
make coverletter.pdf
```

## Run LaTeX directly (without make)

```bash
lualatex -output-directory=examples examples/resume.tex
lualatex -output-directory=examples examples/cv.tex
lualatex -output-directory=examples examples/coverletter.tex
```

## Edit content
- Resume sections: `examples/resume/*.tex`
- CV sections: `examples/cv/*.tex`
- Main templates: `examples/resume.tex`, `examples/cv.tex`, `examples/coverletter.tex`

## Useful commands

```bash
make clean
make downloads
```

`make downloads` copies generated PDFs to `~/Downloads` by default.
Override with:

```bash
make downloads DOWNLOADS_DIR=/your/path
```
