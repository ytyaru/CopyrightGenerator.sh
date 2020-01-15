#!/usr/bin/env bash
GenerateCopyright() {
	local name="$1"
	[ -z "$name" ] && [ -n "$AUTHOR_NAME" ] && name="$AUTHOR_NAME"
	[ -z "$name" ] && [ -n "$AUTHOR" ] && name="$AUTHOR"
	[ -z "$name" ] && name='{{AuthorName}}'
	echo "© `date '+%Y'` ${name}"
}

