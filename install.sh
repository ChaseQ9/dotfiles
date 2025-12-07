#!/usr/bin/env bash
declare -A conf
CONFIG_FILE="$PWD/dotfiles.conf"
OLDIFS="$IFS"
IFS=","
# Function below is used to read and populate the configuration array 'conf'
read-conf () {
  readarray -t lines < "$CONFIG_FILE"
  for line in "${lines[@]}"; do
    # The below line is used to extract the key (%% removes suffix, aka everything after the =)
    # The below line is used to extract the value (# removes the prefix, aka everything before the =)
    conf["${line%%=*}"]="${line#*=}"
  done
  
}
# Here we will need to go through each file and do the following:
# 1. Create a symlink to this file in the home directory with the notation ln -s $file .$file | done
# 2. ... 
# Function below is used to iterate through each dotfile within the 'conf' array
# This function also takes into consideration the exclude files
iterate-files () {
  for file in ${conf["FILES"]}; do
    echo "creating a symlink to $file on file ~/.$file"
    rm "$HOME/.$file"
    ln -s "$PWD/$file" "$HOME/.$file"
  done
}

# Entry function, process the main logic loop of the code
main () {

  read-conf
  iterate-files
  echo "${conf["FILES"]}" 
  cleanup 

}

cleanup () {
    IFS=$OLDIFS
}

main 
