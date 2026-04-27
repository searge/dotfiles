# Fish helper functions

Additional interactive helpers are loaded from:

- `~/.config/fish/functions/_aliases.fish`
- `~/.config/fish/functions/_backup_restore.fish`
- `~/.config/fish/functions/_k8s_helpers.fish`

## Kubernetes helpers

- `kcgc`
  - `kubectl config get-contexts`

- `kcuc <context>`
  - `kubectl config use-context <context>`

- `kctx [context]`
  - without args: show current context
  - with arg: switch context (same as `kcuc`)

- `kns [namespace]`
  - without args: show current namespace
  - with arg: set current namespace for active context

- `klogs [-n namespace] [--no-follow] <pod|deploy/name|name> [extra args]`
  - tails pod logs by default (`-f`)
  - if plain name is not a pod, tries `deploy/<name>`

- `kex [-n namespace] [-l label_selector | pod_name] [-- command]`
  - exec into pod (`sh` by default)
  - examples:
    - `kex my-pod`
    - `kex -l app=my-app`
    - `kex -n argocd argocd-server -- sh`

- `kclean [-A|--all-namespaces]` or `kclean -n <namespace>`
  - deletes pods in `Succeeded` and `Failed` phase

## LDAP helper

- `ldaps '<filter>' [attrs ...]`
  - wrapper around `ldapsearch`
  - uses env vars if set:
    - `LDAP_URI` (default: `ldaps://directory.galaxy.intranet:636`)
    - `LDAP_BASE_DN` (default: `dc=smile,dc=fr`)
    - `LDAP_BIND_DN` (optional)
    - `LDAP_PASS` (optional; prompted silently if missing and bind DN is set)

## Reload fish config

```fish
source ~/.config/fish/conf.d/exports.fish
```
