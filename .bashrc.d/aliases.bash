# Bash aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

fi

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Colorize the ls command
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

alias diff='colordiff'

# Display the directory structure better.
alias tree='tree --dirsfirst -F'

# Make a directory and all parent directories with verbosity.
alias mkdir='mkdir -p -v'

# Force tmux to use 256 colors
alias tmux='tmux -2'

# Use color in ip command
alias ip='ip -color=auto'

# Confirm before overwriting something
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Kubernetes aliases
if command -v kubectl &> /dev/null
then
    # Enable autocompletion
    source <(kubectl completion bash)

    # Create alias k for kubectl and enable autocompletion
    alias k=kubectl
    complete -F __start_kubectl k
fi

if command -v helm &> /dev/null
then
    # Enable autocompletion
    source <(helm completion bash)

    # Create d alias for helm and enable autocompletion
    alias h=helm
    complete -F __start_helm h
fi
