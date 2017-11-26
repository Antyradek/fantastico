RTF = latex2rtf
PDF = pdflatex
HTML = hevea

DOCS = main.tex macros.tex s01.tex s02.tex s03.tex s04.tex s05.tex s06.tex s07.tex
MAIN = main.tex

all: main.pdf main.rtf main.html

main.pdf: $(DOCS)
	$(PDF) -halt-on-error -output-format pdf $<  
	
main.rtf: $(DOCS)
	latex2rtf $<

main.html: $(DOCS)
	$(HTML) $<
