# react apps and gatsby:
# fix for local HTTPS when developing,
# disabling editor opening on crash in server window.
#export NODE_TLS_REJECT_UNAUTHORIZED=0
export REACT_EDITOR="none"

# $WORDCHARS contains all characters to consider "words", in particular these are not considered 
# word boundaries when moving/killing words.
export WORDCHARS="*?_-[]~=&;!#$%^(){}<>"

export EDITOR="vim"
export TERM=xterm-256color

export PATH=/home/rik/bin:$PATH

#######
# emacs
export PATH="$HOME/.emacs.d/bin:$PATH"

#######
# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

####
# CD
setopt noautocd

#####
# zmv
autoload -U zmv
alias mmv='noglob zmv -W'

##########
# Globbing
setopt extendedglob   # Can use ^ (negation), ** and other when globbing
setopt nonomatch # linked to extendedglob, more intelligent handling of globbing on no match

#########
# History
setopt appendhistory 
setopt histignorealldups
setopt histignorespace 

bindkey '^R' history-incremental-pattern-search-backward # Reenable CTRL-R with vi-mode

##############
# Completition
# This allows for .. to ../ completion
#zstyle ':completion:*:cd:*' special-dirs ..
# Testing this for all commands
zstyle ':completion:*:*:*' special-dirs ..

#########
# Aliases
alias e='emacs'
alias v='vim'
alias nv='nvim'

# cd should follow symlinks.
alias cd='cd -P'

# Safety aliases
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

# color aliases
alias ls='ls --color=auto'
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=always'
alias fgrep='fgrep --color=always'
alias egrep='egrep --color=always'

alias tree='tree -C -I "node_modules|public"'

alias xterm='xterm -rv'

alias chrome='chromium --force-device-scale-factor=1'
