parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="%B%F{magenta}➜ %F{cyan}%~%F{yellow}$(parse_git_branch)%f%b "

# Aliases
alias ll='ls -al'
alias vi=vim

