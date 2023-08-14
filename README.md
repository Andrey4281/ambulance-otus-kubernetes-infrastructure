1) Поднятие класстера terraform и тд?
2) Установка gitlab-runner:
export HELM_EXPERIMENTAL_OCI=1 && \
helm pull oci://cr.yandex/yc-marketplace/yandex-cloud/gitlab-org/gitlab-runner/chart/gitlab-runner \
  --version 0.49.1-8 \
  --untar \
  --untardir=charts
3) helm plugin install https://github.com/jkroepke/helm-secrets --version v3.15.0
age-keygen -o key.txt
export SOPS_AGE_KEY_FILE=$(pwd)/key.txt
export SOPS_AGE_RECIPIENTS=age1yu4wcn3ykhlxfkne5te45v9vjcjuuv67h9ywl5kd09fnygr5df8q377uqh
helm secrets enc ./gitlab-runner/gitlab-values.yaml
