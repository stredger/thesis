
ifeq ($(shell uname -s),Linux)
    OPEN = xdg-open
else
    OPEN = open
endif

open: doc
	$(OPEN) thesis.pdf

doc:
	pdflatex thesis.tex
	pdflatex thesis.tex
	bibtex thesis
	pdflatex thesis.tex
	pdflatex thesis.tex

clean:
	rm thesis.pdf
