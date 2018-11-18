SHELL := /bin/bash

VERSION_TMUX = 2.2
VERSION_VIM_PLUG = 0.10.0
VERSION_BASH_GIT_PROMPT = 2.7.1

build: vim tmux git bash

clean: clean-vim clean-tmux clean-git clean-bash

os=$(shell uname -s)

define disable_dotfile
	if [ -f $(1) ] && [ ! -h $(1) ]; \
		then mv -v $(1) $(1).bak; \
		else rm -fv $(1); fi
endef

define enable_dotfile
	$(call disable_dotfile,$(2))
	ln -fsv $(1) $(2)
endef

###############################################################################
# bash
###############################################################################

bash_git_prompt_dir = $(HOME)/.bash-git-prompt

bash_profile = .bash_profile
src_bash_profile = $(PWD)/$(bash_profile)
dst_bash_profile = $(HOME)/$(bash_profile)

profile = .profile
src_profile = $(PWD)/$(profile)
dst_profile = $(HOME)/$(profile)

bashrc = .bashrc
src_bashrc = $(PWD)/$(bashrc)
dst_bashrc = $(HOME)/$(bashrc)

bash_git_prompt_theme = WonderChang.bgptheme
src_bash_git_prompt_theme = $(PWD)/$(bash_git_prompt_theme)
dst_bash_git_prompt_theme = $(bash_git_prompt_dir)/themes/$(bash_git_prompt_theme)

install-bash-git-prompt:
ifneq ("$(wildcard $(bash_git_prompt_dir))","")
	@echo 'bash-git-prompt had been installed! ($(bash_git_prompt_dir))'
else
	$(eval tmp_src = bash-git-prompt-$(VERSION_BASH_GIT_PROMPT))
	$(eval tmp_tarball = $(tmp_src).tar.gz)
	curl -L -o $(tmp_tarball) \
		https://github.com/magicmonty/bash-git-prompt/archive/$(VERSION_BASH_GIT_PROMPT).tar.gz
	tar zxvf $(tmp_tarball)
	rsync -av $(tmp_src)/ $(bash_git_prompt_dir)
	rm -rfv $(tmp_src) $(tmp_tarball)
endif

enable-bash-profile:
ifeq ($(os),Darwin)
	$(call enable_dotfile,$(src_bash_profile),$(dst_bash_profile))
else
	$(call enable_dotfile,$(src_profile),$(dst_profile))
	$(call enable_dotfile,$(src_bashrc),$(dst_bashrc))
endif

disable-bash-profile:
ifeq ($(os),Darwin)
	$(call disable_dotfile,$(dst_bash_profile))
else
	$(call disable_dotfile,$(dst_profile))
	$(call disable_dotfile,$(dst_bashrc))
endif

bash: install-bash-git-prompt enable-bash-profile
	$(call enable_dotfile,\
		$(src_bash_git_prompt_theme),$(dst_bash_git_prompt_theme))
	bash --login

clean-bash: disable-bash-profile
	bash --login
	rm -rfv $(bash_git_prompt_dir)

###############################################################################
# vim
###############################################################################

src_vimrc = $(PWD)/.vimrc
dst_vimrc = $(HOME)/.vimrc

vimdir = $(HOME)/.vim

vim_plug = $(vimdir)/autoload/plug.vim
vim_plug_dir = $(vimdir)/plugged

install-vim-plug:
	curl -fLo $(vim_plug) \
		--create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/$(VERSION_VIM_PLUG)/plug.vim

enable-vimrc:
	$(call enable_dotfile,$(src_vimrc),$(dst_vimrc))
	vim -c 'PlugInstall' -c 'qa!'

disable-vimrc:
	$(call disable_dotfile,$(dst_vimrc))

uninstall-vim-plug:
	rm -rfv $(vim_plug) $(vim_plug_dir)

vim: install-vim-plug enable-vimrc

clean-vim: uninstall-vim-plug disable-vimrc

###############################################################################
# tmux
###############################################################################

default_tmux_config = .tmux.conf
src_default_tmux_config = $(PWD)/$(default_tmux_config)
dst_default_tmux_config = $(HOME)/$(default_tmux_config)

customized_tmux_config = .tmux.conf.local
src_customized_tmux_config = $(PWD)/$(customized_tmux_config)
dst_customized_tmux_config = $(HOME)/$(customized_tmux_config)

tmux_dir = $(HOME)/.tmux

install-tmux:
ifeq ($(os),Linux)
	sudo apt-get install -y libevent-dev libncurses5-dev
endif
	$(eval tmp_src = tmux-$(VERSION_TMUX))
	$(eval tmp_tarball = $(tmp_src).tar.gz)
	curl -OL \
		https://github.com/tmux/tmux/releases/download/$(VERSION_TMUX)/$(tmp_tarball)
	tar zxvf $(tmp_tarball)
	rsync -av $(tmp_src)/ $(tmux_dir)
	cd $(tmux_dir) && ./configure && make && sudo make install
	rm -rfv $(tmp_src) $(tmp_tarball)

enable-tmux:
	$(call enable_dotfile,\
		$(src_default_tmux_config),$(dst_default_tmux_config))
	$(call enable_dotfile,\
		$(src_customized_tmux_config),$(dst_customized_tmux_config))

disable-tmux:
	$(call disable_dotfile,$(dst_default_tmux_config))
	$(call disable_dotfile,$(dst_customized_tmux_config))

uninstall-tmux:
	cd $(tmux_dir) && sudo make uninstall
	rm -rfv $(tmux_dir)

tmux: install-tmux enable-tmux

clean-tmux: uninstall-tmux disable-tmux

###############################################################################
# git
###############################################################################

src_gitconfig = $(PWD)/.gitconfig
dst_gitconfig = $(HOME)/.gitconfig

git:
	$(call enable_dotfile,$(src_gitconfig),$(dst_gitconfig))

clean-git:
	$(call disable_dotfile,$(dst_gitconfig))


# vi:ts=4:sw=4:cc=80
