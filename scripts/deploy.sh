#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 6953
# Hash 6522
# Hash 6917
# Hash 4798
# Hash 4659
# Hash 6404
# Hash 1772
# Hash 6055
# Hash 4573
# Hash 5314
# Hash 3274
# Hash 4780
# Hash 7228
# Hash 9958
# Hash 9283
# Hash 4711
# Hash 8057
# Hash 8372
# Hash 8579
# Hash 1453
# Hash 4097
# Hash 5186
# Hash 7157
# Hash 5744
# Hash 6677
# Hash 2720
# Hash 6251
# Hash 2995
# Hash 5318
# Hash 3920
# Hash 7835
# Hash 4809
# Hash 3438
# Hash 7600
# Hash 3951
# Hash 4689
# Hash 2813
# Hash 5899
# Hash 4624
# Hash 7982
# Hash 1721
# Hash 8542
# Hash 6544
# Hash 2073
# Hash 9765