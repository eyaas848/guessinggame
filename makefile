all: README.md

README.md: guessinggame.sh makefile
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "Last run: $$(date)" >> README.md
	@echo "" >> README.md
	@echo "Lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md