#!/usr/bin/env bash

set -e

# Need to install zsh on your own, using apt-get or whatever. sudo probably required :(
echo "Not installing zsh itself, need to upgrade dotfiles to use chef or something"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/robbyrussell/gianu/g' ~/.zshrc
echo "export EDITOR=vim" >> ~/.zshrc

#https://unix.stackexchange.com/questions/179173/make-less-highlight-search-patterns-instead-of-italicizing-them
echo "export TERM=xterm-256color" >> ~/.zshrc

# DIY pbcopy on remote hosts.
echo "alias pbcopy='nc -N localhost 2000'" >> ~/.zshrc
echo "alias ag='ag --hidden'" >> ~/.zshrc
