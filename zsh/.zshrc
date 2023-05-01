# zsh
export PATH="$HOME/.golang:$HOME/.local/bin:$PATH"
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM="$HOME/zsh_custom"
export FZF_BASE=/opt/local/share/fzf/
export LC_ALL="en_US.UTF-8"

ZSH_THEME="ys"

plugins=(fzf pdm rust shell-proxy npm docker docker-compose direnv macos pip asdf extract z.lua zsh-completions zsh-autosuggestions zsh-syntax-highlighting per-directory-history)

source $ZSH/oh-my-zsh.sh

# export
export EDITOR="vim"
export GPG_TTY=$(tty)
export PYTHON_BUILD_CACHE_PATH="$HOME/.cache/asdf"
export RUBY_BUILD_CACHE_PATH="$HOME/.cache/asdf"
export VIRTUAL_ENV_DISABLE_PROMPT=1
export LESS='--chop-long-lines --incsearch --ignore-case --status-column --hilite-unread --LONG-PROMPT --RAW-CONTROL-CHARS'
export HISTORY_START_WITH_GLOBAL=true
# source
test -e "${HOME}/.alias" && source "${HOME}/.alias"
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
test -e "${HOME}/.asdf/plugins/java/set-java-home.zsh" && source "${HOME}/.asdf/plugins/java/set-java-home.zsh"

# prompt
# PROMPT='$(kube_ps1)'$PROMPT

# completions
autoload -U bashcompinit && bashcompinit
eval "$(register-python-argcomplete-3.11 pipx)"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ${HOME}/.config/tabtab/zsh/__tabtab.zsh ]] && . ${HOME}/.config/tabtab/zsh/__tabtab.zsh || true

# opam configuration
[[ ! -r ${HOME}/.opam/opam-init/init.zsh ]] || source ${HOME}/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

[ -f "${HOME}/.ghcup/env" ] && source "${HOME}/.ghcup/env" # ghcup-env

[ -f "${HOME}/.config/op/plugins.sh" ] && source "${HOME}/.config/op/plugins.sh" # op plugins
