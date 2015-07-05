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
#export PS1="%{$fg[cyan]%}%n%{$fg[green]%}@%m:%{$fg[magenta]%}%d%{$reset_color%}"$'\n'"%{$fg[red]%}$%{$reset_color%}"
export CLICOLOR=1
set LSCOLORS=ExFxBxDxCxegedabagacad

echo -ne "\033]0;${PWD/#$HOME/~}\007"

alias dev='grunt dev'
alias lyn='learnyounode'
alias ls='ls -GFh'
alias bashp='v .bash_profile'
alias cdruby='cd ~/Documents/ruby'
alias food='open ~/Documents/home/eats_english.pdf'
alias ga='git add'
alias gc='git commit -m'
alias gd='git diff'
alias gg='git grep'
alias gr='git rebase -i'
alias gs='git status'
alias j='jobs'
alias j1='%1'
alias j2='%2'
alias j3='%3'
alias j4='%4'
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'
alias rails4.0='rails _4.0.8_'
alias v='/usr/bin/vim'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=/usr/local/bin:$PATH

source ~/.git-prompt.sh
#source ~/.git-completion.sh
#export PS1="%{$fg[cyan]%}[%n@%m %c$(__git_ps1 ' (%s)')]\$ "
#setopt PROMPT_SUBST ; PS1="%{$fg[cyan]%}%n%{$fg[green]%}@%m:%{$fg[magenta]%}%d""%{$fg[yellow]%}""$(__git_ps1 " (%s)")"$'\n'"%{$fg[red]%}$%{$reset_color%}"
precmd () { if [[ $VIRTUAL_ENV ]]; then printf "$fg[red](venv) "; fi; __git_ps1 %{$fg[cyan]%}"%n"%{$fg[green]%}"@%m:"%{$fg[yellow]%} %{$fg[magenta]%}" %~""%{$fg[red]%}"$'\n'"$"%{$reset_color%}" %s"}
