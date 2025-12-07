#!/usr/bin/env bash

sync-files() {
   echo "Syncing files from Github"
   if [[ $(git -C $HOME/dotfiles pull) == *"Already up to date"* ]]; then
       echo "Up to date"
   else
       $HOME/dotfiles/install.sh
       echo "Files installed"
   fi

}

main() {
    sync-files 
}

main
