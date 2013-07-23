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
rfc clear           # clear the cache
rfc help            # display the help and exit
rfc search [OPTS] X # search for `X` in the cached RFCs (using grep with OPTS passed through)
rfc update          # update the script
rfc version         # display the version number and exit
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

### Advanced install

If you prefer to choose where you want to install `rfc`, it’s up to you! Drop it
where you want, ensure that the directory is in your `PATH`, make it executable,
and that’s it.

```sh
curl https://raw.github.com/bfontaine/rfc/master/rfc > /where/you/want/rfc
chmod u+x /where/you/want/rfc
```

### Requirements

- `curl` or `wget` (it’ll try `$CURL`, `curl` and `wget`, in that order)
- `less` or another pager

