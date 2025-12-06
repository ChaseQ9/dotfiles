#!/usr/bin/env bash
declare -A conf
CONFIG_FILE="$PWD/dotfiles.conf"
OLDIFS="$IFS"
IFS=","
read-conf () {
  readarray -t lines < "$CONFIG_FILE"
  for line in "${lines[@]}"; do
    # The below line is used to extract the key (%% removes suffix, aka everything after the =)
    # The below line is used to extract the value (# removes the prefix, aka everything before the =)
    conf["${line%%=*}"]="${line#*=}"
  done
  
}
# Here we will need to go through each file and do the following:
# 1. Create a symlink to this file in the home directory with the notation ln -s $file .$file
# 2. ... 
iterate-files () {
  for file in ${conf["FILES"]}; do
    echo "creating a symlink to $file on file ~/.$file"
    rm "$HOME/.$file"
    ln -s "$PWD/$file" "$HOME/.$file"
  done
}


main () {

  read-conf
  iterate-files
  echo "${conf["FILES"]}" 

}

cleanup () {
    IFS=$OLDIFS
}

main 
