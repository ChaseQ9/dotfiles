# Author: Chase Quigley
# File: bash_profile
# Revised: 02.02.2026

# Note: bash_profile runs once upon initial login to the system
# bashrc runs every time a new terminal window is opened

# Check if the bashrc file exists
# -e due to file possibly being a symlink and not a 'regular' file
if [[ -e "$HOME/.bashrc" ]]; then 
	source "$HOME/.bashrc"
fi

# Check if bash_aliases file exists
# -e due to file possibly being a symlink and not a 'regular' file
if [[ -e "$HOME/.bash_aliases" ]]; then
	source "$HOME/.bash_aliases"
fi 

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # Set the base PATH for the system, this is the bare minimum without any
    # changes
    PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
elif [[ "$OSTYPE" == *darwin* ]]; then
    # Set the base PATH for the system, this is the bare minimum without any
    # changes
    PATH=/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin 
fi
# export PATH=/Users/chasequigley/java_bin:/Library/Frameworks/Python.framework/Versions/3.10/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Apple/usr/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

true
