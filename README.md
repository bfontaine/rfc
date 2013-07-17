# rfc

`rfc` is a little tool written in Bash to read [RFCs][ietf-rfc] from the
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

Clear the cache with `rfc clear`, and update the script with `rfc update`.

## Install

```
curl -sL bit.ly/install-rfc | sh
```

This will install `rfc` in `~/bin/`.

### Requirements

- `curl` or `wget`
- `less` or another pager

### Return codes

- `0`: normal execution
- `1`: the RFC cannot be found
- `2`: unexisting option
