source ~/.config/fish/conf.d/variables.fish
source ~/.config/fish/conf.d/exports.fish
source ~/.config/fish/conf.d/paths.fish

if status is-interactive
    if command -q starship
        starship init fish | source
    end

    if functions -q enable_transience
        enable_transience
    end

    if command -q zoxide
        zoxide init fish | source
    end

    if command -q helm
        helm completion fish | source
    end

    if command -q kubectl
        kubectl completion fish | source
    end
end
