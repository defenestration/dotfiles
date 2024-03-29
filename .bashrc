#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='nwinkler'
# export BASH_IT_THEME='alf'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#. ~/.rvm/scripts/rvm

# Load Bash It
source $BASH_IT/bash_it.sh

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#. ~/.rvm/scripts/rvm

export PATH="$PATH:$HOME/.linuxbrew/bin/"
export GOPATH="$HOME/.gopath/"

#doge
#source <(kubectl completion bash)

