.PHONY: all clean watch

all: cv.pdf

cv.pdf: cv.tex preamble.tex ref.bib biblatex.cfg
	latexmk

watch:
	latexmk -pvc

clean:
	latexmk -C
