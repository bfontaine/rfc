# rfc

`rfc` is a little tool written in bash to read [RFCs][ietf-rfc] from the
command-line. It fetches RFCs from the Web, then caches them locally, so each RFC
is fetched only once.

[ietf-rfc]: http://www.ietf.org/rfc.html

## Usage

Just type `rfc` followed by the RFC number:

```
$ rfc <RFC num>
```

e.g.:

```sh
rfc 42 # Read the RFC 42
rfc 1234 # Read the RFC 1234
```

Additionally, it supports the following subcommands:

```sh
rfc clear    # clear the cache
rfc help     # display the help and exit
rfc search X # search for `X` in the cached RFCs (using grep)
rfc update   # update the script
rfc version  # display the version number and exit
```

### Options

- `--version`: same as the `version` subcommand
- `--help`: same as the `help` subcommand

### Return codes

- `0`: normal execution
- `1`: the RFC cannot be found
- `2`: unrecognized option/subcommand
- `3`: unable to connect to the network
- `4`: can't find `curl` nor `wget`


## Install

```
curl -sL bit.ly/install-rfc | bash
```

This will install `rfc` in `~/bin/`.

### Requirements

- `curl` or `wget`
- `less` or another pager

