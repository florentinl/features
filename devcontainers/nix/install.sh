#!/usr/bin/sh
if command -v apt-get &> /dev/null; then
  apt-get update
  apt-get install -y curl
fi
if command -v apk &> /dev/null; then
  apk add --update curl
fi

curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install linux \
  --extra-conf "sandbox = false" \
  --init none \
  --no-confirm
