VERSION = $(shell grep '^my $$version' chewmail | perl -pe 's/^[^0-9]*([0-9\.]+).*$$/$$1/g')


all: chewmail.1

clean:
	rm -f chewmail.1 *~
	rm -rf chewmail-*

install: all
	install -d $(DESTDIR)/usr/bin
	install -m 755 chewmail $(DESTDIR)/usr/bin
	install -d $(DESTDIR)/usr/share/man/man1
	install -m 644 chewmail.1 $(DESTDIR)/usr/share/man/man1

dist: clean
	mkdir chewmail-$(VERSION)
	files=`ls` ; cp -r $$files chewmail-$(VERSION)
	tar --exclude=.gitignore --exclude=.git -Jcf \
		chewmail-$(VERSION).tar.xz chewmail-$(VERSION)
	rm -rf chewmail-$(VERSION)

chewmail.1: chewmail
	pod2man chewmail chewmail.1
