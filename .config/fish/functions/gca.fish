# Switch gcloud configuration + sync ADC per config
# Suppresses: ADC quota mismatch warning, [environment: untagged] prompt
# Stores per-config ADC in ~/.config/gcloud/adc/<config>.json
# Patches kubeconfig GKE entries to use --use_application_default_credentials
function gca
    gcloud config configurations activate $argv[1] 2>/dev/null
    set -l project (gcloud config get project 2>/dev/null)
    set -l account (gcloud config get account 2>/dev/null)
    set -l adc_file "$HOME/.config/gcloud/adc/$argv[1].json"

    if test -n "$project"
        gcloud auth application-default set-quota-project $project --quiet 2>/dev/null
    end

    if not test -f $adc_file
        echo "No ADC for $argv[1], logging in..."
        mkdir -p "$HOME/.config/gcloud/adc"
        set -l impersonate (gcloud config get auth/impersonate_service_account 2>/dev/null)
        if test -n "$impersonate"
            gcloud auth application-default login \
                --impersonate-service-account=$impersonate --no-launch-browser
        else
            gcloud auth application-default login --no-launch-browser
        end
        command cp "$HOME/.config/gcloud/application_default_credentials.json" $adc_file
    end

    set -gx GOOGLE_APPLICATION_CREDENTIALS $adc_file
    command cp $adc_file "$HOME/.config/gcloud/application_default_credentials.json"
    rm -rf "$HOME/.kube/cache/credential-plugins/" 2>/dev/null

    # Ensure GKE kubeconfig entries use ADC (GOOGLE_APPLICATION_CREDENTIALS)
    python3 -c "
import yaml, os
p = os.path.expanduser('~/.kube/config')
try:
    config = yaml.safe_load(open(p))
    changed = False
    for user in config.get('users', []):
        ex = user.get('user', {}).get('exec', {})
        if ex.get('command') == 'gke-gcloud-auth-plugin':
            args = ex.get('args') or []
            if '--use_application_default_credentials' not in args:
                ex['args'] = args + ['--use_application_default_credentials']
                user['user']['exec'] = ex
                changed = True
    if changed:
        yaml.dump(config, open(p, 'w'), default_flow_style=False, allow_unicode=True)
except Exception:
    pass
" 2>/dev/null

    echo "Active: $account / $project"
end
