#!/usr/bin/env bash
. ./data.sh
echo $HELM_RELEASE_NAME

helm upgrade $HELM_RELEASE_NAME \
--namespace $KUBE_NAMESPACE $HELM_CHART_PATH \
-f $HELM_VALUES_PATH \
-f $HELM_IDENTIFIER \
-f $HELM_ISSUER \
--set identifier.appName=${APP_NAME} \
--set identifier.appId=${APP_ID} \
--set identifier.spaceId=${SPACE_ID} \
--set identifier.spaceName=${SPACE_NAME} \
--debug --wait --no-hooks
