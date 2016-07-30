filename=corey_adams_thesis


all: $(filename).pdf
	latexmk -pdf corey_adams_thesis.tex

.PHONY: clean

clean:
	\rm *.aux *.blg *.out *.bbl *.log *.dvi *.pdf *.fls *.lot *.lof

$(filename).pdf: *.tex
	pdflatex $(filename)
	pdflatex $(filename)
	bibtex $(filename)
	pdflatex $(filename)
	pdflatex $(filename)


# clean:
	# rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg}