export LANG="en_US.UTF-8"
export TERM="screen-256color"
export EDITOR="vim"
export PROMPT_COMMAND="export PS1=\"\[\e[1;3\$(expr \$(date "+%d") % 7 + 1)m\][\t] \[\e[1;3\$(expr \$(date "+%H") % 7 + 1)m\]\u\[\e[0m\]@\[\e[1;3\$(expr \$(date "+%M") % 7 + 1)m\]\H\[\e[0m\]:\[\e[1;3\$(expr \$(date "+%S") % 7 + 1)m\]\$PWD/\[\e[0m\]\n> \""

alias ll='ls -lhF'
alias grep='grep --color'
alias vi='vim'


# for pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
