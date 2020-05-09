#!/usr/bin/env sh

#
# Create Google Cloud Storage bucket
#

# Must set environmental variables:
#   export GCP_PROJECT_NAME=<my_project>
#   export GCP_SERVICE_ACCOUNT=<my_service_acct>
#   export GCP_REGION=<us-west1>
#   export GCP_GKE_CLUSTER=<gke_cluster_name>

PROJECT=${GCP_PROJECT_NAME}
ACCOUNT=${GCP_SERVICE_ACCOUNT}
REGION=${GCP_REGION}
BUCKET=${GCP_GKE_CLUSTER}

if [ "$PROJECT" == "" ]; then
	echo "Must set envvar GCP_PROJECT_NAME"
	exit 1
fi

if [ "$ACCOUNT" == "" ]; then
	echo "Must set envvar GCP_SERVICE_ACCOUNT"
	exit 1
fi

if [ "$REGION" == "" ]; then
	echo "Must set envvar GCP_REGION"
	exit 1
fi

if [ "$BUCKET" == "" ]; then
	echo "Must set envvar GCP_GKE_CLUSTER"
	exit 1
fi

BUCKET="gs://${BUCKET}/"

set -x

gsutil mb -p ${PROJECT} -c regional -l ${REGION} ${BUCKET}
gsutil versioning set on ${BUCKET}
gsutil iam ch serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com:legacyBucketWriter ${BUCKET}
