if [ -d "$HOME/.kube" ]; then
  # Find each yaml file in ~/.kube and implode the string with ":"
  KUBECONFIG=$(find ~/.kube -name "*.yaml" -type f -printf "$HOME/.kube/%f:")

  # Prepend with ~/.kube/config
  KUBECONFIG=~/.kube/config:${KUBECONFIG}

  # Remove trailing colon
  KUBECONFIG="${KUBECONFIG:-1}"

  export KUBECONFIG
fi

if command -v kubectl >/dev/null 2>&1; then
  source <(kubectl completion zsh)
fi

if command -v kubecolor >/dev/null 2>&1; then
  alias kubectl=kubecolor
  compdef kubecolor=kubectl
fi

alias k=kubectl
command -v compdef >/dev/null 2>&1 && compdef k=kubectl

if command -v helm >/dev/null 2>&1; then
  source <(helm completion zsh)
  alias h=helm
  command -v compdef >/dev/null 2>&1 && compdef h=helm
fi

[[ -d "$HOME/.krew/bin" ]] && export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
