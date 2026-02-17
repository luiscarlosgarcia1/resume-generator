.PHONY: examples clean downloads resume-download cv-download coverletter-download

CC = lualatex
EXAMPLES_DIR = examples
DOWNLOADS_DIR ?= $(HOME)/Downloads
RESUME_DIR = examples/resume
CV_DIR = examples/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

examples: $(foreach x, coverletter cv resume, $x.pdf)

resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

coverletter.pdf: $(EXAMPLES_DIR)/coverletter.tex
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

resume-download: resume.pdf
	cp -f $(EXAMPLES_DIR)/resume.pdf $(DOWNLOADS_DIR)/resume.pdf

cv-download: cv.pdf
	cp -f $(EXAMPLES_DIR)/cv.pdf $(DOWNLOADS_DIR)/cv.pdf

coverletter-download: coverletter.pdf
	cp -f $(EXAMPLES_DIR)/coverletter.pdf $(DOWNLOADS_DIR)/coverletter.pdf

downloads: coverletter-download cv-download resume-download

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
