#!/usr/bin/env bash
set -euxo pipefail

poetry init
pyenv local 3.10.14
poetry env use 3.10.14

# poetry shell