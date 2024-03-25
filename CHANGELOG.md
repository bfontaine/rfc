# rfc Changelog

## v1.0.0 (unreleased)

* Change the default cache directory location from `~/.RFCs` to `~/.cache/RFCs`
* Respect `$XDG_CACHE_HOME`: if it’s set and `$RFC_DIR` is not, use `$XDG_CACHE_HOME/RFCs`
* Show the default and current cache directories in the help text
* Fix the version shown by `--version`: in v0.2.6 it still showed 0.2.5

## v0.2.6 (2019/05/11)

* Add a manpage
* Deprecate the `update` command, that self-updates the script. It’s still
  there, but it doesn’t appear in the documentation.

## v0.2.5 (2018/06/27)

* Use `grep -R` instead of shell globbing in `rfc search` not to break on
  machines with low Bash `ARG_MAX` ([#12][pr12])
* Fix `rfc sync week` and `rfc sync month`
* `rfc sync` now fails if it gets passed a mode that’s not `all` (default),
  `month`, or `week`.
* Add a special `--debug` flag to enable Bash commands tracing
* Improve the documentation

[pr12]: https://github.com/bfontaine/rfc/pull/12

## v0.2.4 (2017/09/05)

* Fix the RFCs tarball URL

## v0.2.3 (2017/05/22)

* Use HTTPS everywhere

## v0.2.2 (2014/02/24)

* Fix a regexp to work with GNU `grep`

## v0.2.1 (2014/02/19)

* Fix a `grep` option

## v0.2.0 (2014/02/19)

* Remove the (deprecated) install script
* Add the `sync` subcommand
* Add some subcommands aliases

## v0.1.1 (2014/02/17)

* Add the `list` subcommand
* Add instructions for installation in the README
* Add the ability to show drafts
* Deprecate the install script
* Various improvements

## v0.1.0 (2013/07/17)

* Add the `search` and `update` subcommands
* Improve the install script
* Improve the errors handling

## v0.0.4 (2013/03/24)

* Use `wget` if `curl` is not available
* Use `$PAGER` or `less` if it’s not set.

## v0.0.3 (2013/03/23)

* Add `--help`
* Add a command to clear the cache

## v0.0.2 (2013/03/23)

First tagged release.
