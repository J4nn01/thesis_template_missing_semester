compile:
	mkdir -p build
	cp -rf -T bib build/bib
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf \
		-aux-directory=build -output-directory=build main.tex
	mv build/main.pdf .
	
upload:
	@if [ ! -d ".git" ]; then \
		echo "Error: .git directory not found. Make sure you are in a git repository."; \
		exit 1; \
    	fi; \
	git add .
	git status
	@read -p "Enter commit message: " message; \
	git commit -m "$$message"
	git push
