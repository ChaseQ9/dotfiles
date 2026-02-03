# Author: Chase Quigley
# File: bashrc
# Revised: 02.03.2026

# If not running interactively
[[ -n $PS1 ]] || return

set -o vi
# Shell Options
shopt -s cdspell
shopt -s checkwinsize

# Bash Version >= 4
shopt -s autocd   2>/dev/null || true
shopt -s dirspell 2>/dev/null || true

if [[ -f ~/.bash_aliases ]]; then
	. ~/.bash_aliases
fi

# Support colors in less - Sourced from https://github.com/bahamas10/dotfiles/blob/master/bashrc
export LESS_TERMCAP_mb=$(tput bold; tput setaf 1)
export LESS_TERMCAP_md=$(tput bold; tput setaf 1)
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_se=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4)
export LESS_TERMCAP_ue=$(tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 2)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)

__PS1() {
	EXIT_STATUS=$?
	GIT_BRANCH="$(git branch --show-current 2>/dev/null)"
	
	PS1="\[\e[31m\][\[\e[0m\]$EXIT_STATUS\[\e[31m\]]\[\e[0m\]"
	if [[ -n $GIT_BRANCH ]]; then
		PS1+=" (\[\e[38;5;202m\]$GIT_BRANCH\[\e[0m\])"
	fi

	PS1+=" \[\e[38;5;28;1m\]\u\[\e[0m\] @ \[\e[38;5;170m\]\h\[\e[0m\] \w\[\e[38;5;45m\]\n\$\[\e[0m\] "	
}
# Set vim as the default for editing and viewing
export EDITOR='vim'
export VISUAL='vim'
# Adjust history viewing
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000
# Add colors to Terminal
export CLICOLOR=1
export LSCOLORS=FaDxcxgxbxegedabagacad
# Changing PS1 Value
PROMPT_COMMAND=__PS1
export TERM=xterm-256color

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
