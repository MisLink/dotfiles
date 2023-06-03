script="$(pdm completion zsh | ghead -n -2)"

load="
if [ "$funcstack[1]" = "_pdm" ]; then
    _pdm "$@"
else
    compdef _pdm pdm
fi"

eval "${script}${load}"
