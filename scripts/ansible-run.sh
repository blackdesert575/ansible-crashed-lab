#!/usr/bin/env bash
set -euxo pipefail

ansible-playbook -i inventory/inventory.yml roles/ssh/tasks/ssh.yml