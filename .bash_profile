parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

# Aliases
alias ll='ls -al'
alias vi=vim
alias preview="fzf --preview 'bat --color \"always\" {}'"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export BAT_THEME="GitHub"
