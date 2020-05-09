#!/usr/bin/env sh
#set -euo pipefail

#
# Create Google Cloud Platform service account and add IAM policy bindings
# Service account will be used to provision GKE clusters
#

# Must set environmental variables:
# export GCP_PROJECT=<my_project>				# GCP project
# export GCP_SERVICE_ACCOUNT=<my_service_acct>	# GCP service account name to create
# export GCP_DISPLAY=<my_display_nam>			# GCP service account display name

set -x

#PROJECT=${GCP_PROJECT_NAME:-NetApp-HCL}
#PROJECT=${GCP_PROJECT_NAME:-dev-datafabric}
PROJECT=${GCP_PROJECT_NAME:-cloud-native-data}
ACCOUNT=${GCP_SERVICE_ACCOUNT:-polaris-testbed-16}
DISPLAY=${GCP_DISPLAY_NAME:-polaris-testbed-16}

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
