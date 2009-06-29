# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100
setopt appendhistory autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pearson/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} - %b%{\e[0;34m%}%B[%b%{\e[1;37m%}%~%{\e[0;34m%}%B]%b%{\e[0m%} - %{\e[0;34m%}%B[%b%{\e[0;33m%}'%D{"%a %b %d, %I:%M"}%b$'%{\e[0;34m%}%B]%b%{\e[0m%}
%{\e[0;34m%}%B└─%B[%{\e[1;35m%}$%{\e[0;34m%}%B]>%{\e[0m%}%b '
PS2=$'     \e[0;34m%}%B>%{\e[0m%}%b '

# pass environment variables on when using sudo
alias sudo="sudo -E"

# complete screen sessions
compctl -g "/tmp/screens/S-${USER}/*(p:t)" screen

# don't store the same line more than once in a row in history
setopt HIST_IGNORE_DUPS

source ~/.rc
