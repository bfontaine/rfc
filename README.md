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

This will install `rfc` in `~/bin/`, and add it to your path using
`~/.bash_profile`, if it’s not already in it.

If you prefer the manual install, clone this repo or [download][raw-script]
`rfc`, move it wherever you want, and set it executable. For example, to install
it in `~/.local/bin` (assuming it’s already in your `PATH`), use this:

```sh
git clone https://github.com/bfontaine/rfc.git
mv rfc/rfc ~/.local/bin/
chmod u+x ~/.local/bin/rfc
```

[raw-script]: https://raw.github.com/bfontaine/rfc/master/rfc

### Requirements

- `curl` or `wget` (it’ll try `$CURL`, `curl` and `wget`, in that order)
- `less` or another pager

