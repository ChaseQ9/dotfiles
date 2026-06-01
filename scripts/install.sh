#!/usr/bin/env bash

declare -A conf
CONFIG_FILE="$HOME/dotfiles/dotfiles.conf"
DOTFILES="$HOME/dotfiles"
OLDIFS="$IFS"
IFS=","

# Function below is used to read and populate the configuration array 'conf'
read-conf () {
  readarray -t lines < "$CONFIG_FILE"
  for line in "${lines[@]}"; do
    # The below line is used to extract the key (%% removes suffix, aka everything after the =)
    # The below line is used to extract the value (# removes the prefix, aka everything before the =)
	# Has the example value "FILES=bash1,bash2,bash3"
    conf["${line%%=*}"]="${line#*=}"
  done
}
# Here we will need to go through each file and do the following:
# 1. Create a symlink to this file in the home directory with the notation ln -s $file .$file | done
# 2. ...
#
# Function below is used to iterate through each dotfile within the 'conf' array
# This function also takes into consideration the exclude files
iterate-files () {
  for file in ${conf["FILES"]}; do
    # -e because these files may be symlinks already, -f only checks for regular
    # files
    if [[ -e "$HOME/.$file" ]]; then
		echo "File exists, creating a symlink to $file on file ~/.$file"
		rm "$HOME/.$file"
		ln -s "$DOTFILES/$file" "$HOME/.$file"
    else
		echo "File does not exist, skipping..."
		continue
	fi
  done
}

append-cronjob() {
	local cron_string="0 1 * * * ~/dotfiles/scripts/sync_dotfiles.sh"
	local prev_jobs=$(crontab -l 2>/dev/null | grep -v "$cron_string")
	(echo "$prev_jobs"; echo "$cron_string") | crontab -
}

# Entry function, process the main logic loop of the code
main () {
	echo "Install Script Running..."
	$DOTFILES/scripts/set-machine-env.sh

	read-conf
	iterate-files
	vim +'PlugInstall --sync' +qa

	read -t 10 -p "Install a cronjob to sync this repo? (y/n): " set_cronjob
	if [[ $set_cronjob == "y" ]]; then
		echo "Installing cronjob into $USER's crontab"
		append-cronjob
	fi

	cleanup

}

cleanup () {
    IFS=$OLDIFS
}

main
