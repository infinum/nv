PREFIX ?= /usr/local

install: bin/nv
	mkdir -p $(PREFIX)/$(dir $<)
	sudo mkdir -p $(PREFIX)/nv/
	cp $< $(PREFIX)/$<
	sudo cp bin/node $(PREFIX)/nv/

uninstall:
	rm -f $(PREFIX)/bin/nv
	sudo rm -rf $(PREFIX)/nv/

.PHONY: install uninstall
