[ -s "$HOME/.local/share/cargo/env" ] && . "$HOME/.local/share/cargo/env"

export NVM_DIR="$HOME/.local/share/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

[ -s "$HOME/.asdf/asdf.sh" ] && . "$HOME/.asdf/asdf.sh"

export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

[ -s "$HOME/.local/bin/env" ] && . "$HOME/.local/bin/env"

if command -v pkgx >/dev/null 2>&1; then
  eval "$(pkgx dev --shellcode)"
fi

[ -d "$HOME/.pulumi/bin" ] && export PATH="$PATH:$HOME/.pulumi/bin"
