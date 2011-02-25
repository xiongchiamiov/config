# allow tab-completion while using sudo
complete -cf sudo

# pass environment variables on when using sudo
alias sudo="sudo -E"

source .rc

PS1='\[\e[1;34m\]┌─[\[\e[m\]'
PS1=$PS1'\[\e[1;32m\]\u\[\e[m\]'
PS1=$PS1'\[\e[1;30m\]@\[\e[m\]'
PS1=$PS1'\[\e[0;36m\]\h\[\e[m\]'
PS1=$PS1'\[\e[1;34m\]]\[\e[m\]'
PS1=$PS1'\[\e[0;37m\] - \[\e[m\]'
PS1=$PS1'\[\e[1;34m\][\[\e[m\]'
PS1=$PS1'\[\e[1;37m\]\w\[\e[m\]'
PS1=$PS1'\[\e[1;34m\]]\[\e[m\]'
PS1=$PS1'\[\e[0;37m\] - \[\e[m\]'
PS1=$PS1'\[\e[1;34m\][\[\e[m\]'
PS1=$PS1"\[\e[0;33m\]$(date +'%a %b %d, %I:%M')\[\e[m\]"
PS1=$PS1'\[\e[1;34m\]]\[\e[m\]'
PS1=$PS1'\n'

PS1=$PS1'\[\e[1;34m\]└─[\[\e[m\]'
PS1=$PS1'\[\e[1;35m\]\$\[\e[m\]'
PS1=$PS1'\[\e[1;34m\]]>\[\e[m\]'

PS2='\[\e[1;34m\]     >\[\e[m\]'
