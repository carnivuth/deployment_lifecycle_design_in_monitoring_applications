BUILDDIR=./build

# target for graph images
%.png: %.mmd
	mkdir -p $(BUILDDIR)
	mmdc -i $< -o $(BUILDDIR)/$@

# target for main pdf files
main.pdf: $(patsubst %.mmd,%.png,$(wildcard *.mmd)) main.tex
	mkdir -p $(BUILDDIR)
	latexmk -pdf -outdir=$(BUILDDIR) $<
	rm -rf *.aux *.log *.lof *.gz *.toc *.bak~ *.blg

clean:
	rm -rf $(BUILDDIR)

build: clean main.pdf

.PHONY: build clean
.DEFAULT: build
