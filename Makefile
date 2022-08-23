CC=lualatex
BUILD_DIR=build/
SOURCES=cv.tex

all: $(BUILD_DIR)/cv.pdf

$(BUILD_DIR)/cv.pdf: $(SOURCES)
	mkdir -p $(BUILD_DIR)
	$(CC) -output-directory=$(BUILD_DIR) $<

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean
