TEXFILE=resume.tex
PDFFILE=resume.pdf
JSONFILE=resume.json
DOCFILE=resume.docx

PDFCMD=/usr/bin/pdflatex
PANDOC=/usr/bin/pandoc

.PHONY: all
all: pdf doc json

pdf: $(TEXFILE)
	$(PDFCMD) $(TEXFILE)

doc: $(TEXFILE)
	$(PANDOC) -o $(DOCFILE) $(TEXFILE)

json: $(TEXFILE)
	$(PANDOC) -o $(JSONFILE) $(TEXFILE)

