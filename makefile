RTF = latex2rtf
PDF = pdflatex
HTML = hevea

RESULT = opowiadania.pdf
HALFRESULT = $(BUILD_DIR)/$(RESULT)
BUILD_DIR = build
DUMBRESULT = $(BUILD_DIR)/dumbmain.html
DOCS = macros.tex $(shell ls *.tex)
TOC = $(BUILD_DIR)/$(RESULT:.pdf=.toc)
MAIN = $(BUILD_DIR)/main.tex
DUMBMAIN = $(BUILD_DIR)/dumbmain.tex
MAINM4 = main.tex.m4

all: $(RESULT) $(DUMBRESULT)

$(BUILD_DIR) :
	mkdir -p $@

$(TOC): | $(BUILD_DIR)
	echo x > $@
	
$(HALFRESULT): $(MAIN) $(DOCS) | $(BUILD_DIR)
	$(PDF) -output-directory $(BUILD_DIR) -file-line-error -halt-on-error -jobname $(RESULT:.pdf=) $<
	
$(RESULT): $(MAIN) $(DOCS) $(HALFRESULT) $(TOC) | $(BUILD_DIR)
	$(PDF) -output-directory $(BUILD_DIR) -file-line-error -halt-on-error -output-format pdf -jobname $(RESULT:.pdf=) $<
	ln -f $(BUILD_DIR)/$(RESULT) $(RESULT)
	
dumbmain.rtf: $(DUMBMAIN) $(DOCS) 
	$(RTF) $<

$(DUMBRESULT): $(DUMBMAIN) $(DOCS) 
	cd $(BUILD_DIR) && $(HTML) -I .. $<

$(MAIN): $(MAINM4)
	m4 $< > $@

$(DUMBMAIN): $(MAINM4)
	m4 -D dumb $< > $@
	
.PHONY: clean
clean:
	rm -rf $(RESULT) dumbmain.rtf $(DUMBRESULT) *.htoc *.haux $(MAIN) $(DUMBMAIN) $(BUILD_DIR) *.image.tex
