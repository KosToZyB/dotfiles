# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:/usr/local/go/bin

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ll='ls -l --color=auto'

    alias grep='grep --color=auto'
fi

# git aliases
alias gc='git commit'
alias gb='git branch'
alias gco='git checkout'
alias gp='git pull'

#docker aliases
alias dp='docker ps'
alias de='docker exec -it'
alias di='docker inspect'
