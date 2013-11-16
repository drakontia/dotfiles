source /opt/boxen/env.sh

# requre bash_completion
if [ -d `brew --prefix`/etc/bash_completion.d ]; then
    source `brew --prefix`/etc/bash_completion.d/git-completion.bash
    source `brew --prefix`/etc/bash_completion.d/git-prompt.sh
    source `brew --prefix`/etc/bash_completion.d/hub.bash_completion.sh
fi

# prompt command
hg_branch() {
    hg branch 2> /dev/null | awk '{print "(hg:" $1 ")"}'
}

git_branch() {
    __git_ps1 '(git:%s)'
}

# setting for prompt
if [ -d `brew --prefix`/etc/bash_completion.d ]; then
    echo "git-completion enabled..."
    PS1="\[\033[0;37m\][\[\033[0;32m\]\t \[\033[1;36m\]\u\[\033[0;37m\]@\h \$(git_branch)\$(hg_branch) \[\033[0;32m\]\w\[\033[0;37m\]]\n\$ "
else
    PS1="\[\033[0;37m\][\[\033[0;32m\]\t \[\033[1;36m\]\u\[\033[0;37m\]@\h \[\033[0;32m\]\w\[\033[0;37m\]]\n\$ "
fi

export PS1
set -o vi
alias vi='vim'

## rbenv
if [[ -s /opt/boxen/rbenv/bin ]] ; then
  rbenv global 2.0.0-p247
  rbenv version | sed -e 's/ .*//'
fi
