export PATH=/usr/local/bin:/usr/local/sbin/:$PATH
export MANPATH=/usr/local/man:$MANPATH
export BASH_COMPLETION=/usr/local/etc/bash_completion.d/git-completion.bash
. $BASH_COMPLETION
export HUB_COMPLETION=/etc/hub.bash_completion.sh
. $HUB_COMPLETION

# requre bash_completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
        source `brew --prefix`/etc/bash_completion
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# prompt command
hg_branch() {
    hg branch 2> /dev/null | awk '{print "(hg:" $1 ")"}'
}

git_branch() {
    __git_ps1 '(git:%s)'
}

# setting for prompt
if [ -f $BASH_COMPLETION ]; then
    source $BASH_COMPLETION
    echo "git-completion enabled..."
    PS1="\[\033[0;37m\][\[\033[0;32m\]\t \[\033[1;36m\]\u\[\033[0;37m\]@\h \$(git_branch)\$(hg_branch) \[\033[0;32m\]\w\[\033[0;37m\]]\n\$ "
else
    PS1="\[\033[0;37m\][\[\033[0;32m\]\t \[\033[1;36m\]\u\[\033[0;37m\]@\h \[\033[0;32m\]\w\[\033[0;37m\]]\n\$ "
fi

export PS1
set -o vi
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
#alias ruby='/opt/local/bin/ruby1.9'
#alias gem='/opt/local/bin/gem1.9'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
