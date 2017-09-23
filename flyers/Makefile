SVGFILES = $(wildcard *.svg)
PDFFILES = $(patsubst %.svg, %.pdf, $(SVGFILES))

all: $(PDFFILES)

%.pdf: %.svg
	inkscape --export-pdf $@ $<

.PHONY: clean
clean:
	rm -f $(PDFFILES)
