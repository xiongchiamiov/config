# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100
setopt appendhistory autocd autopushd correct extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install

# Various commands installed by zsh install completion files; let's use them.
# https://docs.brew.sh/Shell-Completion
if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

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

function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \ 
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end

# don't store the same line more than once in a row in history
setopt HIST_IGNORE_DUPS

source ~/.rc
#eval `ssh-agent`

# pip zsh completion start
