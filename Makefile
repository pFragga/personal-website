#!/usr/bin/make -f

SHELL = /bin/sh

index.html: index.md metadata.json
	pandoc -s --metadata-file=metadata.json < $< > $@

.PHONY: serve
serve: index.html
	@python3 -m 'http.server' 8080
