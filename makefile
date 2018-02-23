RTF = latex2rtf
PDF = pdflatex
HTML = hevea

DOCS = macros.tex s01.tex s02.tex s03.tex s04.tex s05.tex s06.tex s07.tex s08.tex s09.tex
MAIN = main.tex
DUMBMAIN = dumbmain.tex
MAINM4 = main.tex.m4

all: main.pdf dumbmain.rtf dumbmain.html

main.pdf: $(MAIN) $(DOCS) 
	$(PDF) -halt-on-error -output-format pdf $<  
	
dumbmain.rtf: $(DUMBMAIN) $(DOCS) 
	$(RTF) $<

dumbmain.html: $(DUMBMAIN) $(DOCS) 
	$(HTML) $<

$(MAIN): $(MAINM4)
	m4 $< > $@

$(DUMBMAIN): $(MAINM4)
	m4 -D dumb $< > $@
	
.PHONY: clean
clean:
	rm -f *.aux *.log *.backup *.htoc *.out *.toc *.haux main.pdf dumbmain.rtf dumbmain.html $(MAIN) $(DUMBMAIN) *.image.tex
