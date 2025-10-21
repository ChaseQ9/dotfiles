# Chase Quigley - .bash_aliases file
# Aliases
alias q="exit"
alias c="clear"
alias h="history"
alias cs="clear;ls -al"
alias school="cd /Users/chasequigley/Desktop/UMB\ Years/"
alias unix="ssh chaseq9@users.cs.umb.edu"
alias ip='echo $(ipconfig getifaddr en0)'
alias sub='echo $(ipconfig getoption en0 subnet_mask)'
alias grep='grep --color=auto'
alias ls="ls --color=auto"
alias ..="echo cd ..; cd .."
alias vm26="echo it20 pass: Intro2sys itvm26-1a pass: itvm26-1a ;ssh -A -t chaseq9@users.cs.umb.edu ssh -A -t it341@10.200.6.58 ssh -A sysadmin@itvm26-1a"
alias rpi='ssh -i /Users/chasequigley/.ssh/cs442_rpi chase@192.168.5.175'

#School Specific Helpful items 
# Senior-Fall Convenience
export ENGIN103="/Users/chasequigley/Desktop/UMB Years/Senior-Fall/ENGIN103"
