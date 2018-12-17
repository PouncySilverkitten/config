#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$PATH:$HOME/scripts/shell:/usr/local:$HOME/.local/bin:$HOME/.cargo/bin"

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    echo "Start X? [y/n]:"
    while true; do
        read REPLY
        case $REPLY in
            [Nn]) break ;;
            *) exec startx;;
        esac
    done
fi


export LC_ALL="en_GB.UTF-8"
export LC_CTYPE="en_GB.UTF-8"
export lang="en_GB.UTF-8"
