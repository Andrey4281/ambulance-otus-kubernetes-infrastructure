#!/bin/bash
cd gitlab-runner
kubectl apply -f gitlab-namespace.yaml
helm secrets upgrade --install gitlab-runner charts/gitlab-runner -f gitlab-values.yaml -n gitlab