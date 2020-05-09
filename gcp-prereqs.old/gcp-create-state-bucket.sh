#!/usr/bin/env sh
set -euo pipefail

PROJECT=${GCP_PROJECT_NAME:-cloud-native-data}
ACCOUNT=${GCP_SERVICE_ACCOUNT:-polaris-testbed}

REGION=us-west1
BUCKET_BASE=${ACCOUNT}
BUCKET="gs://${BUCKET_BASE}-${PROJECT}/"

set -x

gsutil mb -p ${PROJECT} -c regional -l ${REGION} ${BUCKET}
gsutil versioning set on ${BUCKET}
gsutil iam ch serviceAccount:${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com:legacyBucketWriter ${BUCKET}
