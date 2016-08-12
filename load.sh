load_all() {
  files=($@)
  for fn in "${files[@]}"; do
    echo "Load $fn to $HOME"
    /bin/cp -f $fn $HOME
  done
}

dotfiles=('.vimrc' '.tmux.conf' '.tmux.conf.local' '.gitconfig')
OS=`uname -s`

if [ "$OS" = "Darwin" ]; then
  dotfiles+=('.zshrc')
  dotfiles+=('.bash_profile')
  load_all "${dotfiles[@]}"
elif [ "$OS" = "Linux" ]; then
  dotfiles+=('.bashrc')
  load_all "${dotfiles[@]}"
fi
