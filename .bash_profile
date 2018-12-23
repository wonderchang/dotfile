export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export HISTSIZE=1000
export HISFILESIZE=5000

# Custimzed functions
function _rm {
  while [ $# -ge 1 ]; do
    mv -f "$1" $HOME/.Trash
    echo "$1 deleted."
    shift
  done
}

# Common use command
alias du='du -h'
alias find='find . -name'
alias grep='grep --color=auto'
alias h='history | grep'
alias ls='ls -G'
alias mkdir='mkdir -pv'
alias mv='mv -i'
alias path='echo -e ${PATH//:/\\n}'
alias rm='_rm'
alias rrm='/bin/rm -i'
alias less='less -R'

# Run program
alias td='open -a TextEdit'

# Set bash with Git prompt
# https://github.com/magicmonty/bash-git-prompt
GIT_PROMPT_THEME=WonderChang
source ~/.bash-git-prompt/gitprompt.sh

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"

  # Set personal's PATH
  if [ -f $HOME/bin/PATH ] ; then
    source $HOME/bin/PATH
  fi
fi


# vi:et:ts=2:sw=2:cc=80
