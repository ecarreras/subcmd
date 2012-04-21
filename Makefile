doc:
	@cp -R docs/_build/html/* .
	@rm -rf sources static
	@mv _sources sources
	@mv _static static
	@grep --exclude=Makefile --exclude=docs/ -lr -e "_static" * | xargs sed -i "s/_static/static/g"
