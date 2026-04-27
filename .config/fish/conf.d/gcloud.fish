# gcloud configs:
#   admin-drive  admin.drive@smile.fr                drive-management-238509     europe-west9
#   sqor-max     max@sqor.ai                         sqor-dev-463118             us-central1
#   smile-ua     serhii.boremchuk@smile-ukraine.com  gen-lang-client-0812851737  europe-central2

complete -c gca -f -a "(gcloud config configurations list --format='value(name)')"
