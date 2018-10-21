# macOS
# need `xcode-select --install` before

if ! which brew &>/dev/null; then
    echo "Install homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
cd "$(brew --repo)"
git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git
brew update

brew install ctags
brew install zsh
brew install vim
brew install git
brew install trash
brew install pandoc
brew install wrk
brew install httpie
brew install mycli
brew install pgcli

brew cask install docker
brew cask install iina
brew cask install cakebrew
brew cask install qlcolorcode qlimagesize qlmarkdown qlstephen quicklook-json
