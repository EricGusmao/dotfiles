#
# ~/.bashrc
#
export PATH="$PATH:$HOME/DevTools/flutter/bin"
CHROME_EXECUTABLE=/usr/bin/chromium
export CHROME_EXECUTABLE
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Get Aliases
[ -f "${HOME}/aliases" ] && source "${HOME}/aliases"

PS1='[\u@\h \W]\$ '

# Start Starship
eval "$(starship init bash)"
