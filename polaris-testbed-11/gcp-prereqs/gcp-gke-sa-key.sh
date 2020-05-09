#!/usr/bin/env sh
set -euo pipefail

PROJECT=${GCP_PROJECT_NAME:-cloud-native-data}
ACCOUNT=${GCP_SERVICE_ACCOUNT:-polaris-testbed-11}

set -x

gcloud iam service-accounts keys create ${ACCOUNT}-keyfile.json --iam-account=${ACCOUNT}@${PROJECT}.iam.gserviceaccount.com
