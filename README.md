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
4) Установка argo-cd:
export HELM_EXPERIMENTAL_OCI=1 && \
helm pull oci://cr.yandex/yc-marketplace/yandex-cloud/argo/chart/argo-cd \
--version=4.5.3-1 \
--untar \
--untardir=charts
5) Проброс портов
kubectl port-forward svc/argocd-server -n argocd 8080:443
admin
0Q9iG87f77saKM-S

cr.yandex/crp6r4552fomhn1v2lgu/andrey4281/${project.artifactId}:${project.version}
docker build -t cr.yandex/crp6r4552fomhn1v2lgu/andrey4281/appeal-service:0.0.6 .
docker build -t cr.yandex/crp6r4552fomhn1v2lgu/andrey4281/doctor-service:0.0.6 .
docker build -t cr.yandex/crp6r4552fomhn1v2lgu/andrey4281/nurse-service:0.0.6 .

