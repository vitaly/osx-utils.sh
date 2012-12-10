ifneq ($(wildcard ~/bin),)
  bindir = ~/bin
else
  bindir = /usr/local/bin
endif

bin_targets := $(patsubst bin/%,${bindir}/%,$(wildcard bin/*))

${bindir}/%: bin/%
	@cp -v $< $@

.PHONY: help install clean


help:
	@echo targets: help install clean

install: ${bin_targets}

clean:
	rm -vf ${bin_targets}

