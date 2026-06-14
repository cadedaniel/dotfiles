#!/usr/bin/env bash

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p ~/.ssh
chmod 700 ~/.ssh

ln -sfn "$DOTFILES_DIR/ssh/rc" ~/.ssh/rc
chmod 600 "$DOTFILES_DIR/ssh/rc"
