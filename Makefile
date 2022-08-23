CC=lualatex
BUILD_DIR=./build
SOURCES=$(wildcard *.tex *.bib)

all: $(BUILD_DIR)/cv.pdf

$(BUILD_DIR)/cv.pdf: $(SOURCES)
	mkdir -p $(BUILD_DIR)
	$(CC) -output-directory=$(BUILD_DIR) cv.tex
	biber -output-directory=$(BUILD_DIR) cv
	$(CC) -output-directory=$(BUILD_DIR) cv.tex

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean
