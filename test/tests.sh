#! /bin/bash

__rfc_tests() {

    ## == setup == ##

    . assert.sh

    local tmp_dir
    local rfc=./rfc

    tmp_dir="$(mktemp -d)"
    rm -r "$tmp_dir"

    export PAGER=cat
    export RFC_TEST=1
    export XDG_CACHE_HOME="$tmp_dir/a"

    ## == tests == ##

    # cache directory should not exist before
    assert_raises "[ ! -d $XDG_CACHE_HOME ]"

    # `rfc` with no arguments should exit properly
    assert_raises "$rfc"
    # idem with --version
    assert_raises "$rfc --version"

    # an error should occur if the RFC doesn't exist
    assert "$rfc doesntexist42foo" "There's no such RFC."
    assert_raises "$rfc doesntexist43foo" 1

    # tests directory should have been automatically created
    assert_raises "[ -d $XDG_CACHE_HOME/RFCs ]"
    # The RFC that doesn't exist should be cached in _404s
    assert_raises "grep -q doesntexist42foo '$XDG_CACHE_HOME/RFCs/_404s'"

    assert_raises "$rfc 41"
    assert_raises "[ -f '$XDG_CACHE_HOME/RFCs/41' ]"

    # Override the default cache location with $RFC_DIR
    export RFC_DIR="$tmp_dir/b"

    assert_raises "$rfc 42"
    assert_raises "[ -f '$RFC_DIR/42' ]"
    assert_raises "[ ! -f '$XDG_CACHE_HOME/RFCs/42' ]"

    assert "$rfc list" 'RFC 42'

    ## == teardown == ##

    rm -rf "$tmp_dir"

    assert_end rfc
}

__rfc_tests
