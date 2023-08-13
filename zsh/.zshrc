# export
export PATH="$HOME/.golang/bin:$HOME/.local/bin:$PATH"
export ZSH_CUSTOM="$HOME/zsh_custom"
export FZF_BASE=/opt/local/share/fzf/
export LC_ALL="en_US.UTF-8"

export EDITOR="vim"
export GPG_TTY=$(tty)
export PYTHON_BUILD_CACHE_PATH="$HOME/.cache/asdf"
export RUBY_BUILD_CACHE_PATH="$HOME/.cache/asdf"
export VIRTUAL_ENV_DISABLE_PROMPT=1
export LESS='--chop-long-lines --incsearch --ignore-case --status-column --hilite-unread --LONG-PROMPT --RAW-CONTROL-CHARS'
export CLICOLOR=1

setopt multios
setopt long_list_jobs
setopt interactivecomments
# history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt share_history
# directories
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus
# completions
unsetopt menu_complete
unsetopt flowcontrol
setopt auto_menu
setopt complete_in_word
setopt always_to_end
# completions
WORDCHARS=''
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]-_}={[:upper:][:lower:]_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u $USERNAME -o pid,user,comm -w -w"
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories
zstyle ':completion:*' use-cache yes
zstyle ':completion:*:*:*:users' ignored-patterns '_*'
zstyle '*' single-ignored show

fpath=("${HOME}/zsh_custom/.zfunc" "${HOME}/zsh_custom/plugins/zsh-completions/src" $fpath)
autoload -U +X bashcompinit && bashcompinit
autoload -U compinit && compinit

# starship
eval "$(starship init zsh)"
# rtx
eval "$(rtx completion zsh)"
eval "$(rtx activate zsh)"
# fzf
source /opt/local/share/fzf/shell/key-bindings.zsh
source /opt/local/share/fzf/shell/completion.zsh
# direnv
eval "$(direnv hook zsh)"
#z.lua
eval "$(lua ${ZSH_CUSTOM}/plugins/z.lua/z.lua --init zsh once enhanced)"
# zsh-autosuggestions
source ${ZSH_CUSTOM}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh-syntax-highlighting
source ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# alias
[[ -f "$HOME/.alias" ]] && source "$HOME/.alias"

# completions
eval "$(register-python-argcomplete-3.11 pipx)"

# tabtab source for packages
# uninstall by removing these lines
[[ -f $HOME/.config/tabtab/zsh/__tabtab.zsh ]] && . $HOME/.config/tabtab/zsh/__tabtab.zsh || true

# opam configuration
[[ ! -r $HOME/.opam/opam-init/init.zsh ]] || source $HOME/.opam/opam-init/init.zsh >/dev/null 2>/dev/null

[[ -f "$HOME/.ghcup/env" ]] && source "$HOME/.ghcup/env" # ghcup-env

[[ -f "$HOME/.config/op/plugins.sh" ]] && source "$HOME/.config/op/plugins.sh" # op plugins

[[ -f "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"
