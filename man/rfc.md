# rfc(1) -- Read RFCs in your terminal

## SYNOPSIS

`rfc` [&lt;command&gt;|&lt;number&gt;]

## DESCRIPTION

Show the RFC &lt;number&gt; in your terminal. It uses a local cache to avoid
re-downloading each RFC every time.

## COMMANDS

  * `search` <query>:
    Search for <query> in local RFCs using `grep`. Options are passed through.

  * `list`:
    List locally-available RFCs.

  * `sync` [week|month|all]:
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


## ENVIRONMENT

  * `RFC_DIR`:
    Cache directory. Default is `~/.RFCs`.

  * `PAGER`:
    The command to use to show RFCs. Default is `less`.

  * `CURL`:
    `curl` (default) or `wget`.


## EXAMPLES

  * Read the RFC 2822
    `rfc 2822`

## AUTHOR

Written by Baptiste Fontaine <<b@ptistefontaine.fr>\>.

## BUGS

Bugs should be reported at <https://github.com/bfontaine/rfc/issues>.
