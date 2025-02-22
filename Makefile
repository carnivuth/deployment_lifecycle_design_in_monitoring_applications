BUILDDIR=./build

# target for graph images
images/%.png: graphs/%.mmd
	mkdir -p images
	mmdc -i $< -o $@

# build images from mermaid graphs
graphs: $(patsubst graphs/%.mmd,images/%.png,$(wildcard graphs/*.mmd))

# target for main pdf files
main.pdf:  main.tex
	mkdir -p $(BUILDDIR)
	latexmk -pdf -outdir=$(BUILDDIR) $<
	rm -rf *.aux *.log *.lof *.gz *.toc *.bak~ *.blg

clean:
	rm -rf $(BUILDDIR)

build: clean graphs main.pdf

.PHONY: build clean graphs
.DEFAULT: build
