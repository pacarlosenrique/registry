#!/bin/bash 

set -e

openssl genrsa -out docker/cert.key 2048
openssl req -config ./ssl.conf -new -key docker/cert.key -out docker/cert.csr
openssl x509 -req -in docker/cert.csr -CA docker/rootCA.crt -CAkey docker/rootCA.key -CAcreateserial -out docker/cert.crt -days 500 -sha256 -extensions v3_req -extfile ssl.conf
