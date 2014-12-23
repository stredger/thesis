
ifeq ($(shell uname -s),Linux)
    OPEN = xdg-open
else
    OPEN = open
endif

open: doc
	$(OPEN) thesis.pdf

submit: doc
	cp thesis.pdf Tredger_Stephen_MSc_2014.pdf

doc:
	pdflatex thesis.tex
	pdflatex thesis.tex
	bibtex thesis
	pdflatex thesis.tex
	pdflatex thesis.tex

clean:
	rm thesis.pdf
