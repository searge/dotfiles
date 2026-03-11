if test -d "$HOME/.kube"
    set -l kube_files

    if test -f "$HOME/.kube/config"
        set -a kube_files "$HOME/.kube/config"
    end

    for f in "$HOME"/.kube/*.yaml
        if test -f "$f"
            set -a kube_files "$f"
        end
    end

    if test (count $kube_files) -gt 0
        set -gx KUBECONFIG (string join ":" $kube_files)
    end
end
