PDFNAME=frata_tcc.pdf
PDFVIEWER=evince

all: compile preview
	
compile: main.tex 
	pdflatex main.tex
	mv main.pdf $(PDFNAME)

clean:
	rm -r *.out *.aux *.log *.lot *.toc *.lof
	rm $(PDFNAME)

preview: $(PDFNAME)
	$(PDFVIEWER) $(PDFNAME)
