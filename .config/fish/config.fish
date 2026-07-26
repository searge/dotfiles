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

    function __load_cached_completion --argument-names tool
        if not command -q "$tool"
            return
        end

        set -l completion_cache_root "$XDG_CACHE_HOME"
        if test -z "$completion_cache_root"
            set completion_cache_root "$HOME/.cache"
        end

        set -l completion_dir "$completion_cache_root/fish/generated-completions"
        set -l completion_file "$completion_dir/$tool.fish"
        set -l binary (path resolve (command -s "$tool"))

        if not test -s "$completion_file"; or test "$binary" -nt "$completion_file"
            command mkdir -p "$completion_dir"
            set -l temporary_file (command mktemp "$completion_file.XXXXXX")

            if env KUBECONFIG=/dev/null "$tool" completion fish >"$temporary_file"
                command mv "$temporary_file" "$completion_file"
            else
                command rm -f "$temporary_file"
                return 1
            end
        end

        set -lx KUBECONFIG /dev/null
        source "$completion_file"
    end

    __load_cached_completion helm
    __load_cached_completion kubectl
    functions -e __load_cached_completion

end
