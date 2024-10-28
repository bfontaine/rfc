# rfc(1) -- Read RFCs in your terminal

## SYNOPSIS

`rfc` &lt;command&gt;\|&lt;number&gt;

## DESCRIPTION

Show the RFC &lt;number&gt; in your terminal. It uses a local cache to avoid
re-downloading each RFC every time.

## COMMANDS

  * `search` &lt;query&gt;:
    Search for &lt;query&gt; in local RFCs using `grep`. Options are passed through.

  * `list`:
    List locally-available RFCs.

  * `sync` [week\|month\|all]:
    Batch download RFCs. `week` and `month` respectively download only RFCs
    that were added or updated during the last week/month.
    `all` (default) downloads all RFCs. It might take some time; be patient.

  * `clear`:
    Clear the local cache.


## OPTIONS

  * `-v`, `--version`:
    Print the version number and exit

  * `-h`, `--help`:
    Print the help and exit

  * `--debug`:
    Enable the tracing of all Bash commands. This must be the first argument.

## EXIT CODES

  0  Success.

  1  RFC not found.

  2  Unrecognized command.

  3  Network error.

  4  Neither `curl` nor `wget` are installed.

## ENVIRONMENT

  * `RFC_DIR`:
    Cache directory. The default is `$XDG_CACHE_HOME/RFCs` if `XDG_CACHE_HOME`
    is defined, otherwise `~/.cache/RFCs`.

  * `PAGER`:
    Command to use to show RFCs. The default is `less`.

  * `CURL`:
    Command to use to download RFCs: `curl` (default) or `wget`.


## EXAMPLES

Read the RFC 2822:

    $ rfc 2822

## BUGS

Bugs should be reported at <https://github.com/bfontaine/rfc/issues>.


## AUTHOR

Written by Baptiste Fontaine <<b@ptistefontaine.fr>\>.
