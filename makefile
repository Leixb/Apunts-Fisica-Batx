all: fisica.md
	pandoc -o fisica.pdf fisica.md
clean: fisica.pdf
	rm fisica.pdf texput.log
tex: fisica.tex preamble.tex
	pdflatex fisica.tex
