autoload -U colors && colors
# prompt config
precmd() { 
    print -rP -- "[%F{green}%n%f] in [%F{yellow}%~%f] at [%F{blue}%*%f]" 
}
export PROMPT="%F{blue}->%f "
# fnm config (to use specific node versions)
eval "$(fnm env --use-on-cd)"
# rust config
source ~/.cargo/env
# editor config
export EDITOR=vim
# fun aliases to make my life easier
alias ll='ls -al'
alias ls='ls -Fh --color=auto'

