#!/bin/bash
cd gitlab-runner
kubectl apply -f gitlab-namespace.yaml
helm secrets upgrade --install gitlab-runner charts/gitlab-runner -f gitlab-values.yaml -n gitlab

helm plugin install https://github.com/jkroepke/helm-secrets --version v3.15.0
age-keygen -o key.txt
export SOPS_AGE_KEY_FILE=$(pwd)/key.txt
export SOPS_AGE_RECIPIENTS=age1yu4wcn3ykhlxfkne5te45v9vjcjuuv67h9ywl5kd09fnygr5df8q377uqh
helm secrets enc ./gitlab-runner/gitlab-values.yaml

cd ../argo-cd
kubectl apply -f argocd-namespace.yaml
helm upgrade --install argocd charts/argo-cd -n argocd
helm -n argocd upgrade --install argocd charts/argo-cd -f argocd.yaml
kubectl -n argocd create secret generic helm-secrets-private-keys --from-file=key.txt
helm secrets enc argocd.yaml
helm secrets -n argocd upgrade --install argocd charts/argo-cd -f argocd.yaml

cd ../argo-cd
kubectl apply -f argocd-namespace.yaml
helm upgrade --install argocd charts/argo-cd -n argocd
helm -n argocd upgrade --install argocd charts/argo-cd -f argocd.yaml
kubectl -n argocd create secret generic helm-secrets-private-keys --from-file=key.txt
helm secrets enc argocd.yaml
helm secrets -n argocd upgrade --install argocd charts/argo-cd -f argocd.yaml
