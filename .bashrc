PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;33m\]\w\[\e[m\] \[\e[m\] \[\e[1;32m\]\$ \[\e[m\]\[\e[1;37m\] '

# allow tab-completion while using sudo
complete -cf sudo

# pass environment variables on when using sudo
alias sudo="sudo -E"

source .rc