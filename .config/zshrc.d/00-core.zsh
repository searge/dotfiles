# Preferred editor and pager
export EDITOR='vim'
export LESS=FRX

# Secrets (kept outside public dotfiles)
if [ -d "${XDG_CONFIG_HOME:-$HOME/.config}/secrets" ]; then
  for envfile in "${XDG_CONFIG_HOME:-$HOME/.config}/secrets/"*.sh(N); do
    [ -f "$envfile" ] && source "$envfile"
  done
  unset envfile
fi

export BAT_THEME="OneHalfDark"

# Local binaries
export PATH="$HOME/.local/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
