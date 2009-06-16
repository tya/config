#############################################################################
# FILE: .bash_profile
#
# This file loads Ty's login in session settings.  This file is sourced 
# for each login in session.
#
#############################################################################

#############################################################################
# source other files
#############################################################################
# get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi


#############################################################################
# general shell settings
#############################################################################
shopt -s checkwinsize     # check the window size after each command
set -o noclobber          # don't overwrite existing files with >
set -o ignoreeof          # don't terminate session on ^D input
set -o emacs              # set shell to use emacs key bindings
xset b off                # turn bell off



#############################################################################
# history settings
#############################################################################
shopt -s histappend       # append shell history when shell exit
export HISTCONTROL=ignoredups


#############################################################################
# local path settings
#############################################################################
if [ -f ${HOME}/bin ]; then
	export PATH=${PATH}:${HOME}/bin
fi

if [ -f ${HOME}/.local/bin ]; then
	export PATH=${PATH}:${HOME}/.local/bin
fi


#############################################################################
# sbin path settings
#############################################################################
# sbin
if [ -f /sbin ]; then
    export PATH=PATH=${PATH}:/sbin
fi

# /usr/sbin
if [ -f /usr/sbin ]; then
    export PATH=PATH=${PATH}:/usr/sbin
fi

# /usr/local/sbin
if [ -f /usr/local/sbin ]; then
    export PATH=PATH=${PATH}:/usr/local/sbin
fi


#############################################################################
# editor setup
#############################################################################
export EDITOR=emacs


#############################################################################
# svn setup
#############################################################################
export SVN_EDITOR=emacs
export SVN_REPO='https://svn.beatportcorp.net/svn/'


#############################################################################
# git setup
#############################################################################
export GIT_EDITOR=emacs


#############################################################################
# dropbox/config-repo settings
#############################################################################
export DROPBOX=${HOME}/Dropbox
export DROPCONFIG=${DROPBOX}/config


#############################################################################
# Bash completion settings 
#############################################################################
export BASH_COMPLETION="${HOME}/.bash_completion"
export BASH_COMPLETION_DIR="${HOME}/.bash_completion.d"

if [ -f ${HOME}/.bash_completion ]; then
    . ${HOME}/.bash_completion

bind "set completion-ignore-case on"



