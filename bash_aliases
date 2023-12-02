#
# Don!s Bash aliases
#######################################################################
# Save this file as '.bash_aliases' (note leading dot) in your home
# directory, and load it from your login file to add usefull bash
# aliases
#

printf '=== Loading Don Aliases\n'

# Alias-Related
alias al='clear && alias'
alias ll='ls -lh --color=auto'
alias la='ls -Ah'
alias scripts='clear && ls -r ~/scripts'
alias reload='clear && echo "--- Reloading .bashrc ---" && source $HOME/.profile'

# General Shell
alias l='clear && ll'
alias path='echo $PATH'

# Open SSH
alias lock_keys='sudo chmod 400 ~/.ssh/*.pem'
alias userlist='cat /etc/passwd |grep "/bin/bash" |cut -d: -f1'
alias grouplist='cut -d: -f1 /etc/group'
alias pip-upgrade="pip freeze --user | cut -d'=' -f1 | xargs -n1 pip3 install -U"

# Apt related
alias apt_repos='for X in /etc/apt/sources.list.d/*; do echo; echo; echo "** $X:"; echo; cat $X; done'

# Apache
alias hosts="clear && cat /etc/hosts"

# Misc
alias keyoff='xinput float 15'
alias keyon='xinput reattach 15 3'