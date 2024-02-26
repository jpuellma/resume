TEXFILE=resume.tex
PDFFILE=resume.pdf
HTMLFILE=index.html
DOCFILE=resume.docx

PDFCMD=/usr/bin/pdflatex
PANDOC=/usr/bin/pandoc

.PHONY: all
all: pdf doc html

pdf: $(TEXFILE)
	$(PDFCMD) $(TEXFILE)

html: $(TEXFILE)
	$(PANDOC) -o $(HTMLFILE) $(TEXFILE)

doc: $(TEXFILE)
	$(PANDOC) -o $(DOCFILE) $(TEXFILE)
