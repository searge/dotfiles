# Colorize grep output (good for log files)
alias grep 'grep --color=auto'
alias egrep 'egrep --color=auto'
alias fgrep 'fgrep --color=auto'

# Confirm before overwriting
alias cp 'cp -Ri'
alias mv 'mv -i'
alias rm 'rm -i'

alias md 'mkdir -p'
alias rd rmdir
alias tf 'terraform'
alias zshconfig 'vim ~/.zshrc'
alias ohmyzsh 'vim ~/.oh-my-zsh'

if command -q bat
    alias cat 'bat --style=plain'
end

# Navigation

if command -q eza
    alias ls 'eza --oneline --icons --sort ext'
    alias eza 'eza --git --group-directories-first --sort ext'
    alias la 'eza -lhag'
    alias ll 'eza -lhg'
    alias llf 'eza -lhg --inode --blocks'
    alias tree 'eza --tree'
    alias tree2 'eza -lh --tree --level 2'
end

# Node
if command -q yarn
    alias yarn 'yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
end

if command -q kubectl
    alias k kubectl
end

if command -q helm
    alias h helm
end

# Network shortcuts/aliases and utilities
alias ip "dig +short myip.opendns.com @resolver1.opendns.com" # dumps [YOUR PUBLIC IP] [URL IP]
alias ipl "hostname -I | awk '{print \$1}'" # internal network IP
alias ips "ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
alias sniff "sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump "sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias whois "grc whois" # colorized whois

# Docker aliases
if command -q podman
    alias docker podman
    alias dk podman
end

if command -q podman-compose
    alias docker-compose podman-compose
    alias dc podman-compose
end

# function tldrf --description 'tldr search and preview with fzf'
alias tldrf 'tldr --list | fzf --preview "tldr {1} --color=always" --preview-window=right,70% | xargs tldr'

#### Language Support ####
# Node - PNPM
if command -q pnpm
    alias pn pnpm
    alias px 'pnpm dlx'
end

# PHP - Laravel
alias art 'php artisan'
alias tinker 'php artisan tinker'
alias mfs 'php artisan migrate:fresh --seed'
alias phpunit vendor/bin/phpunit
alias pest vendor/bin/pest
alias vapor vendor/bin/vapor
