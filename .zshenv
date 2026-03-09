# XDG ENVIRONMENTS
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_HOME="$HOME/.local/share"

# XDG Ninja recommendations
############################################
#         XDG CONFIG HOME                 #
############################################
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME"/aws/config
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME"/aws/credentials
export K9SCONFIG="$XDG_CONFIG_HOME"/k9s/config.yml
export RIPGREP_CONFIG_PATH=$XDG_CONFIG_HOME/ripgrep/config
export REDISCLI_RCFILE="$XDG_CONFIG_HOME"/redis/redisclirc
# export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export BASH_COMPLETION_USER_FILE="$XDG_CONFIG_HOME"/bash-completion/bash_completion
export ELM_HOME="$XDG_CONFIG_HOME"/elm
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

############################################
#         XDG DATA HOME                   #
############################################
export PYENV_ROOT=$HOME/.pyenv
export ZSH="$XDG_DATA_HOME"/oh-my-zsh
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUBY_HOME="$XDG_DATA_HOME"/ruby
export MINIKUBE_HOME="$XDG_DATA_HOME"/minikube
export ANSIBLE_HOME="$XDG_DATA_HOME"/ansible
export WORKON_HOME="$XDG_DATA_HOME/virtualenvs"
export NVM_DIR="$XDG_DATA_HOME"/nvm
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export REDISCLI_HISTFILE="$XDG_DATA_HOME"/redis/rediscli_history
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
export DISCORD_USER_DATA_DIR="${XDG_DATA_HOME}"/discord
export FFMPEG_DATADIR="$XDG_DATA_HOME"/ffmpeg

############################################
#         XDG CACHE HOME                  #
############################################
export ANSIBLE_GALAXY_CACHE_DIR="${XDG_CACHE_HOME}/ansible/galaxy_cache"
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod
export MYPY_CACHE_DIR="$XDG_CACHE_HOME"/mypy_cache

############################################
#         XDG STATE HOME                  #
############################################
export W3M_DIR="$XDG_STATE_HOME/w3m"

if [ -z "${DOCKER_HOST:-}" ] && [ -n "${XDG_RUNTIME_DIR:-}" ] && [ -S "$XDG_RUNTIME_DIR/podman/podman.sock" ]; then
  export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/podman/podman.sock"
fi
