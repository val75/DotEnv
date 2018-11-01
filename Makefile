# Variables
#TARGET_DIR = ~/test
TARGET_DIR = ~/.

all:
	@echo "\n"
	@echo "\t\tval's dotfiles"
	@echo "\n"

install:
	@cp .gitconfig.normal .gitconfig
	@cp .vimrc.normal .vimrc
	@rsync --verbose --recursive --exclude-from=rsync-exclude . $(TARGET_DIR)
	@ln -sf $(TARGET_DIR)/.tmux/tmux.conf $(TARGET_DIR)/.tmux.conf

r610:
	@cp .gitconfig.normal .gitconfig
	@rsync --verbose --recursive --exclude-from=rsync-exclude . $(TARGET_DIR)
	@ln -sf $(TARGET_DIR)/.tmux/tmux.conf.r610 $(TARGET_DIR)/.tmux.conf
