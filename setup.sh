#!/bin/zsh
set -e -o pipefail

DIR=`dirname "$0"`

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

mkdir -vp ~/.ssh/socks
mkdir -vp ~/.config/pip
mkdir -vp ~/.oh-my-zsh/custom/themes
cp -v $DIR/zsh/ys.zsh-theme ~/.oh-my-zsh/custom/themes/
cp -v $DIR/zsh/alias ~/.alias
cp -v $DIR/zsh/zshrc ~/.zshrc
cp -v $DIR/vim/vimrc ~/.vimrc
cp -v $DIR/tmux/tmux.conf ~/.tmux.conf
cp -v $DIR/git/gitconfig ~/.gitconfig
cp -v $DIR/ssh/config ~/.ssh/config
cp -v $DIR/python/flake8 ~/.flake8
cp -v $DIR/python/pip.conf ~/.config/pip/pip.conf

# macOS
if [[ "$(uname)" == "Darwin" ]]; then
    . $DIR/homebrew.sh
fi

# asdf
. $DIR/asdf.sh

`~/.asdf/bin/asdf which python` -m pip install --user -r $DIR/python/lang-tools.txt
