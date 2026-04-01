#!/usr/bin/env bash
# Sets the appropriate environment based on the machine we are running on 
#
#PATH=
DOTFILES_SYSTEM=

usage() {
	printf "[USAGE]\n "
	exit 1
}

check-system-name() {
	DOTFILES_SYSTEM=$(uname -a | cut -d ' ' -f 2)
	printf "%s\n" $DOTFILES_SYSTEM
}


main() {
	check-system-name
	usage
}


main $@
