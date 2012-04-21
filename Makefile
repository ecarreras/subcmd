doc:
	@cp -R docs/_build/html/* .
	@rm -rf .sources .static
	@mv _sources .sources
	@mv _static .static
	@grep --exclude=Makefile -lr -e ".static" * | xargs sed -i "s/.static/.static/g"
