translate() {
wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=${2:-en}|${3:-ru}" | sed -E -n 's/[[:alnum:]": {}]+"translatedText":"([^"]+)".*/\1/p';
echo ''
return 0;
}
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '

alias sd='sudo'
alias ag='apt-get'
alias agu='apt-get update'
alias agd='apt-get dist-upgrade'
alias ac='apt-cache'
alias acs='apt-cache search'
