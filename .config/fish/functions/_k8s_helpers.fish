function __k_current_ns --description "Return current kubectl namespace or default"
    set -l ns (kubectl config view --minify --output 'jsonpath={..namespace}' 2>/dev/null)
    if test -z "$ns"
        echo default
    else
        echo $ns
    end
end

function kcgc --description "kubectl config get-contexts"
    if not command -q kubectl
        echo "kubectl is not installed"
        return 127
    end

    command kubectl config get-contexts $argv
end

function kcuc --description "kubectl config use-context"
    if not command -q kubectl
        echo "kubectl is not installed"
        return 127
    end

    if test (count $argv) -eq 0
        echo "Current context: "(kubectl config current-context 2>/dev/null)
        echo "Usage: kcuc <context>"
        return 1
    end

    command kubectl config use-context $argv[1]
end

function kctx --description "Show current context or switch context"
    if test (count $argv) -eq 0
        kubectl config current-context
        return $status
    end

    kcuc $argv[1]
end

function kns --description "Show or set namespace in current context"
    if not command -q kubectl
        echo "kubectl is not installed"
        return 127
    end

    if test (count $argv) -eq 0
        __k_current_ns
        return 0
    end

    command kubectl config set-context --current --namespace $argv[1]
end

function klogs --description "Tail logs from pod/resource in current namespace"
    if not command -q kubectl
        echo "kubectl is not installed"
        return 127
    end

    set -l ns (__k_current_ns)
    set -l follow -f
    set -l i 1

    while test $i -le (count $argv)
        switch $argv[$i]
            case -n --namespace
                set i (math $i + 1)
                if test $i -gt (count $argv)
                    echo "Missing namespace after -n/--namespace"
                    return 1
                end
                set ns $argv[$i]
            case --no-follow
                set follow
            case '*'
                break
        end
        set i (math $i + 1)
    end

    set -l rest $argv[$i..-1]
    if test (count $rest) -eq 0
        echo "Usage: klogs [-n namespace] [--no-follow] <pod|deploy/name|name> [extra kubectl logs args]"
        return 1
    end

    set -l target $rest[1]
    set -l extra $rest[2..-1]

    if string match -rq '^(po|pod|deploy|deployment|ds|daemonset|sts|statefulset|job|cronjob)/' -- $target
        command kubectl logs -n $ns $follow $target $extra
        return $status
    end

    if kubectl get pod -n $ns $target >/dev/null 2>&1
        command kubectl logs -n $ns $follow pod/$target $extra
        return $status
    end

    command kubectl logs -n $ns $follow deploy/$target $extra
end

function kex --description "Exec into pod by name or label selector"
    if not command -q kubectl
        echo "kubectl is not installed"
        return 127
    end

    set -l ns (__k_current_ns)
    set -l selector
    set -l target
    set -l exec_cmd
    set -l i 1

    while test $i -le (count $argv)
        switch $argv[$i]
            case -n --namespace
                set i (math $i + 1)
                if test $i -gt (count $argv)
                    echo "Missing namespace after -n/--namespace"
                    return 1
                end
                set ns $argv[$i]
            case -l --selector
                set i (math $i + 1)
                if test $i -gt (count $argv)
                    echo "Missing selector after -l/--selector"
                    return 1
                end
                set selector $argv[$i]
            case --
                set exec_cmd $argv[(math $i + 1)..-1]
                break
            case '*'
                if test -z "$target"
                    set target $argv[$i]
                else
                    set exec_cmd $argv[$i..-1]
                    break
                end
        end
        set i (math $i + 1)
    end

    if test -z "$selector" -a -z "$target"
        echo "Usage: kex [-n namespace] [-l label_selector | pod_name] [-- command]"
        return 1
    end

    if test (count $exec_cmd) -eq 0
        set exec_cmd sh
    end

    set -l pod
    if test -n "$selector"
        set pod (kubectl get pod -n $ns -l "$selector" -o jsonpath='{.items[0].metadata.name}' 2>/dev/null)
    else
        set pod (string replace -r '^pod/' '' -- $target)
        if not kubectl get pod -n $ns $pod >/dev/null 2>&1
            set pod (kubectl get pod -n $ns -l "app.kubernetes.io/name=$target" -o jsonpath='{.items[0].metadata.name}' 2>/dev/null)
        end
        if test -z "$pod"
            set pod (kubectl get pod -n $ns -l "app=$target" -o jsonpath='{.items[0].metadata.name}' 2>/dev/null)
        end
    end

    if test -z "$pod"
        echo "No pod found in namespace '$ns'"
        return 1
    end

    command kubectl exec -n $ns -it pod/$pod -- $exec_cmd
end

function kclean --description "Delete completed and failed pods"
    if not command -q kubectl
        echo "kubectl is not installed"
        return 127
    end

    set -l all_namespaces false
    set -l ns (__k_current_ns)

    if test (count $argv) -gt 0
        switch $argv[1]
            case -A --all-namespaces
                set all_namespaces true
            case -n --namespace
                if test (count $argv) -lt 2
                    echo "Missing namespace after -n/--namespace"
                    return 1
                end
                set ns $argv[2]
        end
    end

    if $all_namespaces
        for phase in Succeeded Failed
            command kubectl delete pod -A --field-selector status.phase=$phase --ignore-not-found
        end
        return 0
    end

    for phase in Succeeded Failed
        command kubectl delete pod -n $ns --field-selector status.phase=$phase --ignore-not-found
    end
end

function ldaps --description "ldapsearch wrapper using env vars and hidden password prompt"
    if test (count $argv) -eq 0
        echo "Usage: ldaps '<filter>' [attrs ...]"
        echo "Env: LDAP_URI, LDAP_BASE_DN, LDAP_BIND_DN, LDAP_PASS"
        return 1
    end

    set -l uri (set -q LDAP_URI; and echo $LDAP_URI; or echo "ldaps://directory.galaxy.intranet:636")
    set -l base (set -q LDAP_BASE_DN; and echo $LDAP_BASE_DN; or echo "dc=smile,dc=fr")
    set -l bind (set -q LDAP_BIND_DN; and echo $LDAP_BIND_DN; or echo "")
    set -l filter $argv[1]
    set -l attrs $argv[2..-1]

    if test -n "$bind"
        set -l pass (set -q LDAP_PASS; and echo $LDAP_PASS; or echo "")
        if test -z "$pass"
            read -s -P "LDAP password for $bind: " pass
            echo
        end
        command ldapsearch -x -H $uri -D $bind -w $pass -b $base "$filter" $attrs
        return $status
    end

    command ldapsearch -x -H $uri -b $base "$filter" $attrs
end

complete -c kcuc -a "(kubectl config get-contexts -o name 2>/dev/null)"
complete -c kctx -a "(kubectl config get-contexts -o name 2>/dev/null)"
complete -c kns -a "(kubectl get namespaces -o custom-columns=NAME:.metadata.name --no-headers 2>/dev/null)"
