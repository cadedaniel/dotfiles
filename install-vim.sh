#!/usr/bin/env bash

#set -e 

mkdir -p ~/.vim/bundle ~/.vim/autoload
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/rhysd/vim-color-spring-night ~/.vim/bundle/vim-color-spring-night

# TODO use modified version of plugin that doesn't slow down vim with compiler.
#git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
git clone https://github.com/tpope/vim-pathogen ~/.vim/bundle/vim-pathogen

ln -s ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc

if [ -z "${DOTFILE_TMUX_BASIC_COLORS}" ]; then
    ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
else
    echo 'Using basic tmux colors'
    ln -s ~/dotfiles/.tmux-basiccolor.conf ~/.tmux.conf
fi

ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -s ~/dotfiles/.git_commit_message_template ~/.git_commit_message_template
