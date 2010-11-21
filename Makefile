# Test makefile for building latex guide
BASE_NAME = semproj
TEXSOURCE = $(BASE_NAME).tex
OUTPUT = $(BASE_NAME).pdf
BIBSOURCE = biblio-semproj

pdf:
	pdflatex $(TEXSOURCE) && pdflatex $(TEXSOURCE) && evince $(OUTPUT)

pdfquiet:
	pdflatex $(TEXSOURCE) && pdflatex $(TEXSOURCE)

bib:
	pdflatex $(TEXSOURCE) && pdflatex $(TEXSOURCE) && bibtex $(BASE_NAME) && pdflatex $(TEXSOURCE) && evince $(OUTPUT)

clean:
	rm -rf *.bbl *.aux *.blg *.log *.toc
