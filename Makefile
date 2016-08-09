TARGET = itp2013

TEXFILE = $(TARGET).tex \
	  abstract.tex \
	  introduction.tex \
	  related-work.tex \
	  conclusion.tex \
	  llvm-semantics.tex \
	  current-state.tex

BIB = 
FIGFILE = 

DEPEND = $(TEXFILE) $(BIB) $(FIGFILE)

all: pdf

pdf: $(DEPEND)
	pdflatex $(TARGET)
	bibtex $(TARGET)
	pdflatex $(TARGET)
	pdflatex $(TARGET)

clean: 
	rm -f $(TARGET).pdf $(TARGET).ps *.log *.aux *.dvi *.bbl *.blg *~

