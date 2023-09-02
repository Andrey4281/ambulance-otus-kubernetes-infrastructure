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

helm repo add grafana https://grafana.github.io/helm-charts

helm pull bitnami/kafka --untar --untardir=charts
helm pull prometheus-community/kube-prometheus-stack --untar --untardir=charts
helm pull grafana/loki-stack --untar --untardir=charts
helm -n monitoring install stack prometheus-community/kube-prometheus-stack -f stack-values.yaml
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm upgrade --install kube-prometheus-stack prometheus-community/kube-prometheus-stack -n mon

kubectl port-forward svc/gateway-service -n gateway 7084:7084
kubectl port-forward svc/stack-grafana -n monitoring 7000:80
kubectl port-forward svc/prometheus-operated -n monitoring 9090:9090


ambulance.otus.ru домен сделать

kubectl get servicemonitors -n monitoring

helm pull ingress-nginx/ingress-nginx --untar --untardir=charts

kubectl describe certificaterequest -n gateway
grafana.158.160.57.88.nip.io
prom-operator
kubectl get ingress --all-namespaces
prometheus.158.160.57.88.nip.io
argocd.158.160.57.88.nip.io
WxQHcVEb3oOpAfu-

https://artifacthub.io/packages/helm/grafana/loki-stack
https://dev.to/luafanti/spring-boot-logging-with-loki-promtail-and-grafana-loki-stack-aep

