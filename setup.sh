#!/bin/zsh

# zsh
if [[ ! -d ~/.oh-my-zsh ]]; then
    echo "Install oh-my-zsh ..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

cp -v zsh/ys.zsh-theme ~/.oh-my-zsh/custom/themes
cp -v zsh/alias ~/.alias
cp -v zsh/zshrc ~/.zshrc
source ~/.zshrc

# vim
cp -v vim/vimrc ~/.vimrc

# tmux
cp -v tmux/tmux.conf ~/.tmux.conf

# gitconfig
cp -v git/gitconfig ~/.gitconfig

# ssh
cp -v ssh/config ~/.ssh/config
mkdir -p ~/.ssh/socks
