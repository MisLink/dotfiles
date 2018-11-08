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

brew install aria2
brew install ctags
brew install zsh
brew install vim
brew install git
brew install fzf
brew install trash
brew install pandoc
brew install wrk
brew install httpie
brew install mycli
brew install pgcli
brew install cookiecutter

brew cask install google-chrome
brew cask install visual-studio-code
brew cask install authy
brew cask install typora
brew cask install gitkraken
brew cask install jetbrains-toolbox
brew cask install dash
brew cask install microsoft-office
brew cask install steam
brew cask install bettertouchtool
brew cask install appcleaner
brew cask install yinxiangbiji
brew cask install shadowsocksx-ng
brew cask install the-unarchiver
brew cask install onedrive
brew cask install iterm2
brew cask install battle-net
brew cask install jietu
brew cask install itsycal
brew cask install kindle
brew cask install neteasemusic
brew cask install qqmusic
brew cask install qq
brew cask install wechat
brew cask install parallels
brew cask install docker
brew cask install iina
brew cask install cakebrew
brew cask install qlcolorcode qlimagesize qlmarkdown qlstephen quicklook-json
