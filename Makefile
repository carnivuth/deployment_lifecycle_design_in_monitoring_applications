BUILDDIR=./build

main.pdf: main.tex
	mkdir -p $(BUILDDIR)
	latexmk -pdf -outdir=$(BUILDDIR) $<
	rm -rf *.aux *.log *.lof *.gz *.toc *.bak~ *.blg

build: main.pdf

clean:
	rm -rf $(BUILDDIR)

.PHONY: build clean
