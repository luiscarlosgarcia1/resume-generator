# Build resume with xelatex
build:
    xelatex resume.tex

# Build master resume with all sections/entries
build-master:
    xelatex master-resume.tex

# Show differences between resume/ and master/ sections
diff-master:
    diff --color resume/experience.tex master/experience.tex || true
    diff --color resume/education.tex master/education.tex || true
    diff --color resume/projects.tex master/projects.tex || true
    diff --color resume/skills.tex master/skills.tex || true
    diff --color resume/leadership.tex master/leadership.tex || true

# Remove all build artifacts
clean:
    rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz *.pdf
