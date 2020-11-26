#!/usr/bin/env bash
export APP_NAME="archerysec"
export APP_ID="achqua78o7r6otrac"
export SPACE_NAME="threat"
export SPACE_ID="management"
export CLUSTER_ID="minikube"

export HELM_CHART_PATH=".."
export HELM_VALUES_PATH="../values.yaml"
export HELM_IDENTIFIER="../identifier.yaml"
export HELM_ISSUER="../issuer.yaml"
export KUBE_NAMESPACE="${SPACE_NAME}-${SPACE_ID}"
export HELM_RELEASE_NAME="${APP_NAME}-${APP_ID}"
