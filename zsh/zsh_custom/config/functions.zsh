# macos
alias cdf='cd "$(osascript -e "tell application \"Finder\" to POSIX path of (insertion location as alias)")"'
alias ofd='open -a Finder .'
# ls
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'
# directories
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'
alias -- -='cd -'
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'
alias md='mkdir -p'
alias rd=rmdir

alias del="trash -v"
alias grep="grep -Ei"
alias df="df -h"
alias du="du -h"
alias j="z"
alias vi="vim"
alias pip-update="pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U"
alias pip-delete="pip freeze | grep -v '^-e' | xargs pip uninstall -y"
alias pa="source ./.venv/bin/activate"
# kitty
alias s="kitty +kitten ssh"

_fzf_compgen_path() {
  fd --hidden --follow . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow . "$1"
}

function man-preview() {
  local page
  for page in "${(@f)"$(man -w $@)"}"; do
    command mandoc -Tpdf $page | open -f -a Preview
  done
}

function new_mise() {
  echo "[settings]\nenv_file = \".env\"" > .mise.toml
  touch .env
}
