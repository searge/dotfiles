# Default Bash variables

# Set the default editor
export EDITOR=vim
export VISUAL=vim

# Set the default pager
export LESS=FRX
export LESSOPEN='|~/.lessfilter %s'

# XDG Base Directory Specification
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"

# Secrets (kept outside public dotfiles)
if [ -d "${XDG_CONFIG_HOME:-$HOME/.config}/secrets" ]; then
  for envfile in "${XDG_CONFIG_HOME:-$HOME/.config}/secrets/"*.sh; do
    if [ -f "$envfile" ]; then
      . "$envfile"
    fi
  done
  unset envfile
fi
