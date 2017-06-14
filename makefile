all: 
	make draft
	make pdf
fisica.aux:
	make draft
clean: fisica.pdf
	rm fisica.pdf texput.log
pdf: fisica.tex preamble.tex fisica.aux
	pdflatex fisica.tex
draft: fisica.tex preamble.tex
	pdflatex -draftmode fisica.tex
