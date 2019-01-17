#!/usr/bin/env bash
# need to install zsh itself from your favorite package manager.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/robbyrussell/gianu/g' ~/.zshrc
echo "export EDITOR=vim" >> ~/.zshrc

#https://unix.stackexchange.com/questions/179173/make-less-highlight-search-patterns-instead-of-italicizing-them
echo "export TERM=xterm-256color" >> ~/.zshrc
