all: 
	make draft
	make pdf
fisica.aux:
	make draft
clean:
	rm fisica.pdf texput.log fisica.aux fisica.bcf fisica.log fisica.out fisica.run.xml fisica.toc fisica.xwm
pdf: fisica.tex preamble.tex fisica.aux
	pdflatex fisica.tex
draft: fisica.tex preamble.tex
	pdflatex -draftmode fisica.tex
