FREEDICT_TOOLS ?= ../../tools
DISTFILES = Makefile ChangeLog README SZOTAR.ZIP \
	    hun-eng.tei.header szotar-dbf2tei.pl
supported_phonetics =
include $(FREEDICT_TOOLS)/mk/dicts.mk

dbview_in_path := $(shell which dbview 2>/dev/null)

hun-eng.tei: hun-eng.tei.header SZOTAR.DBF szotar-dbf2tei.pl
ifeq ($(dbview_in_path),)
	@echo "To get the data out of the dBase database, we require the tool"
	@echo "\`dbview' from Martin Schulze aka Joey."
	@echo "Try to get it from http://packages.debian.org/stable/misc/dbview"
	@false
else
	cp $< $@
	./szotar-dbf2tei.pl >> $@
	sed -i 's/ô/ő/g; s/û/ű/g;' $@
endif

SZOTAR.DBF: SZOTAR.ZIP
	unzip $< $@
	touch $@

clean::
	rm -f SZOTAR.DBF hun-eng.tei tmp.tei

