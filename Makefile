.PHONY: serve docs doc

serve:
	mkdocs serve


docs:
	@echo "Generating docs and switching to gh-pages branch"
	mkdocs build --clean
	git stash save -u
	git checkout gh-pages
	git rm -r .
	git reset -- .gitignore
	git checkout -- .gitignore
	git stash pop
	mv site/* .
	rmdir site
	git add .


doc: docs


