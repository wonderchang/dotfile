#!/bin/zsh
echo "Load zsh config file"
/bin/cp -f .zshrc $HOME

echo "Apply the zsh configuration"
source $HOME/.zshrc
