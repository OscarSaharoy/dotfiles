#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PROMPT_DIRTRIM=2
PS1='[\[\e[1;36m\]\u@\h \[\e[1;32m\]\w\[\e[0m\]] \$ '

export PATH=$PATH:$HOME/.local/bin/:$HOME/bin/

if [ -d "$HOME/tools/android-platform-tools" ] ; then
 export PATH="$HOME/tools/android-platform-tools:$PATH"
fi
if [ -d "$HOME/tools/heimdall" ] ; then
 export PATH="$HOME/tools/heimdall:$PATH"
fi
if [ -d "$HOME/tools/android-commandline-tools" ] ; then
 export PATH="$HOME/tools/android-commandline-tools/cmdline-tools/latest/bin:$PATH"
 build_tools_version=$(ls -t "$HOME/tools/android-commandline-tools/build-tools/" | head -n 1)
 export PATH="$HOME/tools/android-commandline-tools/build-tools/$build_tools_version:$PATH"
fi

tabs 4

