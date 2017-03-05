all: main.rtf main.pdf

main.rtf: main.tex text.tex
	latex2rtf main.tex
	
main.pdf: main.tex text.tex
	pdflatex main.tex