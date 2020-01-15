#!/usr/bin/env bash
assert() {
	let ++TEST_NUM
	local expected=$1
	local actual=$2
	[ "$expected" != "$actual" ] && { echo "Failed test... TEST_NUM=$TEST_NUM expected='${expected}', actual='${actual}'"; exit 1; }
}
init() {
	cmd="$(cd $(dirname $0); pwd)/copyright.sh"
	year=$(date '+%Y')
	TEST_NUM=0
	unset AUTHOR
	unset AUTHOR_NAME
}
fin() { echo "Cleared all test. $TEST_NUM"; }
init

assert \
	"© $year {{AuthorName}}" \
	"$($cmd)"
assert \
	"© $year AugName" \
	"$($cmd AugName)"
assert \
	"© $year SET_AUTHOR_NAME" \
	"$(AUTHOR='SET_AUTHOR_NAME' $cmd)"
assert \
	"© $year SET_AUTHOR_NAME_NAME" \
	"$(AUTHOR_NAME='SET_AUTHOR_NAME_NAME' $cmd)"
assert \
	"© $year AugName" \
	"$(AUTHOR='SET_AUTHOR_NAME' $cmd AugName)"
assert \
	"© $year AugName" \
	"$(AUTHOR_NAME='SET_AUTHOR_NAME_NAME' $cmd AugName)"
assert \
	"© $year SET_AUTHOR_NAME_NAME" \
	"$(AUTHOR='SET_AUTHOR_NAME' AUTHOR_NAME='SET_AUTHOR_NAME_NAME' $cmd)"
assert \
	"© $year AugName" \
	"$(AUTHOR='SET_AUTHOR_NAME' AUTHOR_NAME='SET_AUTHOR_NAME_NAME' $cmd AugName)"

fin
