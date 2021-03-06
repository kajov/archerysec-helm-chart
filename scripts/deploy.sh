#!/usr/bin/env bash
. ./data.sh
echo $HELM_RELEASE_NAME

## deployment script for Helm v2

helm install --name $HELM_RELEASE_NAME \
--namespace $KUBE_NAMESPACE $HELM_CHART_PATH \
-f $HELM_VALUES_PATH \
-f $HELM_IDENTIFIER \
-f $HELM_ISSUER \
--set identifier.appName=${APP_NAME} \
--set identifier.appId=${APP_ID} \
--set identifier.spaceId=${SPACE_ID} \
--set identifier.spaceName=${SPACE_NAME} \
--debug --no-hooks

echo $HELM_RELEASE_NAME " ready & executing"
echo "Sleeping for 2 Minutes"
sleep 2m