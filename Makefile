PREFIX ?= /usr/local

install: bin/nv
	mkdir -p $(PREFIX)/$(dir $<)
	mkdir -p $(PREFIX)/share/nv/shims
	cp $< $(PREFIX)/$<
	cp bin/node $(PREFIX)/share/nv/shims
	cp bin/npm $(PREFIX)/share/nv/shims
	cp bin/npx $(PREFIX)/share/nv/shims

uninstall:
	rm -f $(PREFIX)/bin/nv
	rm -rf $(PREFIX)/share/nv/

.PHONY: install uninstall
