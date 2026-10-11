CV_DIR := cv-latex
CV_TEX := $(CV_DIR)/cv.tex
CV_PDF := $(CV_DIR)/cv.pdf
OUT_PDF := public/assets/cv.pdf

.PHONY: install start test build cv clean

install:
	npm install

start:
	npm start

test:
	npm test

build:
	npm run build

cv:
	pdflatex -output-directory=$(CV_DIR) $(CV_TEX)
	cp $(CV_PDF) $(OUT_PDF)

clean:
	rm -f $(CV_DIR)/cv.aux $(CV_DIR)/cv.log $(CV_DIR)/cv.out $(CV_PDF)
