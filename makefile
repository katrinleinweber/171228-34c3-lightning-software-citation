34c3:
	pandoc \
		--slide-level 2 \
		--from markdown \
		--to beamer \
		--bibliography=../../TIB.bib \
		--include-in-header present.tex \
		--incremental \
		--output 171230-34c3-lightning-software-citation.pdf \
		README.md
