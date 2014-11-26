export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
# export TERM="screen-256color"
export EDITOR="vim"
export PROMPT_COMMAND="export PS1=\"\[\e[1;3\$(expr \$(expr \$(date "+%M") + 1) % 7 + 1)m\]\H\[\e[0m\]:\[\e[1;3\$(expr \$(expr \$(date "+%M") + 2) % 7 + 1)m\]\$PWD\[\e[0m\] > \""
export PATH="$HOME/bin:$PATH"

alias ll='ls -lhF'
alias grep='grep --color'
alias vi='vim'

# https://github.com/vigneshwaranr/bd
alias bd='. bd -s'

if [[ "$(uname)" == "Linux" && -f "$HOME/.bash_linux" ]]; then
    source "$HOME/.bash_linux"
fi

if [[ "$(uname)" == "FreeBSD" && -f "$HOME/.bash_freebsd" ]]; then
    source "$HOME/.bash_freebsd"
fi

if [[ -f "$HOME/.bash_local" ]]; then
    source "$HOME/.bash_local"
fi

if [ -f "$HOME/bin/z.sh" ]; then
    source "$HOME/bin/z.sh"
fi

# ssh-agent
if [[ -z $SSH_AGENT_PID ]]; then
    eval `ssh-agent -s`
    trap "ssh-agent -k" EXIT
fi
