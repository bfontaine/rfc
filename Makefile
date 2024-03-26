.PHONY: test

man/rfc.1: man/rfc.md
	ronn --warnings --roff $<

test:
	bash test/tests.sh
