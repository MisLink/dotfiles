# export
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.golang/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# options
source $ZSH_CUSTOM/config/options.zsh
# keybindings
source $ZSH_CUSTOM/config/keybindings.zsh
# functions
source $ZSH_CUSTOM/config/functions.zsh

# autoload
fpath=("${HOME}/zsh_custom/.zfunc" "${HOME}/zsh_custom/plugins/zsh-completions/src" $fpath)
zmodload -i zsh/complist
autoload -U compinit && compinit

# completions
autoload -U +X bashcompinit && bashcompinit
eval "$(register-python-argcomplete-3.11 pipx)"

# tabtab source for packages
# uninstall by removing these lines
[[ -f $HOME/.config/tabtab/zsh/__tabtab.zsh ]] && . $HOME/.config/tabtab/zsh/__tabtab.zsh || true

# plugins
[[ -f "$HOME/.config/op/plugins.sh" ]] && source "$HOME/.config/op/plugins.sh" # op plugins
# opam configuration
[[ ! -r $HOME/.opam/opam-init/init.zsh ]] || source $HOME/.opam/opam-init/init.zsh >/dev/null 2>/dev/null
[[ -f "$HOME/.ghcup/env" ]] && source "$HOME/.ghcup/env" # ghcup-env
# starship
eval "$(starship init zsh)"
# mise
eval "$(mise completion zsh)"
eval "$(mise activate zsh)"
# direnv
# eval "$(direnv hook zsh)"
# zoxide
eval "$(zoxide init zsh)"
# fzf
source /opt/local/share/fzf/shell/key-bindings.zsh
source /opt/local/share/fzf/shell/completion.zsh
#z.lua
# eval "$(lua ${ZSH_CUSTOM}/plugins/z.lua/z.lua --init zsh once enhanced)"
# zsh-autosuggestions
source ${ZSH_CUSTOM}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh-syntax-highlighting
source ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
