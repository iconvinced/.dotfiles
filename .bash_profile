export LANG="en_US.UTF-8"
export TERM="screen-256color"
export EDITOR="vim"
export PROMPT_COMMAND="export PS1=\"\[\e[1;3\$(expr \$(expr \$(date "+%M") + 1) % 7 + 1)m\][\t] \[\e[1;3\$(expr \$(expr \$(date "+%M") + 2) % 7 + 1)m\]\u\[\e[0m\]@\[\e[1;3\$(expr \$(expr \$(date "+%M") + 3) % 7 + 1)m\]\H\[\e[0m\]:\[\e[1;3\$(expr \$(expr \$(date "+%M") + 4) % 7 + 1)m\]\$PWD/\[\e[0m\]\n> \""

alias ll='ls -lhF'
alias grep='grep --color'
alias vi='vim'


# for pyenv
if [[ -d "$HOME/.pyenv" ]]; then
    export PATH="$HOME/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
fi
