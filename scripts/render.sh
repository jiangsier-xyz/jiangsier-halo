#!/usr/bin/env bash

source $(dirname ${BASH_SOURCE[0]})/setenv.sh

check_helm

# helm repo add halo https://halo-sigs.github.io/charts
# helm repo update
helm template --kubeconfig ${KUBE_CONFIG} --namespace ${NAMESPACE} --create-namespace -f ${values_yaml} \
  ${ARGS[*]} \
  ${PROJECT_NAME} \
  halo/halo \
  --version ${HELM_version}
