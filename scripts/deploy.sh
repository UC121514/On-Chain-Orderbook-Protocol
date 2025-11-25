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
# Hash 4801
# Hash 4840
# Hash 1320
# Hash 4066
# Hash 6522
# Hash 6166
# Hash 5703
# Hash 6600
# Hash 4233
# Hash 5207
# Hash 8455
# Hash 3916
# Hash 8005
# Hash 1364
# Hash 4739
# Hash 8505
# Hash 8772
# Hash 2685
# Hash 4058
# Hash 7166
# Hash 2202
# Hash 5115
# Hash 6860
# Hash 3074
# Hash 4569
# Hash 3580
# Hash 7655
# Hash 5422
# Hash 5455
# Hash 1774
# Hash 5332
# Hash 6934
# Hash 3643
# Hash 9544
# Hash 4436
# Hash 5761
# Hash 9685
# Hash 8397
# Hash 2932
# Hash 9220
# Hash 6615
# Hash 7409
# Hash 4775
# Hash 5798
# Hash 3080
# Hash 8220
# Hash 3100
# Hash 2612
# Hash 2111
# Hash 6499
# Hash 2925
# Hash 7368
# Hash 4486
# Hash 6068
# Hash 3837
# Hash 3113
# Hash 6156
# Hash 4896
# Hash 1386
# Hash 8579
# Hash 6013
# Hash 9440
# Hash 3743
# Hash 8427
# Hash 5715
# Hash 4311
# Hash 5511
# Hash 8328
# Hash 3498
# Hash 6694
# Hash 1027
# Hash 5359
# Hash 4778
# Hash 4939
# Hash 3171
# Hash 3846
# Hash 1907
# Hash 5790
# Hash 9460
# Hash 4708
# Hash 5954
# Hash 3139
# Hash 6131
# Hash 1863
# Hash 9055
# Hash 8244
# Hash 3064
# Hash 1751
# Hash 2629
# Hash 4026
# Hash 9963
# Hash 4821
# Hash 2427
# Hash 7983
# Hash 2195
# Hash 4549
# Hash 4621
# Hash 3838
# Hash 7559
# Hash 7665
# Hash 6102
# Hash 4253
# Hash 5838
# Hash 4138
# Hash 3479
# Hash 1966
# Hash 8166
# Hash 3123
# Hash 7966
# Hash 9496
# Hash 2914
# Hash 4481
# Hash 3424
# Hash 6771
# Hash 2795
# Hash 6877
# Hash 4975
# Hash 7239
# Hash 5351
# Hash 1743
# Hash 1263
# Hash 8405
# Hash 8013
# Hash 5692
# Hash 1756
# Hash 2535