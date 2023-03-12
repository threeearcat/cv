CC=lualatex
BUILD_DIR=./build
SOURCES=$(wildcard *.tex *.bib *.sty *.cls)
CV=./cv/cv.pdf

all: $(BUILD_DIR)/cv.pdf

$(BUILD_DIR)/cv.pdf: $(SOURCES)
	mkdir -p $(BUILD_DIR)
	$(CC) -output-directory=$(BUILD_DIR) cv.tex
	biber -output-directory=$(BUILD_DIR) cv
	$(CC) -output-directory=$(BUILD_DIR) cv.tex
	$(CC) -output-directory=$(BUILD_DIR) cv.tex
	cp $@ $(CV)

clean:
	rm -rf $(BUILD_DIR)

open:
	xdg-open $(CV)

.PHONY: all clean open
