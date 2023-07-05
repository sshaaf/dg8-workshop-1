#!/bin/bash

docker run -it --rm -p 4000:8080 -v $(pwd):/app-data  \
  -e MASTER_URL=https://api.cluster-jsm72.jsm72.sandbox1411.opentlc.com:6443 \
  -e CONSOLE_URL=https://console-openshift-console.apps.cluster-jsm72.jsm72.sandbox1411.opentlc.com \
  -e CHE_URL=https://codeready-codeready.apps.cluster-jsm72.jsm72.sandbox1411.opentlc.com -e RHAMT_URL=http://foo -e CHE_USER_PASSWORD='r3dh4t1!' \
  -e KEYCLOAK_URL=http://keycloak.url.com:4444 \
  -e ROUTE_SUBDOMAIN=apps.cluster-jsm72.jsm72.sandbox1411.opentlc.com \
  -e CONTENT_URL_PREFIX="file:///app-data/" \
  -e WORKSHOPS_URLS="file:///app-data/_dg8-workshop-guides.yml" \
  -e USER_NAME=userNN \
  -e USER_PASSWORD=passNN \
  -e LOG_TO_STDOUT=true \
    quay.io/jamesfalkner/workshopper:latest
