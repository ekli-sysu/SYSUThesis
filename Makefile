# autocompile tex file to generate pdf

TEX = latexmk
FLAGS = -pdf -xelatex -pvc -synctex=1

default: main

main:
	$(TEX) $(FLAGS) $@

clean:
	$(TEX) -CA
