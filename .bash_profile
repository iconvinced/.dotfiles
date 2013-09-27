export LANG="en_US.UTF-8"
export TERM="screen-256color"
export EDITOR="vim"

alias ll='ls -lhF'
alias grep='grep --color'
alias vi='vim'

export PROMPT_COMMAND="export PS1=\"\e[1;32m\u@\H:\$PWD\e[0m \""

# for pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
