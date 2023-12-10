.PHONY: clean

paper.pdf: paper.tex plot-data.png
	pdflatex paper.tex

plot-%.png: %.dat plot.py
	python3 plot.py -i $*.dat -o $@

clean:
	for file in $$(git ls-files -o); do rm -f $$file; done
