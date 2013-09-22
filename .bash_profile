export LANG="en_US.UTF-8"
export TERM="screen-256color"

alias ll='ls -lhF'
alias grep='grep --color'
alias vi='vim'

# for pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
