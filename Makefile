#!/usr/bin/make -f

SHELL = /bin/sh

index.html: index.md metadata.json
	pandoc --standalone --metadata-file=metadata.json --verbose < $< > $@

.PHONY: serve
serve: index.html
	@python3 -m 'http.server' 8080
