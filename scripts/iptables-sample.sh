#!/usr/bin/env bash
set -euxo pipefail

# Reset iptables
iptables -F
iptables -X

# Default policies
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

# Allow SSH
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# Save rules
iptables-save > /etc/iptables/rules.v4