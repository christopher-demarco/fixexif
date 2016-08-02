#!/bin/bash
set -e

function test {
    input=$1
    output=$2
    if [[ $(./fix_exif.sh $input) == $output ]] ; then
	echo "ok $input"
    else
	echo "FAIL $input $(./fix_exif.sh $input)"
    fi
}

test 'nodate' ''
test '1999' '1999'
test '2001_0.jpg' '2001'
test '2001-09_2394' '2001-09'
test '2001-09-09' '2001-09-09'
test '2001-09-09_long_title.jpg' '2001-09-09'
