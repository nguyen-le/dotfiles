# The following lines were added by compinstall
autoload -U compinit
compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
#zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
#zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle :compinstall filename '/Users/nguyen/.zshrc'
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=800
SAVEHIST=800
bindkey -e
# End of lines configured by zsh-newuser-install
# Load zsh-syntax-highlighting.
#source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Load zsh-autosuggestions.
#source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh
# Enable autosuggestions automatically.
#zle-line-init() {
    #zle autosuggest-start
#}
#zle -N zle-line-init
#bindkey '^T' autosuggest-toggle
#bindkey '^f' vi-forward-word
#export AUTOSUGGESTION_HIGHLIGHT_COLOR='fg=7'

autoload -U colors && colors
#export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.linuxbrew/bin:$PATH"
export PATH="$HOME/.linuxbrew/sbin:$PATH"
export PATH="/home/nle/.linuxbrew/sbin:$PATH"
#export GOPATH="$HOME/go"
export GOROOT="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
#export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"

#eval "$(rbenv init -)"
#export PS1="%{$fg[cyan]%}%n%{$fg[green]%}@%m:%{$fg[magenta]%}%d%{$reset_color%}"$'\n'"%{$fg[red]%}$%{$reset_color%}"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
#export LSCOLORS=ExFxBxExCxegedabagacad
#export LSCOLORS=ExGxFxDxCxDxDxhbhdacEc
echo -ne "\033]0;${PWD/#$HOME/~}\007"

alias bashp='v .bash_profile'
alias cdruby='cd ~/Documents/ruby'
alias d='sudo docker'
alias dev='grunt dev'
alias food='open ~/Documents/home/eats_english.pdf'
alias ga='git add'
alias gc='git commit -m'
alias gd='git diff'
alias vdiff='nv -R <(git diff head^ head)'
alias gg='git grep'
alias gr='git rebase -i'
alias grr='git rebase -i head^^'
alias gs='git status'
alias gsu='git submodule update --init'
alias j='jobs'
alias j1='%1'
alias j2='%2'
alias j3='%3'
alias j4='%4'
alias j5='%5'
alias jsctags='/usr/local/lib/node_modules/javascript-ctags/bin/javascript-ctags'
alias lyn='learnyounode'
alias ls='ls -GFh'
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'
alias rails4.0='rails _4.0.8_'
alias sshsiocloud='ssh root@nguyen.cloud2.siocloud.io'
alias nv='nvim'
alias nvv='nvim -O $(git show --name-only --format="")'
alias gv='/Applications/mvim'
alias v='/Applications/mvim -v'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/git/bin:/usr/local/sbin:$PATH
export TERM="xterm-256color"

source ~/.git-prompt.sh
source ~/.git-completion.sh
#export PS1="%{$fg[cyan]%}[%n@%m %c$(__git_ps1 ' (%s)')]\$ "
#setopt PROMPT_SUBST ; PS1="%{$fg[cyan]%}%n%{$fg[green]%}@%m:%{$fg[magenta]%}%d""%{$fg[yellow]%}""$(__git_ps1 " (%s)")"$'\n'"%{$fg[red]%}$%{$reset_color%}"
precmd () { if [ $VIRTUAL_ENV ]; then print "$fg[red](venv) "; fi; __git_ps1 %{$fg[cyan]%}"%n"%{$fg[green]%}"@%m:"%{$fg[yellow]%} %{$fg[magenta]%}" %~""%{$fg[red]%}"$'\n'"$"%{$reset_color%}" %s"}
