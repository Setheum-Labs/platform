#!/bin/bash
set -xe

NODE_COUNT=${1:-2}

cd ./modules/k8s
terraform init \
          -backend-config="access_key=$SPACES_ACCESS_TOKEN" \
          -backend-config="secret_key=$SPACES_SECRET_KEY" \
          -backend-config="bucket=$SPACES_BUCKET_NAME" \
          -backend-config="endpoint=$SPACES_ENDPOINT"

terraform apply -auto-approve -var node_count=${NODE_COUNT}
