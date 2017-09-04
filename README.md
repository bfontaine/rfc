# rfc

[![Build Status](https://travis-ci.org/bfontaine/rfc.png?branch=master)](https://travis-ci.org/bfontaine/rfc)

`rfc` is a little tool written in Bash to read [RFCs][ietf-rfc] from the
command-line. It fetches RFCs and drafts from the Web and caches them
locally.

[ietf-rfc]: http://www.ietf.org/rfc.html

## Usage

Just type `rfc` followed by the RFC number or the draft name:

```
$ rfc <RFC num>
```

e.g.:

```sh
rfc 42 # Read the RFC 42
rfc 1234 # Read the RFC 1234
rfc draft-ietf-core-coap-18 # Read IETF draft core-coap version 18
```

Use `rfc help` to see all available subcommands.

### Options

- `--version`: same as the `version` subcommand
- `--help`: same as the `help` subcommand

### Exit codes

- `0`: normal execution
- `1`: the RFC cannot be found
- `2`: unrecognized option/subcommand
- `3`: unable to connect to the network
- `4`: can't find `curl` nor `wget`

## Install

### Basic install

```sh
mkdir -p ~/bin
curl -sL https://raw.github.com/bfontaine/rfc/master/rfc > ~/bin/rfc
chmod u+x ~/bin/rfc
```

This creates the `~/bin` directory if it doesn’t exist, and download `rfc` in it.
If it’s not in your `PATH`, you have to add it:

```sh
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
```

### Using Homebrew

If you use [Homebrew](http://brew.sh) or [Linuxbrew](http://linuxbrew.sh/) you
can install `rfc` with one command:

```
brew install bfontaine/utils/rfc
```

### Requirements

- `curl` or `wget`. It’ll try `$CURL`, then `curl`, then `wget`.
- `less` or another pager. It uses `$PAGER` if it’s set.

## Customization

You can choose which directory `rfc` use by setting the `RFC_DIR` environment
variable. The directory is automatically created if it doesn’t exist.

## Credits

Baptiste Fontaine and [contributors](https://github.com/bfontaine/rfc/graphs/contributors).
