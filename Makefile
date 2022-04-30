.PHONY: all clean

all: fisica.pdf

clean:
	rm fisica.pdf texput.log fisica.aux fisica.bcf fisica.log fisica.out fisica.run.xml fisica.toc fisica.xwm
fisica.pdf: fisica.tex preamble.tex
	latexmk
