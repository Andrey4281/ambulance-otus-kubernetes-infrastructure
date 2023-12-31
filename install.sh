#!/bin/bash
# sert manager
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.9.1/cert-manager.yaml
kubectl apply -f cluster-issuer/acme-issuer.yaml
#argo cd
export SOPS_AGE_KEY_FILE=$(pwd)/key.txt
export SOPS_AGE_RECIPIENTS=age1yu4wcn3ykhlxfkne5te45v9vjcjuuv67h9ywl5kd09fnygr5df8q377uqh
kubectl create namespace argocd
helm upgrade --install argocd charts/argo-cd -n argocd
kubectl -n argocd create secret generic helm-secrets-private-keys --from-file=key.txt
helm secrets -n argocd upgrade --install argocd charts/argo-cd -f values/argocd.yaml