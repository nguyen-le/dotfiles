# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '/Users/nguyen/.zshrc'

autoload -U compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=800
SAVEHIST=800
bindkey -e
# End of lines configured by zsh-newuser-install
autoload -U colors && colors
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.linuxbrew/bin:$PATH"
export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"

eval "$(rbenv init -)"
export PS1="%{$fg[cyan]%}%n%{$fg[green]%}@%m:%{$fg[magenta]%}~%d%{$reset_color%}"$'\n'"%{$fg[red]%}$%{$reset_color%}"
#export CLICOLOR=1
#set LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh --color=auto'
alias cdruby='cd ~/Documents/ruby'
alias bashp='v .bash_profile'
alias food='open ~/Documents/home/eats_english.pdf'
alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'
alias rails4.0='rails _4.0.8_'
alias v='vim'
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=/usr/local/bin:$PATH


