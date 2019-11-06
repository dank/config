# Prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' formats '(%b)'
precmd() {
    vcs_info
}

setopt prompt_subst
export PROMPT='%B%F{magenta}➜ %F{cyan}%~%F{yellow} ${vcs_info_msg_0_}%f%b '

# Aliases
alias ll='ls -al'
alias vi=vim

# Path
export PATH="$HOME/.cargo/bin:$PATH"
