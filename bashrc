set -o vi

if [[ -f ~/.bash_aliases ]]; then
	. ~/.bash_aliases
fi

__PS1() {
	PROMPT='EXIT_STATUS=$? PS1_CMD1=$(git branch --show-current 2>/dev/null) PS1="\[\e[31m\][\[\e[0m\]$EXIT_STATUS\[\e[31m\]]\[\e[0m\] (\[\e[38;5;202m\]${PS1_CMD1}\[\e[0m\]) \[\e[38;5;28;1m\]\u\[\e[0m\] @ \[\e[38;5;170m\]\h\[\e[0m\] \w\n\[\e[38;5;45m\]\$\[\e[0m\] "'
	echo "$PROMPT"
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
PROMPT_COMMAND=$(__PS1)
export TERM=xterm-256color
