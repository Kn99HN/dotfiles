#!/bin/zsh

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

bindkey \^U backward-kill-line

# Stolen shamelessly from Oh-my-zsh
# https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/history.zsh
#
# History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$CFG_DIR/local/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000


# Stolen shamelessly from Oh-my-zsh
# https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/history.zsh
#
# History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion before running
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

setopt PROMPT_SUBST
autoload -U colors && colors # Enable colors

PROMPT="\
%{$fg[magenta]%}\$(prompt_context)$reset_color\
%{$fg[cyan]%}%c%{$reset_color%} \
\$(get_branch)%(?:%{$fg[green]%}#:%{$fg[red]%}#)%{$reset_color%} "

prompt_context() {
  if [[ -n "$SSH_CLIENT" ]]; then
      echo -n "%n "
  elif [[ "$USER" == "$(whoami)" ]]; then
    echo -n ""
  else
    echo -n "%n "
  fi
}

function get_branch() {
  ref=$(command git rev-parse --abbrev-ref HEAD) 2> /dev/null || return 0
  STATUS=$(command git status -s --ignore-submodules=dirty) 2> /dev/null || return 0
  if [[ -n $STATUS ]]; then
    echo -n "%{$fg[red]%}${ref} "
  else
    echo -n "%{$fg[yellow]%}${ref} "
  fi
}

alias ls='ls -1 --color=auto'

