# rfc

[![Build Status](https://travis-ci.org/bfontaine/rfc.png?branch=master)](https://travis-ci.org/bfontaine/rfc)

`rfc` is a simple tool written in Bash to read [RFCs][ietf-rfc] from the
command-line. It fetches RFCs and drafts from the Web and caches them
locally.

[ietf-rfc]: https://www.ietf.org/standards/rfcs/

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
- `1`: the requested RFC or archive cannot be found
- `2`: unrecognized option/subcommand
- `3`: unable to connect to the network
- `4`: can't find `curl` nor `wget`

## Install

### Basic install

```sh
mkdir -p ~/bin
curl -sL https://raw.githubusercontent.com/bfontaine/rfc/v0.2.6/rfc > ~/bin/rfc
chmod u+x ~/bin/rfc
```

This creates the `~/bin` directory if it doesn’t exist, and download `rfc` in it.
If it’s not in your `PATH`, you have to add it:

```sh
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
```

You may also want to install the `manpage`, located in [`man/rfc.1`][manpage].

[manpage]: https://raw.githubusercontent.com/bfontaine/rfc/v0.2.6/man/rfc.1

### Using Homebrew

If you use [Homebrew](http://brew.sh) or [Linuxbrew](http://linuxbrew.sh/) you
can install `rfc` with one command:

```
brew install bfontaine/utils/rfc
```

### Archlinux

For archlinux users, you can use the AUR package [rfc-read](https://aur.archlinux.org/packages/rfc-read/).

The command for use it is `rfc`.

### openSUSE
The openSUSE package is called [rfc-read](https://build.opensuse.org/package/show/utilities/rfc-read) and can be installed via `zypper in rfc-read`.

### Requirements

- `curl` or `wget`. It uses `$CURL` if it’s set, and fallback on `curl` and then `wget`.
- `less` or another pager. It uses `$PAGER` if it’s set.

## Customization

You can choose which directory `rfc` uses by setting the `RFC_DIR` environment
variable. The directory is automatically created if it doesn’t exist.

The default directory is `~/.RFCs`.

## Troubleshooting

`rfc` version 0.2.5 and above has a special `--debug` flag that, if passed as
the first argument, enables tracing of all the Bash commands in the script.

## Credits

Baptiste Fontaine and [contributors](https://github.com/bfontaine/rfc/graphs/contributors).
