#!/bin/sh
# The Flask signup form offers the account tiers (gold is the privileged one).
set -e
curl -fsS http://under-construction:1337/signup | grep -q "gold"
