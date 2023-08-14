# export
export PATH="$HOME/.golang/bin:$HOME/.local/bin:$PATH"
export ZSH_CUSTOM="$HOME/zsh_custom"
export LC_ALL="en_US.UTF-8"

export EDITOR="vim"
export GPG_TTY=$(tty)
export PYTHON_BUILD_CACHE_PATH="$HOME/.cache/asdf"
export RUBY_BUILD_CACHE_PATH="$HOME/.cache/asdf"
export VIRTUAL_ENV_DISABLE_PROMPT=1
export LESS='--chop-long-lines --incsearch --ignore-case --status-column --hilite-unread --LONG-PROMPT --RAW-CONTROL-CHARS'
export CLICOLOR=1

# ZSH Options
# http://zsh.sourceforge.net/Doc/Release/Options.html

# Changing Directories
# http://zsh.sourceforge.net/Doc/Release/Options.html#Changing-Directories
setopt auto_cd           # if a command isn't valid, but is a directory, cd to that dir
setopt auto_pushd        # make cd push the old directory onto the directory stack
setopt pushd_ignore_dups # don’t push multiple copies of the same directory onto the directory stack
setopt pushd_minus       # exchanges the meanings of ‘+’ and ‘-’ when specifying a directory in the stack

# Completions
# http://zsh.sourceforge.net/Doc/Release/Options.html#Completion-2
setopt always_to_end    # move cursor to the end of a completed word
setopt auto_list        # automatically list choices on ambiguous completion
setopt auto_menu        # show completion menu on a successive tab press
setopt auto_param_slash # if completed parameter is a directory, add a trailing slash
setopt complete_in_word # complete from both ends of a word
unsetopt menu_complete  # don't autoselect the first completion entry

# Expansion and Globbing
# http://zsh.sourceforge.net/Doc/Release/Options.html#Expansion-and-Globbing
setopt extended_glob # use more awesome globbing features
setopt glob_dots     # include dotfiles when globbing

# History
# http://zsh.sourceforge.net/Doc/Release/Options.html#History
setopt append_history         # append to history file
setopt extended_history       # write the history file in the ':start:elapsed;command' format
unsetopt hist_beep            # don't beep when attempting to access a missing history entry
setopt hist_expire_dups_first # expire a duplicate event first when trimming history
setopt hist_find_no_dups      # don't display a previously found event
setopt hist_ignore_all_dups   # delete an old recorded event if a new event is a duplicate
setopt hist_ignore_dups       # don't record an event that was just recorded again
setopt hist_ignore_space      # don't record an event starting with a space
setopt hist_no_store          # don't store history commands
setopt hist_reduce_blanks     # remove superfluous blanks from each command line being added to the history list
setopt hist_save_no_dups      # don't write a duplicate event to the history file
setopt hist_verify            # don't execute immediately upon history expansion
setopt inc_append_history     # write to the history file immediately, not when the shell exits
unsetopt share_history        # don't share history between all sessions

# Initialization
# http://zsh.sourceforge.net/Doc/Release/Options.html#Initialisation

# Input/Output
# http://zsh.sourceforge.net/Doc/Release/Options.html#Input_002fOutput
unsetopt clobber            # must use >| to truncate existing files
unsetopt correct            # don't try to correct the spelling of commands
unsetopt correct_all        # don't try to correct the spelling of all arguments in a line
unsetopt flow_control       # disable start/stop characters in shell editor
setopt interactive_comments # enable comments in interactive shell
unsetopt mail_warning       # don't print a warning message if a mail file has been accessed
setopt path_dirs            # perform path search even on command names with slashes
setopt rc_quotes            # allow 'Henry''s Garage' instead of 'Henry'\''s Garage'
unsetopt rm_star_silent     # ask for confirmation for `rm *' or `rm path/*'

# Job Control
# http://zsh.sourceforge.net/Doc/Release/Options.html#Job-Control
setopt auto_resume    # attempt to resume existing job before creating a new process
unsetopt bg_nice      # don't run all background jobs at a lower priority
unsetopt check_jobs   # don't report on jobs when shell exit
unsetopt hup          # don't kill jobs on shell exit
setopt long_list_jobs # list jobs in the long format by default
setopt notify         # report status of background jobs immediately

# Prompting
# http://zsh.sourceforge.net/Doc/Release/Options.html#Prompting
setopt prompt_subst # expand parameters in prompt variables

# Scripts and Functions
# http://zsh.sourceforge.net/Doc/Release/Options.html#Scripts-and-Functions

# Shell Emulation
# http://zsh.sourceforge.net/Doc/Release/Options.html#Shell-Emulation

# Shell State
# http://zsh.sourceforge.net/Doc/Release/Options.html#Shell-State

# Zle
# http://zsh.sourceforge.net/Doc/Release/Options.html#Zle
unsetopt beep          # be quiet!
setopt combining_chars # combine zero-length punctuation characters (accents) with the base character
setopt emacs           # use emacs keybindings in the shell

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

[[ -f "$HOME/.config/op/plugins.sh" ]] && source "$HOME/.config/op/plugins.sh" # op plugins
