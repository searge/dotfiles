# Pyenv
set -gx PYENV_ROOT "$HOME/.pyenv"
if test -d "$PYENV_ROOT/bin"
    fish_add_path -g "$PYENV_ROOT/bin"
end

# NodeJS - PNPM
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if test -d "$PNPM_HOME"
    fish_add_path -g --move "$PNPM_HOME"
end
if test -d "$PNPM_HOME/bin"
    fish_add_path -g --move "$PNPM_HOME/bin"
end

# Bun
if test -d "$HOME/.bun/bin"
    fish_add_path -g "$HOME/.bun/bin"
end

# Pulumi
if test -d "$HOME/.pulumi/bin"
    fish_add_path -g "$HOME/.pulumi/bin"
end

# Krew
if test -d "$HOME/.krew/bin"
    fish_add_path -g "$HOME/.krew/bin"
end
