
set -o vi

export PYTHONPATH=.:/Users/chasequigley/lib/stdlib-python
eval "$(/opt/homebrew/bin/brew shellenv)"
export PYTHONPATH=.:/Users/chasequigley/stdlib-python
export PYTHONPATH=.:/Users/chasequigley/Library/Python/3.9/lib/python/site-packages

# Setting PATH for Python 3.10
# The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PYTHONPATH=.:/Users/chasequigley/stdlib-python
export PYTHONPATH=.:/Users/chasequigley/lib/stdlib-python
export PYTHONPATH=.:/Users/chasequigley/Library/Python/3.9/lib/python/site-packages
export PROJECT_HOME=/Users/chasequigley/java_workspace
export CLASSPATH=.:./out:/Users/chasequigley/java_lib/stdlib.jar:/Users/chasequigley/java_lib/dsa.jar
export PATH=/Users/chasequigley/java_bin:/Library/Frameworks/Python.framework/Versions/3.10/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Apple/usr/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# If .bashrc file exists
if [[ -f ~/.bashrc ]]; then 
	source ~/.bashrc
fi

# MacPorts Installer addition on 2023-10-26_at_22:26:30: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 3.12
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH

# Setting PATH for Python 3.12
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH

PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:/opt/metasploit-framework/bin
