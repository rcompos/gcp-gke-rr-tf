#!/usr/bin/env sh
#
# Get Google Cloud Platform IAM Policy
# Service account will be used to provision GKE clusters
#

# Must set environmental variables:
#   export GCP_PROJECT_NAME=<my_project>
#   export GCP_SERVICE_ACCOUNT=<my_service_acct>

PROJECT=${GCP_PROJECT_NAME}
ACCOUNT=${GCP_SERVICE_ACCOUNT}

if [ "$PROJECT" == "" ]; then
	echo "Must set envvar GCP_PROJECT_NAME"
	exit 1
fi

if [ "$ACCOUNT" == "" ]; then
	echo "Must set envvar GCP_SERVICE_ACCOUNT"
	exit 1
fi

set -x

gcloud projects get-iam-policy ${PROJECT} \
--flatten="bindings[].members" \
--format='table(bindings.role)' \
--filter="bindings.members:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com"
