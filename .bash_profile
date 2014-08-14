eval "$(rbenv init -)"
export PS1="\[\033[36m\]\u\[\033[m\]\[\033[32m\]@\h:\[\033[33;1m\]\w\[\033[m\]\n\[\033[31m\]\$\[\033[m\]"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'
alias cdruby='cd ~/Documents/ruby'
alias bashp='vim .bash_profile'
alias food='open ~/Documents/home/eats_english.pdf'
alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'
alias rails4.0='rails _4.0.8_'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH=/usr/local/bin:$PATH
