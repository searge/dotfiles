# POSIX login-shell fallback (kept for compatibility outside zsh).
[ -s "$HOME/.local/share/cargo/env" ] && . "$HOME/.local/share/cargo/env"
[ -s "$HOME/.local/bin/env" ] && . "$HOME/.local/bin/env"
