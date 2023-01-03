TODO
* safe way for ssh key?

# One-liners
* Install zsh and install dotfiles: `yes | sudo apt install zsh ; cd ~ && git clone git@github.com:cadedaniel/dotfiles.git && cd dotfiles && ./install-vim.sh && echo "no" | ./install-zsh.sh`
* Clone and install `echo yes | git clone git@github.com:cadedaniel/dotfiles.git ; pushd dotfiles; ./setup-script ; ./setup-most-common-repos ; popd`
