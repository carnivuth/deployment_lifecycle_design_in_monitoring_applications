BUILDDIR=./build

# target for graph images
$(BUILDDIR)/%.png: graphs/%.mmd
	mkdir -p $(BUILDDIR)
	mmdc -c graphs/mermaid.config.json -i $< -o $@

# build images from mermaid graphs
graphs: $(patsubst graphs/%.mmd,$(BUILDDIR)/%.png,$(wildcard graphs/*.mmd))

# target for main pdf files
main.pdf:  main.tex
	mkdir -p $(BUILDDIR)
	latexmk -bibtex -interaction=nonstopmode -shell-escape -pdf -outdir=$(BUILDDIR) $<

clean:
	rm -rf $(BUILDDIR)

build: clean graphs main.pdf

.PHONY: build clean graphs
.DEFAULT: build
