# The following lines were added by compinstall
zstyle :compinstall filename '/home/julien/.zshrc'

autoload -Uz promptinit
promptinit
autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
export PATH=$PATH:/usr/local/texlive/2017/bin/x86_64-linux:/home/julien/.gem/ruby/2.5.0/bin:/home/julien/.gem/ruby/2.5.0
export XDG_RUNTIME_DIR=/run/user/1000
export GOPATH=$HOME/go
source /home/julien/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen theme specious/bender

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme agnoster

# Tell Antigen that you're done.
antigen apply

alias la='ls -a'
alias emax='startx /usr/bin/emacs -fs'
alias xi3='startx /usr/bin/i3'
alias xute='startx /usr/bin/qutebrowser :fullscreen'
alias df='df -h'
alias du='du -h'
alias xclip='xclip -selection c'

export DEFAULT_USER=julien
promp_context(){}

export EDITOR='vim'

bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

export TERM=rxvt-unicode-256color
export INPUTRC=~/.inputrc
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
