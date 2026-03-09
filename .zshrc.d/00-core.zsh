# Preferred editor and pager
export EDITOR='vim'
export LESS=FRX

# Secrets (kept outside public dotfiles)
[ -f "$HOME/.config/secrets/workstation.env" ] && . "$HOME/.config/secrets/workstation.env"

export BAT_THEME="OneHalfDark"

# Local binaries
export PATH="$HOME/.local/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
