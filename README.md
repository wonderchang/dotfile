# env-config

Configuration for my working staging. I am used to working on Mac, and sometimes, if neccessary, employing Linux when deploying. Even if both are Unix-like system, they are still different each other. In order to reserve native Linux environment and be compatible in general Linux machine as possible as avoiding troubleshooting. I've separated the Linux configuration from Mac. 

* Emulator: Built-in (Linux), iTerm2 (MacOSX)
* Shell: bash (Linux), oh-my-zsh (MacOSX)
* Multiplexer: tmux
* Editor: vim
* VCS: git

## Mac

Install tmux

	$ brew install tmux

Install [powerline](https://powerline.readthedocs.io/en/latest/) schema

	$ pip install powerline-status
	$ brew install macvim --env-std --with-override-system-vim
	
Install powerline fonts

	$ git clone git@github.com:powerline/fonts.git	$ cd powerline && ./install.sh

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

	$ sudo apt-get install ibevent-dev libncurses-dev
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

	$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    $ vi
    
Type `:PluginInstall` to install all the registered plugins

## tmux

reference to [https://github.com/gpakosz/.tmux](https://github.com/gpakosz/.tmux)