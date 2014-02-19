# rfc

`rfc` is a little tool written in bash to read [RFCs][ietf-rfc] from the
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

### Return codes

- `0`: normal execution
- `1`: the RFC cannot be found
- `2`: unrecognized option/subcommand
- `3`: unable to connect to the network
- `4`: can't find `curl` nor `wget`

## Install

### Basic install

```sh
mkdir -p ~/bin
curl https://raw.github.com/bfontaine/rfc/master/rfc > ~/bin/rfc
chmod u+x ~/bin/rfc
```

This creates the `~/bin` directory if it doesn’t exist, and download `rfc` in it.
If it’s not in your `PATH`, you have to add it:

```
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
```

### Using homebrew

```
brew tap bfontaine/utils
brew install rfc
```

### Requirements

- `curl` or `wget` (it’ll try `$CURL`, `curl` and `wget`, in that order)
- `less` or another pager

## Credits

Baptiste Fontaine and [contributors](https://github.com/bfontaine/rfc/graphs/contributors).
