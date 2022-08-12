#!/bin/sh
set -x

export _ARTIFACT_REGISTRY="us-east4-docker.pkg.dev"
export _ARTIFACT_REGISTRY_REPO="quickstart-docker-repo"
export _BUCKET_NAME="lcef-ui-code/testlogs"
export _VERSION="1"

gcloud builds submit --config ./cloudbuild.yaml \
        --substitutions _VERSION=${_VERSION},_ARTIFACT_REGISTRY=${_ARTIFACT_REGISTRY},_ARTIFACT_REGISTRY_REPO=${_ARTIFACT_REGISTRY_REPO},_BUCKET_NAME=${_BUCKET_NAME}

