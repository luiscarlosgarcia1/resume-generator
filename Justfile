# Build resume with xelatex
build:
    @xelatex -interaction=batchmode resume.tex > /dev/null 2>&1 \
        && grep -E "^Output written|^Transcript written" resume.log \
        || (grep "^!" resume.log | sort -u; exit 1)

# Remove all build artifacts
clean:
    rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz *.pdf
