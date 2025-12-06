if [[ -f .bash_aliases ]]; then
    source .bash_aliases
fi 

bandit () {
    ssh bandit$1@bandit.labs.overthewire.org -p 2220 
}


export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000
PATH=/usr/bin:/usr/sbin:/usr/local/bin:/bin:/sbin:/opt/homebrew/bin:

export PATH=".:/Users/chasequigley/Library/Python/3.9/bin:$PATH"
export PATH="/Users/chasequigley/scripts:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-22.jdk/Contents/Home/bin"
export PATH="$JAVA_HOME:$PATH"

# Add colors to Terminal
export CLICOLOR=1
export LSCOLORS=FaDxcxgxbxegedabagacad

#Changing PS1 Value
#PS1="\[[\e[0;32m\@]\] \[\e[0;35m\]\u@MB\[\e[31m[\w]\]\[\e[34m\]\$ \[\e[m\]"  
#export PS1
export PS1='\[\e[38;5;208m\]\u@\h:\w\n>\[\e[0m\] '

#export PS1='\[\e[38;5;208m\u@\h:\w\n>\e[m\]'
#export PS1='\[\e[1;32m(\d)\e[m:\u@\h?\e[1;36m\w\e[m\]$ '
PATH="$HOME/bin:$PATH"
export PYTHONPATH="${PYTHONPATH}:/Library/Frameworks/Python.framework/Versions/3.12/lib/python3.12/site-packages"

#neofetch

#cat<<'EOF'
#
#.-.__      \ .-.  ___  __
#|_|  '--.-.-(   \/\;;\_\.-._______.-.
#(-)___     \ \ .-\ \;;\(   \       \ \
# Y    '---._\_((Q)) \;;\\ .-\     __(_)
# I           __'-' / .--.((Q))---'    \,
# I     ___.-:    \|  |   \'-'_          \
# A  .-'      \ .-.\   \   \ \ '--.__     '\
# |  |____.----((Q))\   \__|--\_      \     '
#    ( )        '-'  \_  :  \-' '--.___\
#     Y                \  \  \       \(_)
#     I                 \  \  \         \,
#     I                  \  \  \          \
#     A                   \  \  \          '\
#     |                    \  \__|           '
#                           \_:.  \
#                             \ \  \
#                              \ \  \
#                               \_\_|
#
#EOF
