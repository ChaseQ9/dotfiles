#!/usr/bin/env bash

# Assumes this file is run from within the github repo
#
prompt_confirmation() {
    read -p "Confirm replacement? [y/n] " confirm
    if [[ "$confirm" == 'y' ]]; then
        echo "continuing"
    fi
}


main() {
    prompt_confirmation 
    cp .bashrc ../.bashrc
    prompt_confirmation 
    cp .vimrc ../.vimrc
}

main
