TEX_ENGINE = xelatex
TEST_FILE := hello.pdf

all: $(TEST_FILE)

.PHONY: all test clean .FORCE

test: $(TEST_FILE)
	code $(TEST_FILE)

%.pdf: %.tex .FORCE
	$(TEX_ENGINE) $<
	$(TEX_ENGINE) $<
	$(TEX_ENGINE) $<

clean:
	rm -rf *.pdf *.aux *.log *.out *.toc *.inx *.ind *.synctex.gz
