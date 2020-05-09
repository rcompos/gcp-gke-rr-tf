#!/usr/bin/env sh
#set -euo pipefail

#
# Create Google Cloud Platform Service Account and add IAM policy bindings
# Service account will be used to provision GKE clusters
#

# Must set environmental variables:
# export GCP_PROJECT_NAME=<my_project>
# export GCP_SERVICE_ACCOUNT=<my_service_acct>

PROJECT=${GCP_PROJECT_NAME}
ACCOUNT=${GCP_SERVICE_ACCOUNT}
DISPLAY=${ACCOUNT}

if [ "$PROJECT" == "" ]; then
	echo "Must set envvar GCP_PROJECT_NAME"
	exit 1
fi

if [ "$ACCOUNT" == "" ]; then
	echo "Must set envvar GCP_SERVICE_ACCOUNT"
	exit 1
fi

set -x

# Create service account
gcloud iam service-accounts create ${ACCOUNT} --display-name ${DISPLAY}

# Add IAM policy bindings
gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/compute.viewer
gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/compute.instanceAdmin
# if add_cluster_firewall_rules is true
gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/compute.securityAdmin

gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/container.clusterAdmin
gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/container.developer

gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/iam.serviceAccountAdmin
gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/iam.serviceAccountUser

gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/resourcemanager.projectIamAdmin

# optional serviceAccountCreator
#gcloud projects add-iam-policy-binding ${PROJECT} --member serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com --role roles/iam.serviceAccountCreator
