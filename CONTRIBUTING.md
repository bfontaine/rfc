# Contributing to `rfc`

Thank you for contributing to `rfc`! The tool is now stable and we don’t plan
to add more features to it.

## Manpage

To update the manpage, edit `man/rfc.md` ([format documentation][format]), then
run `ronn man/rfc.md`.

You can install [`ronn`][ronn] with `gem install ronn`.

[ronn]: https://github.com/rtomayko/ronn#ronn
[format]: https://rtomayko.github.io/ronn/ronn-format.7.html

## Tests

You can run tests with the following command:

    ./test/tests.sh

