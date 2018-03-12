#!/usr/bin/env bash

set -e 

eval `ssh-agent` && ssh-add ~/.ssh/edac_ih_gmail_com.private

mkdir -p ~/.vim/bundle ~/.vim/autoload
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone git@github.com:majutsushi/tagbar.git ~/.vim/bundle/tagbar
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/rhysd/vim-color-spring-night ~/.vim/bundle/vim-color-spring-night
git clone https://github.com/tpope/vim-pathogen ~/.vim/bundle/vim-pathogen

ln -s ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
