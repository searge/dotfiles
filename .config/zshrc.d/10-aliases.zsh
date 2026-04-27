alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias tf='terraform'

if command -v exa >/dev/null 2>&1; then
  alias ls='exa --oneline --sort=ext'
  alias la='exa -hlga'
  alias ll='exa -hlg --sort=ext'
  alias llf='exa -lhg --inode --blocks --git'
  alias tree='exa --tree'
  alias tree2='exa -lh --tree --level=2 --git'
fi

if command -v bat >/dev/null 2>&1; then
  alias cat='bat --style=plain'
fi

if command -v yarn >/dev/null 2>&1; then
  alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
fi

if command -v podman >/dev/null 2>&1; then
  alias docker=podman
fi

if command -v podman-compose >/dev/null 2>&1; then
  alias docker-compose=podman-compose
fi

if [ "$TERM" = xterm-kitty ]; then
  alias ssh="kitty +kitten ssh"
fi
