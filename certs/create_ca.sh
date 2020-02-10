#!/bin/bash

set -e

openssl genrsa -out docker/rootCA.key 4096
openssl req -x509 -new -nodes -key docker/rootCA.key -sha256 -days 1024 -out docker/rootCA.crt
#openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout docker.testing.com/rootCA.key -out docker.testing.com/rootCA.crt
openssl genrsa -out docker/localhost.key 2048
