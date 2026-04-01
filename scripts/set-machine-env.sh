#!/usr/bin/env bash
# Sets the appropriate environment based on the machine we are running on 
#
#PATH=
export DOTFILES_SYSTEM=

usage() {
	printf "[USAGE]\n "
	exit 1
}

check-system-name() {
	DOTFILES_SYSTEM=$(uname -a | cut -d ' ' -f 2)
}


main() {
	check-system-name
}


main $@
