export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PS1="\[\e[1;32;40m\]\u@\h\[\e[1;32;40m\]\[\e[1;37;40m\]:\[\e[1;33;40m\]\w\[\033[1;36m\]\$(parse_git_branch)\[\e\$\[\e[1;37;40m\]\\$ \[\e[0m\]"

# Bash command
alias ls='ls -G'
alias scr='screen -D -R'
alias du='du -h --max-depth=1'
alias mv='mv -i'
alias rm='_rm'
alias rrm='/bin/rm -i'
alias cd='_cd'

# Run program
alias td='open -a TextEdit'
alias py='python'
alias py3='python3'
alias R='Rscript'
alias npms='npm start'

# Custimzed function
function _cd {
  builtin cd "$@"; ls;
}
function _rm {
  while [ $# -ge 1 ]; do
    mv -f "$1" $HOME/tmp
    echo "$1 deleted."
    shift
  done
}
function parse_git_branch { 
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
  last_commit=$(git log --pretty=format:%at -1 2> /dev/null) || return;
  now=`date +%s`;
  sec=$((now-last_commit));
  min=$((sec/60)); hr=$((min/60)); day=$((hr/24)); yr=$((day/365));
  if [ $min -lt 60 ]; then
    info="${min}m"
  elif [ $hr -lt 24 ]; then
    info="${hr}h$((min%60))m"
  elif [ $day -lt 365 ]; then
    info="${day}d$((hr%24))h"
  else
    info="${yr}y$((day%365))d"
  fi
  echo "(${ref#refs/heads/} $info)";
} 

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig:/opt/local/lib/pkgconfig
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:/usr/local/mysql/bin

