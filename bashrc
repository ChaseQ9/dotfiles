if [[ -f "~/.bash_profile" ]]; then
	. "~/.bash_profile"
fi


bandit () {
    ssh bandit$1@bandit.labs.overthewire.org -p 2220 
}


export bandit
export EDITOR='vim'
export VISUAL='vim'

export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000
PATH=/usr/bin:/usr/sbin:/usr/local/bin:/bin:/sbin:/opt/homebrew/bin:

# Add colors to Terminal
export CLICOLOR=1
export LSCOLORS=FaDxcxgxbxegedabagacad

#Changing PS1 Value
export PS1='\[\e[38;5;208m\]\u@\h:\w\n>\[\e[0m\] '
export TERM=xterm-256color
