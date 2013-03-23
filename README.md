# rfc

**rfc** is a little tool written in Bash to read [RFCs][ietf-rfc] from the
command-line. It fetches RFCs from the Web, then cache them locally, so each RFC
is fetched only once.

## Usage

Just type `rfc` followed by the RFC number:

```
$ rfc <RFC num>
```

### Example

```sh
rfc 42 # Read the RFC 42
rfc 1234 # Read the RFC 1234
```

## Install

```
curl -sL bit.ly/install-rfc | sh
```

### Requirements

- `curl`
- `less`


[ietf-rfc]: http://www.ietf.org/rfc.html
