# Source Multi-function files
for f in ~/.config/fish/functions/_aliases.fish \
         ~/.config/fish/functions/_utils.fish \
         ~/.config/fish/functions/_backup_restore.fish
    if test -f $f
        source $f
    end
end
