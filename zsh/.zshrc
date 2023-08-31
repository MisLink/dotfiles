# export
export ZSH_CUSTOM="$HOME/zsh_custom"
export PATH="$HOME/.golang/bin:$HOME/.local/bin:$PATH"
export LC_ALL="en_US.UTF-8"

source $ZSH_CUSTOM/config/options.zsh

# keybindings
source $ZSH_CUSTOM/config/keybindings.zsh

fpath=("${HOME}/zsh_custom/.zfunc" "${HOME}/zsh_custom/plugins/zsh-completions/src" $fpath)
autoload -U +X bashcompinit && bashcompinit
zmodload -i zsh/complist
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

# functions
source $ZSH_CUSTOM/config/functions.zsh

# completions
eval "$(register-python-argcomplete-3.11 pipx)"

# tabtab source for packages
# uninstall by removing these lines
[[ -f $HOME/.config/tabtab/zsh/__tabtab.zsh ]] && . $HOME/.config/tabtab/zsh/__tabtab.zsh || true

[[ -f "$HOME/.config/op/plugins.sh" ]] && source "$HOME/.config/op/plugins.sh" # op plugins

# opam configuration
[[ ! -r $HOME/.opam/opam-init/init.zsh ]] || source $HOME/.opam/opam-init/init.zsh >/dev/null 2>/dev/null

[[ -f "$HOME/.ghcup/env" ]] && source "$HOME/.ghcup/env" # ghcup-env

[[ -f "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"
