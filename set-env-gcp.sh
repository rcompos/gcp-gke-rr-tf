#!/usr/bin/env sh

export GCP_PROJECT_NAME=<my_project>
export GCP_SERVICE_ACCOUNT=<my_service_acct>
export GCP_REGION=<us-west1>
export GCP_GKE_CLUSTER=<my_cluster_name>

echo $GCP_PROJECT_NAME; echo $GCP_SERVICE_ACCOUNT; echo $GCP_REGION; echo $GCP_GKE_CLUSTER
