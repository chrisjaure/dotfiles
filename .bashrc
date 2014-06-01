# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Load ~/.bash_prompt, ~/.bash_exports, ~/.bash_aliases, ~/.bash_functions and
# ~/.bash_source, the latter can be used for settings you don’t want to commit
for file in ~/.bash_{exports,aliases,functions,source}; do
	[ -r "$file" ] && . "$file"
done
unset file

if [[ "$OSTYPE" =~ ^darwin ]]; then
	. ~/.bash_prompt_darwin
else
	. ~/.bash_prompt
fi

# bash completion
## mac osx
if [ -f /usr/local/etc/bash_completion ]; then
	. /usr/local/etc/bash_completion
fi
if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
	. /usr/local/etc/bash_completion.d/git-prompt.sh
fi
## ubuntu
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

# git-lava autocomplete
if [ -f ~/bin/git-lava/bash_completion/git-lava ]; then
	. ~/bin/git-lava/bash_completion/git-lava;
fi

# source nvm if it exists
if [ -f ~/.nvm/nvm.sh ]; then
	. ~/.nvm/nvm.sh
	. ~/.nvm/bash_completion
fi