#!/usr/bin/env bash
set -euxo pipefail

docker build -t ansible-ee:test -f Dockerfile.Control-node .