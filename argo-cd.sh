#!/bin/bash
cd namespaces
kubectl apply -f argocd-namespace.yaml
helm upgrade --install argocd charts/argo-cd -n argocd
cd ../
kubectl -n argocd create secret generic helm-secrets-private-keys --from-file=key.txt
helm secrets -n argocd upgrade --install argocd charts/argo-cd -f values/argocd.yaml