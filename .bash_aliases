#############################################################################
# FILE: .aliases
#
# This file loads Ty's personalized aliases and sourced from ~/.bashrc.
#
#############################################################################

#############################################################################
# Direcotry movement aliases
#############################################################################
alias up='cd ..; echo $cwd'
alias up2='cd ../..; echo $cwd'
alias up3='cd ../../..; echo $cwd'
alias up4='cd ../../../..; echo $cwd'


#############################################################################
# ls aliases
#############################################################################
alias lll='ls -alh --color=tty $1 | less'
alias llm='ls -alh --color=tty $1 | more'
alias ll='ls -alh --color=tty'
alias la='ls -alh --color=tty'
alias lt='ls -lt --color=tty'


#############################################################################
# Terminal aliases
#############################################################################
alias pd=pushd
alias pop=popd
alias so=source


#############################################################################
# Display aliases
#############################################################################
alias pdis='echo DISPLAY=$DISPLAY'


#############################################################################
# Program shortcut aliases
#############################################################################
alias c='clear'
alias h=history
alias l=less
alias m=mor
alias lns='ln -s $1'
alias dirs='dirs -v'
alias grep='grep --color'
alias emacs="emacs -r"
alias svnx="svn pe svn:externals ."
alias svni="svn pe svn:ignore ."

#############################################################################
# Search aliases
#############################################################################
alias fndenv='export  | grep -i $1'
alias fndcmd='history | grep -i $1'


#############################################################################
# Typo aliases
#############################################################################
alias chomd=chmod
alias suod=sudo
alias get=git


#############################################################################
# # dropconfig git repo alias
#############################################################################
alias config='git --git-dir=${HOME}/.config.git/ --work-tree=${HOME}'
