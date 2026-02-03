set -o vi

if [[ -f "~/.bash_aliases" ]]; then
	. "~/.bash_aliases"
fi

__PS1() {
	echo '\[\e[38;5;208m\]\u@\h:\w\n>\[\e[0m\] ' 
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
#Changing PS1 Value
export PS1=$(__PS1)
export TERM=xterm-256color
