#!/bin/bash

set -e

docker run --rm --entrypoint htpasswd registry:2 -Bbn testuser testpassword > auth/htpasswd