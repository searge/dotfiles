# XDG Base Directory Specification
if not set -q XDG_CONFIG_HOME
    set -gx XDG_CONFIG_HOME $HOME/.config
end
if not set -q XDG_CACHE_HOME
    set -gx XDG_CACHE_HOME $HOME/.cache
end
if not set -q XDG_DATA_HOME
    set -gx XDG_DATA_HOME $HOME/.local/share
end
if not set -q XDG_STATE_HOME
    set -gx XDG_STATE_HOME $HOME/.local/state
end

# set VIM as default editor use code, code-insiders, subl or vim
set -gx EDITOR vim

# string match -q "$TERM_PROGRAM" vscode
# and . (code --locate-shell-integration-path fish)
