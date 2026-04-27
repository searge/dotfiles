# Source Multi-function files
for f in ~/.config/fish/functions/_aliases.fish \
         ~/.config/fish/functions/_utils.fish \
         ~/.config/fish/functions/_backup_restore.fish \
         ~/.config/fish/functions/_k8s_helpers.fish
    if test -f $f
        source $f
    end
end
