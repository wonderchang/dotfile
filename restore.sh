#!/bin/bash

echo "Remove the config file of zsh"
/bin/rm -rf $HOME/.oh-my-zsh $HOME/.zsh-update $HOME/.zsh_history $HOME/.zshrc

echo "Uninstall oh-my-zsh"
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/uninstall.sh)"

echo "Apply the bash config"
source $HOME/.bash_profile

echo "Restore to bash shell"
exec bash
