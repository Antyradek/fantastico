RTF = latex2rtf
PDF = pdflatex

DOCS = main.tex macros.tex s01.tex s02.tex s03.tex s04.tex s05.tex
MAIN = main.tex

all: main.pdf main.rtf

main.pdf: $(DOCS)
	$(PDF) -halt-on-error -output-format pdf $<  

main.rtf: $(DOCS)
	$(RTF) $<