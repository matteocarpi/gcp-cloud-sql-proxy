#!/usr/bin/env sh

wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy
chmod +x cloud_sql_proxy
echo $SERVICE_ACCOUNT > /tmp/$CI_PIPELINE_ID.json
./cloud_sql_proxy -instances=$INSTANCE_CONNECTION_NAME=tcp:0.0.0.0:5434 -credential_file=/tmp/$CI_PIPELINE_ID.json

exec "$@"