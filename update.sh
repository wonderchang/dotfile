update_all {
  files=($@)
  for fn in "${files[@]}"; do
    if [ -f $HOME/$fn ]; then
      echo "Updated from local config file $HOME/$fn"
      /bin/cp -f $HOME/$fn .
    else
      echo "$HOME/$fn not exists, skip updating"
    fi
  done
}

dotfiles=('.zshrc' '.vimrc' '.tmux.conf' '.tmux.conf.local' '.gitconfig')
OS=`uname -s`

if [ "$OS" = "Darwin" ]; then
  dotfiles+=(.bash_profile)
  update_all "${dotfiles[@]}"
elif [ "$OS" = "Linux" ]; then
  dotfiles+=(.bashrc)
  update_all "${dotfiles[@]}"
fi
