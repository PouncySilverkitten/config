#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ksp='/home/struan/scripts/shell/ksp'
alias checkyoself='sudo /home/struan/.backup.sh'
alias vi='vim'
#alias scrivener='/home/struan/scripts/shell/scrivener'
alias reboot="sudo systemctl reboot"
alias books="cd ~/python/books && python main.py"
alias split="xterm -u8 &"
alias ckan="mono /home/struan/Downloads/ckan.exe"
alias doc2markdown="python /home/struan/python/doc2markdown/doc2markdown.py"

S1='[\u@\h \W]\$ '

export LANGUAGE="en_GB.UTF-8"
export LC_ALL="en_GB.UTF-8"

shopt -s autocd

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

eval "$(pipenv --completion)"
eval "$(direnv hook bash)"
alias config='/usr/bin/git --git-dir=/home/struan/.cfg -work-tree=/home/struan'
