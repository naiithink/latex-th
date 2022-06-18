TEX_ENGINE = xelatex

test: hello.pdf

.PHONY: test clean .FORCE

%.pdf: %.tex
	$(TEX_ENGINE) $<
	$(TEX_ENGINE) $<
	$(TEX_ENGINE) $<

clean:
	rm -rf *.pdf *.aux *.log *.out *.toc *.inx *.ind *.synctex.gz
