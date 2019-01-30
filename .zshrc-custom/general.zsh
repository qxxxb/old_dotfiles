# history file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

# history command configuration {{{

# record timestamp of command in HISTFILE
setopt extended_history

# delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_expire_dups_first

# ignore duplicated commands history list
setopt hist_ignore_dups

# ignore commands that start with space
setopt hist_ignore_space

# show command with history expansion to user before running it
setopt hist_verify

# add commands to HISTFILE in order of execution
setopt inc_append_history

# share command history data
setopt share_history

# }}}

# from oh-my-zsh {{{

# ls colors
autoload -U colors && colors

# Enable ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

if [[ "$DISABLE_LS_COLORS" != "true" ]]; then
    # For GNU ls, we use the default ls color theme. They can later be overwritten by themes.
    if [[ -z "$LS_COLORS" ]]; then
      (( $+commands[dircolors] )) && eval "$(dircolors -b)"
    fi

    ls --color -d . &>/dev/null && alias ls='ls --color=tty' || \
        { ls -G . &>/dev/null && alias ls='ls -G' }

    # Take advantage of $LS_COLORS for completion as well.
    zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
fi

# }}}

# automatically cd if a directory name is given
setopt auto_cd

# FZF
export FZF_DEFAULT_OPTS="--height 50% --reverse --border --prompt=\ "

# tab width
tabs -4

# prompt
autoload -U promptinit; promptinit
prompt pure
