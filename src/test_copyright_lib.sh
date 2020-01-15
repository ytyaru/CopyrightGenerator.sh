#!/usr/bin/env bash
. "$(cd $(dirname $0); pwd)/copyright_lib.sh"
assert() {
	let ++TEST_NUM
	local expected=$1
	local actual=$2
	[ "$expected" != "$actual" ] && { echo "Failed test... TEST_NUM=$TEST_NUM expected='${expected}', actual='${actual}'"; exit 1; }
}
init() {
	year=$(date '+%Y')
	TEST_NUM=0
	unset AUTHOR
	unset AUTHOR_NAME
}
fin() { echo "Cleared all test. $TEST_NUM"; }
init

assert "© $year {{AuthorName}}" "$(GenerateCopyright)"
assert "© $year AugName" "$(GenerateCopyright AugName)"

AUTHOR='SET_AUTHOR_NAME'
assert "© $year $AUTHOR" "$(GenerateCopyright)"
unset AUTHOR

AUTHOR_NAME='SET_AUTHOR_NAME_NAME'
assert "© $year $AUTHOR_NAME" "$(GenerateCopyright)"
unset AUTHOR_NAME

AUTHOR='SET_AUTHOR_NAME'
assert "© $year AugName" "$(GenerateCopyright AugName)"
unset AUTHOR

AUTHOR_NAME='SET_AUTHOR_NAME_NAME'
assert "© $year AugName" "$(GenerateCopyright AugName)"
unset AUTHOR_NAME

AUTHOR='SET_AUTHOR_NAME'
AUTHOR_NAME='SET_AUTHOR_NAME_NAME'
assert "© $year $AUTHOR_NAME" "$(GenerateCopyright)"
assert "© $year AugName" "$(GenerateCopyright AugName)"

fin
