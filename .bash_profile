alias ll='ls -la'
alias cd..='cd ../'
alias n6='node --harmony --harmony_arrow_functions'
alias ck='npm'
export USER=""
PATH=$PATH:~/Data/Scripts:~/Data/Utils/rar:~/_Applications:~/_Applications/lynx:~/npm/bin

#git complition
source ~/.git-completion.bash

# enable the git bash completion commands

# enable git unstaged indicators - set to a non-empty value
GIT_PS1_SHOWDIRTYSTATE="."

# enable showing of untracked files - set to a non-empty value
GIT_PS1_SHOWUNTRACKEDFILES="."

# enable stash checking - set to a non-empty value
GIT_PS1_SHOWSTASHSTATE="."

# enable showing of HEAD vs its upstream
GIT_PS1_SHOWUPSTREAM="auto"

#show current branch
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#PS1='${CYAN}\u$ in ${GREEN}\w $(parse_git_branch) ${NC}'
PS1='\[\e[0;35m\]\u\[\e[0m\] in \[\e[0;32m\]\w\[\e[0m\]\[\e[0;33m\]$(parse_git_branch)\[\e[0m\] '
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export NVM_DIR="/Users/$USER/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm use v6
export PATH="$HOME/.yarn/bin:$PATH"
