#!/usr/bin/env sh
set -x

PROJECT=${GCP_PROJECT_NAME:-cloud-native-data}
ACCOUNT=${GCP_SERVICE_ACCOUNT:-polaris-testbed-12}

gcloud projects get-iam-policy ${PROJECT} \
--flatten="bindings[].members" \
--format='table(bindings.role)' \
--filter="bindings.members:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com"
