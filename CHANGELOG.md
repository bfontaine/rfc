# rfc Changelog

## v1.0.1 (2024/10/28)

* Fix formatting in the manpage (#22)
* Fix a missing space in the `--help` text

## v1.0.0 (2024/03/26)

* Change the default cache directory location from `~/.RFCs`
  to `~/.cache/RFCs`. Files are automatically migrated if needed.
* Respect `$XDG_CACHE_HOME`: if it’s set and `$RFC_DIR` is not,
  use `$XDG_CACHE_HOME/RFCs` ([#21][i21])
* Fix the version shown by `--version`
* Remove the `update` command which has been deprecated in v0.2.6
* Fix most shellcheck warnings in the code

Documentation:
* Show the default and current cache directories in the help text
* Document `--debug` in the manpage
* Add exit codes in the manpage

This version contains no important breaking change (the directory
changing location is just a cache; the `update` command was deprecated
long ago), but the interface has been stable for the past 5+ years
so it’s time to get out of the 0.x releases.

[i21]: https://github.com/bfontaine/rfc/issues/21

## v0.2.6 (2019/05/11)

* Add a manpage
* Deprecate the `update` command that self-updates the script. It’s still
  there, but it doesn't appear in the documentation.

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
* Deprecate the installation script
* Various improvements

## v0.1.0 (2013/07/17)

* Add the `search` and `update` subcommands
* Improve the installation script
* Improve the errors handling

## v0.0.4 (2013/03/24)

* Use `wget` if `curl` is not available
* Use `$PAGER` or `less` if it’s not set.

## v0.0.3 (2013/03/23)

* Add `--help`
* Add a command to clear the cache

## v0.0.2 (2013/03/23)

First tagged release.
