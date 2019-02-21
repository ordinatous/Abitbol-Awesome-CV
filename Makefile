.PHONY: examples

CC = xelatex
EXAMPLES_DIR = examples
CV_DIR = examples/cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

examples: $(foreach x, Abitbol-awesome-LM Abitbol-Awesome-CV , $x.pdf)


Abitbol-Awesome-CV.pdf: $(EXAMPLES_DIR)/Abitbol-Awesome-CV.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

Abitbol-Awesome-LM.pdf: $(EXAMPLES_DIR)/Abitbol-Awesome-LM.tex
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
