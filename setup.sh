#!/bin/zsh

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

if [[ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions ]]; then
    echo "Install zsh-completions..."
    git clone https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
fi

mkdir ~/.oh-my-zsh/custom/themes/
cp -v zsh/ys.zsh-theme ~/.oh-my-zsh/custom/themes/
cp -v zsh/alias ~/.alias
cp -v zsh/zshrc ~/.zshrc

# vim
cp -v vim/vimrc ~/.vimrc

# tmux
cp -v tmux/tmux.conf ~/.tmux.conf

# gitconfig
cp -v git/gitconfig ~/.gitconfig

# ssh
cp -v ssh/config ~/.ssh/config
mkdir -p ~/.ssh/socks

# python
mkdir -p ~/.config/pip
cp -v python/flake8 ~/.flake8
cp -v python/pip.conf ~/.config/pip/pip.conf
python3 -m pip install -r python/tools.txt --user
