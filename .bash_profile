export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
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

# for golang
if [[ ! -d "$HOME/gopath/3rd" || ! -d "$HOME/gopath/default" ]]; then
    mkdir -p "$HOME/gopath/3rd/src" "$HOME/gopath/3rd/bin" "$HOME/gopath/3rd/pkg"
    mkdir -p "$HOME/gopath/default/src" "$HOME/gopath/default/bin" "$HOME/gopath/default/pkg"
fi
export GOPATH="$HOME/gopath/3rd:$HOME/gopath/default"

# https://github.com/vigneshwaranr/bd
alias bd='. bd -s'

if [[ -f "$HOME/.bash_local" ]]; then
    source "$HOME/.bash_local"
fi
