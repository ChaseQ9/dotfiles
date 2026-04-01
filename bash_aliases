# Author: Chase Quigley 
# File: bash_aliases
# Revised: 02.02.2026

# Aliases
alias q="exit"
alias c="clear"
alias h="history"
alias cs="clear;ls -al"
alias unix="ssh chaseq9@users.cs.umb.edu"
alias grep='grep --color=auto'
alias ls="ls -p --color=auto"
alias ..="echo cd ..; cd .."
alias bat="batcat"

# Typos
alias ivm="vim"
alias vmi="vim"
alias chomd="chmod"
alias chwon="chown"

# Github Related Aliases
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gu="ga;gc 'basic update';gp"

# System Specific
if [[ ! -z $DOTFILES_SYSTEM ]]; then
	case $DOTFILES_SYSTEM in
		*cachy*)
			echo "On the Cachy System!" 
			alias open="xdg-open"
			;;
		*Ubuntu*)
			echo "On the Ubuntu System!"
			;;
		*MacBook*)
			echo "On the Macbook!"
			;;
		*)
			echo "Default Case, I don't know this System!"
			;;
	esac
fi

