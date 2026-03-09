# zsh login-shell entrypoint: reuse POSIX login fallback.
[ -f "$HOME/.profile" ] && . "$HOME/.profile"
