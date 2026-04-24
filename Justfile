# Build resume with xelatex
build:
    @xelatex -interaction=batchmode resume.tex > /dev/null 2>&1 \
        && grep -E "^Output written|^Transcript written" resume.log \
        && cp resume.pdf ~/Downloads/resume.pdf \
        || (grep "^!" resume.log | sort -u; exit 1)

# Merge main into all other local branches
sync:
    @for branch in $(git branch | grep -v '^\*' | tr -d ' '); do \
        echo "Merging main -> $branch"; \
        git checkout $branch && git merge main || exit 1; \
    done
    @git checkout main

# Remove all build artifacts
clean:
    rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz *.pdf
