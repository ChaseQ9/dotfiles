#!/usr/bin/env bash
# Sets the appropriate environment based on the machine we are running on 
#

usage() {
	printf "[USAGE]\n "
	exit 1
}

check-os() {
	local os=$(uname)
}


main() {
	check-os
	usage
}


main $@
