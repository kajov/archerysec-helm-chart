#!/usr/bin/env bash
. ./data.sh
echo $HELM_RELEASE_NAME

helm delete $HELM_RELEASE_NAME --purge

# Remove PVCs
kubectl delete pvc -n $KUBE_NAMESPACE storage-qcsearchguard-ssgentd8coard-data-0
kubectl delete pvc -n $KUBE_NAMESPACE storage-qcsearchguard-ssgentd8coard-data-1
kubectl delete pvc -n $KUBE_NAMESPACE storage-qcsearchguard-ssgentd8coard-master-dpl-0
kubectl delete pvc -n $KUBE_NAMESPACE storage-qcsearchguard-ssgentd8coard-master-dpl-1