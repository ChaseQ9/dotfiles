set -o vi

if [[ -f ~/.bash_aliases ]]; then
	. ~/.bash_aliases
fi

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
