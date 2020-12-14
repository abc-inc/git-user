INSTALL ?= install
INSTALL_PROGRAM ?= $(INSTALL)

prefix = /usr/local
bindir ?= $(prefix)/bin

all: install

check:
	shellcheck -x git-user
	~/go/bin/shfmt -d -i 2 -ci git-user

install:
	$(INSTALL_PROGRAM) -Dt "$(DESTDIR)$(bindir)" git-user

uninstall:
	rm -fv "$(DESTDIR)$(bindir)/git-user"

.PHONY: all check install uninstall
