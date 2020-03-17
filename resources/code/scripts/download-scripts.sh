#!/bin/bash
set -euo pipefail
set -x
s3bucket=$1
mkdir -p /tmp/scripts
cd /tmp/scripts
aws s3 sync s3://$s3bucket/scripts . --region us-east-1
chmod -R 777 /tmp/scripts
