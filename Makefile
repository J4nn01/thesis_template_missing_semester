compile:
	mkdir -p build
	cp -rf -T bib build/bib
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf \
		-aux-directory=build -output-directory=build main.tex
	mv build/main.pdf .
upload:
    git add .
    git status
    @read -p "Enter commit message: " message; \
    git commit -m "$$message"
    git push
