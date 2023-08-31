export C_INCLUDE_PATH=/opt/local/include
export CPLUS_INCLUDE_PATH=/opt/local/include
export LIBRARY_PATH=/opt/local/lib

export PATH="$HOME/.local/share/rtx/shims:$PATH"

export EDITOR="vim"
export GPG_TTY=$(tty)
export PYTHON_BUILD_CACHE_PATH="$HOME/.cache/asdf"
export RUBY_BUILD_CACHE_PATH="$HOME/.cache/asdf"
export VIRTUAL_ENV_DISABLE_PROMPT=1
export LESS='--chop-long-lines --incsearch --ignore-case --status-column --hilite-unread --LONG-PROMPT --RAW-CONTROL-CHARS'
export CLICOLOR=1
export FZF_DEFAULT_COMMAND="fd --hidden --follow"
_fzf_compgen_path() {
  fd --hidden --follow . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow . "$1"
}
