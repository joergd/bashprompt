source ~/.config/git-completion.sh
source ~/.config/git-aliases.sh


function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  local     DEFAULT="\[\e[0m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="${TITLEBAR}\
$GREEN[$DEFAULT\$(date +%H:%M)$GREEN]\
$GREEN[$DEFAULT\u@\h:$GREEN\w$RED\$(parse_git_branch)$GREEN]\
$GREEN\n>:$DEFAULT "
PS2='> '
PS4='+ '
}
proml


# export PS1="\w >: "

alias blinkplanapp="ssh admin@108.166.113.196"
alias blinkplandb="ssh joergd@208.78.102.206 -p 2222"
alias fluttervoice="ssh joergd@208.78.96.148 -p 2222"
alias faceoff="ssh admin@67.207.146.236"
alias faceofffdemo="ssh admin@demo.faceofff.com"
alias syrex="ssh root@webruby.lair.co.za"
alias trac="ssh ublip@12.71.216.72"
alias trac_prod="ssh ublip@12.71.216.68"
alias five="ssh five_tv@fivetvsastaging.dmgstage1.com"
alias contiki="ssh www-data@stage3-man.contiki.com"
alias ss="mongrel_rails start"
alias ssp="ss -S config/mongrel_upload_progress.conf"
alias bspec="bundle exec rspec"
alias bcuke="bundle exec cucumber"
alias brake="bundle exec rake"
alias be="bundle exec"
alias l="ls -al"
alias gg="git log --graph --full-history --all --color --pretty=format:'%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s' --simplify-by-decoration"


alias redis="redis-server /usr/local/etc/redis.conf"
alias es="elasticsearch -f -D es.config=/usr/local/Cellar/elasticsearch/0.19.8/config/elasticsearch.yml"

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH"
export PATH=/usr/local/git/bin:$PATH
export NODE_PATH=/usr/local/lib/node_modules

export MANPATH=/usr/local/git/man:$MANPATH

export GIT_EDITOR="subl -w"
export BUNDLER_EDITOR="subl -w"
export GIT_SSL_NO_VERIFY=1

export PATH=~/bin:$PATH

export PATH=~/dev/q/bin:$PATH

export FORECAST_PLACE="Cape Town"

# EDITOR="mate -w"
export EDITOR='subl -w'

test -r /sw/bin/init.sh && . /sw/bin/init.sh

if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

##
# Your previous /Users/joerg/.profile file was backed up as /Users/joerg/.profile.macports-saved_2010-04-26_at_14:57:07
##

[[ -s "/Users/joerg/.rvm/scripts/rvm" ]] && source "/Users/joerg/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -s "/Users/joerg/.rvm/scripts/rvm" ]] && source "/Users/joerg/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
