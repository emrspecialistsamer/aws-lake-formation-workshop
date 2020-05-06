#!/bin/bash
set -euo pipefail
set -x
s3bucketbasefolder=$1
cd /tmp
sudo aws s3 cp s3://$s3bucketbasefolder/notebooks/LF-EMR-Zeppelin.json .
sudo mkdir /var/lib/zeppelin/notebook/2F599NGVP
sudo cp LF-EMR-Zeppelin.json /var/lib/zeppelin/notebook/2F599NGVP/note.json
sudo chown -R zeppelin:zeppelin /var/lib/zeppelin/notebook/2F599NGVP
sudo chmod +x /var/lib/zeppelin/notebook/2F599NGVP/note.json
sudo stop zeppelin
sudo start zeppelin
