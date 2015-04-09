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

alias bspec="bundle exec rspec"
alias brake="bundle exec rake"
alias be="bundle exec"
alias ll="ls -al"
alias gg="git log --graph --full-history --all --color --pretty=format:'%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s' --simplify-by-decoration"


alias redis="redis-server /usr/local/etc/redis.conf"
alias es="elasticsearch -f -D es.config=/usr/local/Cellar/elasticsearch/0.19.8/config/elasticsearch.yml"

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH"
export PATH=/usr/local/git/bin:$PATH
export NODE_PATH=/usr/local/lib/node_modules
export NODE_PATH=$NODE_PATH:/usr/local/share/npm/lib/node_modules

export MANPATH=/usr/local/git/man:$MANPATH

export GIT_EDITOR="subl -w"
export BUNDLER_EDITOR="subl -w"
export GIT_SSL_NO_VERIFY=1


export PATH=~/bin:$PATH

export PATH=~/dev/q/bin:$PATH

export PATH=$PATH:$GOPATH/bin

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

export DOCKER_CERT_PATH=/Users/joerg/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376

# EDITOR="mate -w"
export EDITOR='subl -w'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
