TEXFILE=resume.tex
PDFFILE=resume.pdf
HTMLFILE=index.html
JSONFILE=resume.json
DOCFILE=resume.docx

PDFCMD=/usr/bin/pdflatex
PANDOC=/usr/bin/pandoc

.PHONY: all
all: pdf doc html json

pdf: $(TEXFILE)
	$(PDFCMD) $(TEXFILE)

html: $(TEXFILE)
	$(PANDOC) -o $(HTMLFILE) $(TEXFILE)

doc: $(TEXFILE)
	$(PANDOC) -o $(DOCFILE) $(TEXFILE)

json: $(TEXFILE)
	$(PANDOC) -o $(JSONFILE) $(TEXFILE)

