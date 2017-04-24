RTF = latex2rtf
PDF = pdflatex

DOCS = s01.tex s02.tex
MAIN = main.tex

all: main.pdf main.rtf

main.pdf: $(DOCS)
	$(PDF) -halt-on-error -output-format pdf $(MAIN)  

main.rtf: $(DOCS)
	$(RTF) $(MAIN) 