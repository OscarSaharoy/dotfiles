#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# colours for ls
alias ls='ls --color=auto'

# 4 spaces forever
tabs 4

# ===== set $PATH =====

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

# ===== end setting $PATH =====


# Function to generate PS1 after CMDs
PROMPT_DIRTRIM=2
PROMPT_COMMAND=__prompt_command    

__prompt_command() {
    local ExitCode="$?"
    local ResetCol='\[\e[0m\]'
    local Red='\[\e[0;31m\]'
    local Green='\[\e[0;32m\]'
    local BYel='\[\e[1;33m\]'
    local Pur='\[\e[0;35m\]'
	local Cyan='\[\e[1;36m\]'

    PS1="${ResetCol}[${Cyan}\u@\h ${Green}\w${ResetCol}] "

	# display red exitcode if exit code nonzero
    #if [ $ExitCode != 0 ]; then
    #    PS1+="${Red}$$ ${ResetCol}"
    #fi

	PS1+="$ "
}

