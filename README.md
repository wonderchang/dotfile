# env-config

Configuration for my working staging. I am used to working on Mac, and sometimes, if neccessary, employing Linux when deploying. Even if both are Unix-like system, they are still different each other. In order to reserve native Linux environment and be compatible in general Linux machine as possible as avoiding troubleshooting. I've separated the Linux configuration from Mac. The table below is my 

**Different part**

Plaform | Linux | Mac OSX
------------ | ------------ | -------------
Emulator | Built-in | iTerm2
Shell | bash | oh-my-zsh

**Common part**

* Multiplexer: tmux
* Editor: vim
* VCS: git

## Mac

Install [Homebrew](http://brew.sh/)

	$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Install python & pip

	$ brew install python

Install tmux

	$ brew install tmux

Install [powerline](https://powerline.readthedocs.io/en/latest/) schema

	$ pip install powerline-status

Install oh-my-zsh

	$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	
Load configuration (oh-my-zsh, tmux, vim, git)

	$ ./load.sh
	
Load the iTerm2 setting profile

1. Go Preference > General
2. Check "Load preference from a custom folder or URL" and give the repo path at the bottom
3. Also, Check "Save changes to folder when iTerm2 quits"

## Common part

### Vim

