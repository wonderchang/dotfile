
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
alias ls='ls -G'
alias td='open -a TextEdit'
alias py3='python3'
alias py='python'
alias R='Rscript'
alias rm='rm -i'
alias rmr='rm -ri'
alias _rm='rm -rf'
alias npms='npm start'
alias nckuopen='ssh -i mac.pem ubuntu@52.68.0.83'
alias lijopie='ssh -i mac.pem ubuntu@52.68.53.154'
alias sftpnckuopen='sftp -i mac.pem ubuntu@52.68.0.83'
alias scr='screen -D -R'
cd() { builtin cd "$@"; ls; }
alias hstart="/usr/local/Cellar/hadoop/2.6.0/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.6.0/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.6.0/sbin/stop-dfs.sh"


export PS1="\[\e[1;32;40m\]\u@\h\[\e[1;32;40m\](\d \t)\[\e[1;37;40m\]:\[\e[1;33;40m\]\w\[\e\$\[\e[1;37;40m\]\\$ \[\e[0m\]"
export PATH=$PATH:/usr/local/git/bin:/usr/local/bin

function parse_git_branch { 
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
} 

#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig:/opt/local/lib/pkgconfig
#export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig:
