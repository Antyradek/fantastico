RTF = latex2rtf
PDF = pdflatex

DOCS = main.tex macros.tex s01.tex s02.tex s03.tex s04.tex s05.tex s06.tex
MAIN = main.tex

all: main.pdf main.rtf

main.pdf: $(DOCS)
	$(PDF) -halt-on-error -output-format pdf $<  

main.rtf: $(DOCS)
	$(RTF) $<
	
main.html: $(DOCS)
	hevea $<
	sed -i 's/\"\‘/„/g' main.html 
	sed -i 's/\"\’/”/g' main.html