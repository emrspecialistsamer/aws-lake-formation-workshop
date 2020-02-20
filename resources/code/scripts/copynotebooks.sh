#!/bin/bash
set -euo pipefail
set -x
s3bucketbasefolder=$1
destinations3bucket=$2
cd /tmp
sudo aws s3 cp s3://$s3bucketbasefolder/notebooks/LF-EMR-Zeppelin.json .
sudo aws s3 cp s3://$s3bucketbasefolder/notebooks/LF-EMR-Jupyter.ipynb .
sudo aws s3 cp LF-EMR-Zeppelin.json $2/notebooks/LF-EMR-Zeppelin.json
sudo aws s3 cp LF-EMR-Jupyter.ipynb $2/notebooks/LF-EMR-Jupyter.ipynb