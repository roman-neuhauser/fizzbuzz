CFLAGS = -Wall -Wextra
CXXFLAGS = -Wall -Wextra -std=c++14
CPPFLAGS = -D_ISOC99_SOURCE

CRAM = cram
CRAMFLAGS =

RST2HTML = rst2html5
RST2HTMLFLAGS = --strict

impls  =
impls += c/piecemeal
impls += c/snprintf
impls += c/strlcat
impls += c/tblrot
impls += c/tblrot2
impls += c/ternaries
impls += c/trivial
impls += cpp/fun
impls += cpp/irange
impls += cpp/trivial
impls += cpp/tts
impls += execline/trivial
impls += haskell/trivial
impls += nim/trivial
impls += perl5/trivial
impls += perl6/given
impls += perl6/trivial
impls += python/trivial
impls += ruby/case
impls += ruby/monkey
impls += ruby/trivial
impls += zsh/patmat
impls += zsh/trivial

crud   =
crud  += */*.o
crud  += haskell/*.hi

.PHONY: all
all: $(impls)

c/strlcat: LDLIBS = -lbsd

$(filter haskell/%,$(impls)): %: %.hs
	ghc $<

$(filter nim/%,$(impls)): %: %.nim
	nim --verbosity:0 compile $<

$(filter execline/%,$(impls)): %: %.xl
	$(call mkexe)

$(filter perl5/%,$(impls)): %: %.pl
	$(call mkexe)

$(filter perl6/%,$(impls)): %: %.pl
	$(call mkexe)

$(filter python/%,$(impls)): %: %.py
	$(call mkexe)

$(filter ruby/%,$(impls)): %: %.rb
	$(call mkexe)

$(filter zsh/%,$(impls)): %: %.zsh
	$(call mkexe)

define mkexe
	install -m 0755 $< $@
endef

.PHONY: html
html: README.html

README.html: README.rst
	$(RST2HTML) $(RST2HTMLFLAGS) $< $@

.PHONY: clean
clean:
	$(RM) $(impls) $(crud) $(tests) $(patsubst %,%.err,$(tests))


tests = $(patsubst %,%.t,$(impls))

$(tests): %:
	install t/happy-path.tpl $@

.PHONY: tests
tests: $(tests)


.PHONY: check
check: $(impls) $(tests)
	env -i TESTROOT="$$PWD" PATH="$$PATH" $(CRAM) $(CRAMFLAGS) $(tests)
