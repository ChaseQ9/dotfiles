#!/usr/bin/env bash

append-cronjob() {
	local cron_string="0 1 * * * ~/dotfiles/scripts/sync_dotfiles.sh"
	local prev_jobs=$(crontab -l 2>/dev/null | grep -v "$cron_string")
	(echo "$prev_jobs"; echo "$cron_string") | crontab -
}


