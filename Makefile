SHELL = /bin/sh

index.html: index.md metadata.json
	pandoc -s --metadata-file=metadata.json < $< > $@
