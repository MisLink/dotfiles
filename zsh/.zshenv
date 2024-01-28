export C_INCLUDE_PATH=/opt/local/include
export CPLUS_INCLUDE_PATH=/opt/local/include
export LIBRARY_PATH=/opt/local/lib

export ZSH_CUSTOM="$HOME/zsh_custom"
export LC_ALL="en_US.UTF-8"

export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

export EDITOR="vim"
export GPG_TTY=$(tty)
export VIRTUAL_ENV_DISABLE_PROMPT=1
export LESS='--chop-long-lines --incsearch --ignore-case --status-column --hilite-unread --LONG-PROMPT --RAW-CONTROL-CHARS'
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad
export LS_COLORS='di=1;36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
export BAT_THEME=Dracula

# mise
if [[ -o interactive ]]; then
  eval "$(/opt/local/bin/mise activate zsh)"
else
  eval "$(/opt/local/bin/mise activate zsh --shims)"
fi
