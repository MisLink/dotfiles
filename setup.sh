#!/bin/zsh

# vim
cp -v vim/vimrc ~/.vimrc

# tmux
cp -v tmux/tmux.conf ~/.tmux.conf

# gitconfig
cp -v git/gitconfig ~/.gitconfig

# ssh
cp -v ssh/config ~/.ssh/config
mkdir -p ~/.ssh/socks

# zsh
if [[ ! -d ~/.oh-my-zsh ]]; then
    echo "Install oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [[ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ]]; then
    echo "Install zsh-autosuggestions..."
    git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [[ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ]]; then
    echo "Install zsh-syntax-highlighting..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

cp -v zsh/ys.zsh-theme ~/.oh-my-zsh/custom/themes
cp -v zsh/alias ~/.alias
cp -v zsh/zshrc ~/.zshrc
source ~/.zshrc
