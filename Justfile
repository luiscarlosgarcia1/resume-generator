# Build resume with xelatex
build:
    xelatex resume.tex

# Remove all build artifacts
clean:
    rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz *.pdf
