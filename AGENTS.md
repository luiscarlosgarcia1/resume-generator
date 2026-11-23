# Resume Template Agent Guide

## Goal

Maintain a clear, truthful, recruiter-readable XeLaTeX resume. Preserve the established visual system unless the task explicitly calls for a design change.

## Repository map

- `resume.tex` defines contact information, page-level options, and section order.
- `master/*.tex` holds section content only.
- `cvstyle.cls` owns fonts, commands, spacing, and layout.
- `Justfile` provides `just build` and `just clean`.

## Content boundary

Keep `master/` files limited to section titles, existing environments, entries, and text. Put presentation changes in `cvstyle.cls`, not in content files. Use the existing commands: `\cventry` for timeline entries, `\cvcertificate` inside `cvcertificates` for credentials, and `\cvskill` inside `cvskills` for skills.

## Editing rules

- Preserve the user's verified claims. Never invent results, metrics, awards, users, deployment, or completion.
- Write concrete bullets: action, technical or domain detail, then evidence or outcome when available.
- Keep entries scannable: normally two to four bullets per experience or project; use fewer for activities and volunteer work.
- Prefer three strong, distinct projects. A fourth belongs only when it adds a different signal. For in-progress work, state completed work and current validation rather than promised outcomes.
- Keep summaries to two or three focused lines and skills short, role-relevant, and supportable by the resume.

## Style changes

Treat `cvstyle.cls` as curated infrastructure. Before changing it, inspect the relevant definition and make the smallest viable edit. The **Global scale variables** section near the top controls universal font and spacing scale; prefer those controls for whole-resume sizing. After any layout change, inspect the rendered PDF.

## Validation

After edits, run `git diff --check` and `just build`. When content or layout changes can affect appearance, render or inspect `resume.pdf` and verify the page count, wrapping, and section flow. Report both what changed and what you verified.
