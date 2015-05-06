.PHONY: presentation.pdf all clean

all: presentation.pdf

presentation.pdf: presentation.tex
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make presentation.tex

clean:
	latexmk -CA
