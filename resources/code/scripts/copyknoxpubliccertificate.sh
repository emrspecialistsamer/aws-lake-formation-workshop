#!/bin/bash
set -euo pipefail
set -x
destinations3bucket=$1
cd /tmp

sudo keytool -export -rfc -alias gateway-identity -file /tmp/knox.cer -keystore /mnt/var/lib/knox/data/security/keystores/gateway.jks -storepass $(sudo xmllint --xpath "string(//configuration)" /etc/knox/conf/gateway-site.xml | awk '/gateway.master.secret/{getline; print}' - | tr -d "[:blank:]")


sudo aws s3 cp knox.cer s3://$destinations3bucket/metadata/knox.cer
