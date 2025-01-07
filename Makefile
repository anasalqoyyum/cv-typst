INPUT = main.typ
OUTPUT = Anas-Alqoyyum-CV.pdf

all: watch

watch:
	typst watch $(INPUT) $(OUTPUT)

compile:
	typst compile $(INPUT) $(OUTPUT)

clean:
	rm -f $(OUTPUT)

help:
	@echo "Available targets:"
	@echo "  make watch      - Watch and compile $(INPUT) into $(OUTPUT)"
	@echo "  make compile    - Compile $(INPUT) into $(OUTPUT) once"
	@echo "  make clean      - Remove the output file $(OUTPUT)"
	@echo "  make help       - Show this help message"

.PHONY: all watch compile clean help
