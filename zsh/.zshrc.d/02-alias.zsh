
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias vim="nvim"
alias work="cd $HOME/WorkSpace"
alias zshrc="$EDITOR $HOME/.zshrc.d/"
alias reload="source $HOME/.zshrc"

# Global Aliases
alias -g P='| pbcopy'
alias -g C='| wc -l'
alias -g G='| grep --color=auto'
alias -g H='| head'
alias -g L='| less -R'
alias -g X='| xargs'

# macOS aliasses
if [[ $OSTYPE == darwin* ]]; then
  alias browse="open -a /Applications/Google\ Chrome.app"
fi


# proctools
function pgrep() {
  ps aux | grep $1 | grep -v grep
}

function pkill() {
  local pid
  pid=$(ps ax | grep $1 | grep -v grep | awk '{print $2}')
  kill -9 $pid
  echo -n "$1 terminated (process $pid)"
}

# Mac dictionary
function mdict() { open dict://$1; }
# 辞書 by 物書堂
function dict() { open mkdictionaries:///\?text=$1; }
