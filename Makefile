INPUT = main.typ
OUTPUT = Anas-Alqoyyum-CV.pdf

INPUT-LETTER = letter.typ
OUTPUT-LETTER = Anas-Alqoyyum-Cover-Letter.pdf

all: compile-ai letter

watch:
	typst watch $(INPUT) $(OUTPUT)

watch-ai:
	typst watch --input variant=ai $(INPUT) $(OUTPUT)

compile:
	typst compile $(INPUT) $(OUTPUT)

compile-ai:
	typst compile --input variant=ai $(INPUT) $(OUTPUT)

letter:
	typst compile $(INPUT-LETTER) $(OUTPUT-LETTER)

clean:
	rm -f $(OUTPUT) $(OUTPUT-LETTER)

help:
	@echo "Available targets:"
	@echo "  make watch         - Watch and compile $(INPUT) into $(OUTPUT)"
	@echo "  make watch-ai      - Watch and compile $(INPUT) with variant=ai into $(OUTPUT)"
	@echo "  make compile       - Compile $(INPUT) into $(OUTPUT) once"
	@echo "  make compile-ai    - Compile $(INPUT) with variant=ai into $(OUTPUT) once"
	@echo "  make letter        - Compile $(INPUT-LETTER) into $(OUTPUT-LETTER) once"
	@echo "  make clean         - Remove generated PDF outputs"
	@echo "  make help          - Show this help message"

.PHONY: all watch watch-ai compile compile-ai letter clean help
