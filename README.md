# dotfile

My familiar and productive workspace configuration:

* Shell: bash
* Multiplexer: tmux
* Editor: vim
* VCS: git

One-command build

    $ make

One-command clean

    $ make clean


## Mac

Install tmux

    $ brew install tmux

Install [powerline](https://powerline.readthedocs.io/en/latest/) schema

    $ pip install powerline-status
    $ brew install macvim --env-std --with-override-system-vim
	
Install powerline fonts

    $ git clone git@github.com:powerline/fonts.git
    $ cd fonts && ./install.sh

Install oh-my-zsh

    $ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	
Load configuration (oh-my-zsh, tmux, vim, git)

    $ ./load.sh
	
Load the iTerm2 setting profile

1. Go Preference > General
2. Check "Load preference from a custom folder or URL" and give the repo path at the bottom
3. Also, Check "Save changes to folder when iTerm2 quits"

## Linux (Ubuntu)

Install [tmux](https://tmux.github.io/) from source code

    $ sudo apt-get install libevent-dev libncurses5-dev
    $ wget https://github.com/tmux/tmux/releases/download/2.2/tmux-2.2.tar.gz
    $ tar zxvf tmux-2.2.tar.gz
    $ cd tmux-2.2 && ./configure
    $ make && sudo make install
	
Install [powerline](https://powerline.readthedocs.io/en/latest/) schema

	  $ sudo pip install powerline-status
	
Load configuration (.bashrc, tmux, vim, git)

	  $ ./load.sh

## Vim

Install [vim-plug](https://github.com/junegunn/vim-plug), a vim plugin manager

    $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    $ vi
    
Type `:PluginInstall` to install all the registered plugins

## Update repo from the local configuration

    $ ./update.sh

The updated target files contains `.vimrc`, `.tmux.conf`, `.tmux.conf.local` and `.gitconfig`.

## Reference

* [https://github.com/gpakosz/.tmux](https://github.com/gpakosz/.tmux)
