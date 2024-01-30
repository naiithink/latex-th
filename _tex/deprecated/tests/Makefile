TEX_ENGINE = xelatex
TEX_ENGINE_OPT = --interaction batchmode
TEST_FILE := hello.pdf
TEST_FILE_SOURCES_DIR := sources
TEST_FILE_SOURCES_FILES := fibo.py

all: config $(TEST_FILE)

.PHONY: all clean config debug test .FORCE

debug: clean config
	$(TEX_ENGINE) $(basename $(TEST_FILE)).tex
	$(TEX_ENGINE) $(basename $(TEST_FILE)).tex
	$(TEX_ENGINE) $(basename $(TEST_FILE)).tex

test: $(TEST_FILE)
	@printf "Opening %s\n" $(TEST_FILE)
	@code $(TEST_FILE)

%.pdf: %.tex config .FORCE
	@printf "Building 1/3\n"
	@timeout 10 $(TEX_ENGINE) $(TEX_ENGINE_OPT) $< >/dev/null
	@printf "\033[1K\033[1FBuilding 2/3\n"
	@timeout 10 $(TEX_ENGINE) $(TEX_ENGINE_OPT) $<  >/dev/null
	@printf "\033[1K\033[1FBuilding 3/3\n"
	@timeout 10 $(TEX_ENGINE) $(TEX_ENGINE_OPT) $<  >/dev/null
	@printf "\033[1;32m\033[1F\033[2KDone.\033[0m\n"

config:
	@# Preventing self execution
	@echo "Checking source file permission"
	@ls -l sources | awk -v SOURCE_DIR=$(TEST_FILE_SOURCES_DIR) 'BEGIN { OFS = ":"; } NR > 1 && $$1 !~ /^-r--r--r--$$/ { print ENVIRON["PWD"] "/" SOURCE_DIR "/" $$NF; system("chmod 444 " ENVIRON["PWD"] "/" SOURCE_DIR "/" $$NF) }'
	@echo "Setting source file permission"
	@chmod 444 sources/fibo.py

clean:
	@echo "Cleaning things up"
	@rm -rf $(basename $(TEST_FILE)).pdf \
	$(basename $(TEST_FILE)).aux \
	$(basename $(TEST_FILE)).bbl \
	$(basename $(TEST_FILE)).blg \
	$(basename $(TEST_FILE))-blx.bib \
	$(basename $(TEST_FILE)).fdb_latexmk \
	$(basename $(TEST_FILE)).fls \
	$(basename $(TEST_FILE)).ind \
	$(basename $(TEST_FILE)).inx \
	$(basename $(TEST_FILE)).lof \
	$(basename $(TEST_FILE)).log \
	$(basename $(TEST_FILE)).lol \
	$(basename $(TEST_FILE)).lot \
	$(basename $(TEST_FILE)).out \
	$(basename $(TEST_FILE)).run.xml \
	$(basename $(TEST_FILE)).synctex.gz \
	$(basename $(TEST_FILE)).toc
