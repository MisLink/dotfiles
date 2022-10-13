# zsh
export PATH="$HOME/.cabal/bin:/$HOME/.ghcup/bin:$HOME/.golang:$HOME/.local/bin:$PATH"
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM="$HOME/zsh_custom"
export FZF_BASE=/opt/local/share/fzf/

ZSH_THEME="ys"

plugins=(nerdctl fzf pdm rust shell-proxy npm docker docker-compose macos pip asdf extract z.lua zsh-completions zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# export
export LC_ALL="en_US.UTF-8"
export EDITOR="vim"
export GPG_TTY=$(tty)
export PYTHON_BUILD_CACHE_PATH="$HOME/.cache/asdf"
export VIRTUAL_ENV_DISABLE_PROMPT=1
export LESS='--chop-long-lines --incsearch --ignore-case --status-column --hilite-unread --LONG-PROMPT --RAW-CONTROL-CHARS'
# source
test -e "${HOME}/.alias" && source "${HOME}/.alias"
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
test -e "${HOME}/.asdf/plugins/java/set-java-home.zsh" && source "${HOME}/.asdf/plugins/java/set-java-home.zsh"

# prompt
# PROMPT='$(kube_ps1)'$PROMPT

# completions
autoload -U compinit && compinit
eval "$(register-python-argcomplete pipx)"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true
