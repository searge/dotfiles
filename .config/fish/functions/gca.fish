# Select a gcloud configuration for the current shell and refresh expired credentials.
function gca
    if test (count $argv) -ne 1
        echo "Usage: gca <configuration>" >&2
        gcloud config configurations list
        return 2
    end

    set -l config $argv[1]
    if not gcloud config configurations describe "$config" >/dev/null 2>&1
        echo "Unknown gcloud configuration: $config" >&2
        gcloud config configurations list
        return 1
    end

    set -gx CLOUDSDK_ACTIVE_CONFIG_NAME "$config"
    set -e GOOGLE_APPLICATION_CREDENTIALS

    set -l project (gcloud config get project 2>/dev/null)
    set -l account (gcloud config get account 2>/dev/null)

    if test -z "$account"
        echo "No account configured for $config" >&2
        return 1
    end

    if not gcloud auth print-access-token \
            --account="$account" \
            --configuration="$config" >/dev/null 2>&1
        echo "Credentials for $account need reauthentication."
        echo "Open the URL printed below, then paste the authorization code here."

        if not gcloud auth login "$account" \
                --force \
                --no-launch-browser \
                --configuration="$config"
            echo "Authentication failed for $account" >&2
            return 1
        end

        if not gcloud auth print-access-token \
                --account="$account" \
                --configuration="$config" >/dev/null 2>&1
            echo "Credential check still fails for $account" >&2
            return 1
        end
    end

    echo "Active: $account / $project"
end
