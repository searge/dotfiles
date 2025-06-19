# set variable identifying the chroot you work in (used in the prompt below)
PROMPT_ENV_NAME=""
if [ -f /run/.containerenv ]; then
    PROMPT_ENV_NAME="container"
elif [ -f /.dockerenv ]; then
    PROMPT_ENV_NAME="docker"
elif [ -r /etc/debian_chroot ]; then
    PROMPT_ENV_NAME=$(cat /etc/debian_chroot)
elif [ -n "$container" ]; then
    PROMPT_ENV_NAME=$container
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${PROMPT_ENV_NAME:+($PROMPT_ENV_NAME)}\[\e[1;33m\]\u@\[\e[1;34m\]\h \[\e[1;36m\]\w\[\e[0m\]\n> '
else
    PS1='${PROMPT_ENV_NAME:+($PROMPT_ENV_NAME)}\u@\h:\w\n\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${PROMPT_ENV_NAME:+($PROMPT_ENV_NAME)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac
