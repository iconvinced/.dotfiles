export LANG="en_US.UTF-8"
export TERM="screen-256color"
export EDITOR="vim"
export PROMPT_COMMAND="export PS1=\"\[\e[1;3$(date "+%w")m\]\u@\H:\$PWD\[\e[0m\]\n> \""

alias ll='ls -lhF'
alias grep='grep --color'
alias vi='vim'


# for pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
