#! /bin/bash

__rfc_tests() {

    ## == setup == ##

    . assert.sh

    local _tmp_rfc_dir=foobar
    local rfc=./rfc

    export RFC_DIR=$_tmp_rfc_dir


    ## == tests == ##

    # tests directory should NOT exist before
    assert_raises "[ ! -d $_tmp_rfc_dir ]"

    # `rfc` with no arguments should exit properly
    assert_raises "$rfc"

    # an error should occure if the RFC doesn't exist
    assert "$rfc doesntexist42foo" "There's no such RFC."
    assert_raises "$rfc doesntexist43foo" 1

    # tests directory should have been automatically created
    assert_raises "[ -d $_tmp_rfc_dir ]"


    ## == teardown == ##

    rm -rf $_tmp_rfc_dir

    assert_end rfc
}

__rfc_tests
