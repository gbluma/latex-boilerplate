
build:
	pdflatex -halt-on-error document.tex

check:
	@echo "The following items may contain weak word usage.--------------------"
	@sh ./weasels.sh *.md 1>&2
	@echo "The following items may contain passive language.-------------------"
	@sh ./passive_voice.sh *.md 1>&2
	@echo "The following items may contain unnecessary duplication.------------"
	@perl ./dups *.md 2>&2

test:
	./convert.sh
	#$(MAKE) clean
	#latex -halt-on-error document.tex
	#bibtex document
	pdflatex -halt-on-error document.tex
	./focus &> /dev/null

open:
	open document.pdf
	# evince document.pdf &

bib:
	latex -halt-on-error document.tex
	bibtex document

clean:
	rm -f *.out *.pdf *.aux *.dvi *.log *.blg *.bbl
